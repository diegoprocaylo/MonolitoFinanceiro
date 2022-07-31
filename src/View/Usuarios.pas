unit Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, MonolitoFinanceiro.Model.Usuarios;

type
  TfrmUsuarios = class(TfrmCadastroPadrao)
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  dmUsuarios.cdsUsuarios.Close;
  dmUsuarios.cdsUsuarios.CommandText := 'select * from Usuarios';
  dmUsuarios.cdsUsuarios.Open;
  //dmConexao.FDQuery1.SQL.Clear;
  //dmConexao.FDQuery1.SQL.Add('select * from Usuarios');
  //dmConexao.FDQuery1.Open();
end;

end.
