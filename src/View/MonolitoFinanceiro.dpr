program MonolitoFinanceiro;

uses
  Vcl.Forms,
  MonolitoFinaceiro in 'MonolitoFinaceiro.pas' {frmPrincipal},
  CadastroPadrao in 'CadastroPadrao.pas' {frmCadastroPadrao},
  MonolitoFinaceiro.splash in 'MonolitoFinaceiro.splash.pas' {frmSplash},
  MonolitoFinanceiro.Model.Conexao in 'model\MonolitoFinanceiro.Model.Conexao.pas' {dmConexao: TDataModule},
  Usuarios in 'Usuarios.pas' {frmUsuarios},
  MonolitoFinanceiro.Model.Usuarios in 'model\MonolitoFinanceiro.Model.Usuarios.pas' {dmUsuarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TdmUsuarios, dmUsuarios);
  Application.Run;
end.
