unit MonolitoFinaceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, MonolitoFinaceiro.splash;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuUsuarios: TMenuItem;
    sdfasdf1: TMenuItem;
    procedure mnuUsuariosClick(Sender: TObject);
    procedure sdfasdf1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Usuarios;
  //MonolitoFinaceiro.splash;


{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
          frmSplash:= TfrmSplash.Create(nil);
 try
   frmSplash.ShowModal;
 finally
   FreeAndNil(frmSplash);
 end;
end;

procedure TfrmPrincipal.mnuUsuariosClick(Sender: TObject);
var
 frmtmp: TfrmUsuarios;
begin
 //Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
// frmtmp := TfrmCadastroPadrao.Create(self);
 frmUsuarios.Show;


 // frmtmp.Show();
end;

procedure TfrmPrincipal.sdfasdf1Click(Sender: TObject);
var
 frmtmp: TfrmUsuarios;
begin
 //Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
 //frmtmp := TfrmCadastroPadrao.Create(self);
 //frmCadastroPadrao.Show;
 //frmtmp.Show();
  frmUsuarios.Show;
end;

end.
