unit
        MonolitoFinaceiro.splash;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSplash = class(TForm)
    pnlPrincipal: TPanel;
    ImgLogo: TImage;
    lblStatus: TLabel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    imgLoading: TImage;
    imgBancoDeDados: TImage;
    imgConfig: TImage;
    imgStart: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarStatus(Mensagem : String; Imagem : TImage);


  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.AtualizarStatus(Mensagem : String; Imagem : TImage);
begin
     lblStatus.Caption := Mensagem;
     Imagem.Visible := True;

end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
 if ProgressBar1.Position <= 100 then
      begin
      ProgressBar1.StepIt;
      case progressBar1.Position of

       10: AtualizarStatus('Carregando...', imgLoading);
       25: AtualizarStatus('Conectando ao Banco de Dados',imgBancoDeDados);
       45: AtualizarStatus('Carregando as Configurações',imgConfig);
       75: AtualizarStatus('Iniciando o Sistema',imgStart);

      end;
      end;

      if ProgressBar1.Position = 100 then
      close;
      end;

end.
