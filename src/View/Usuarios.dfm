inherited frmUsuarios: TfrmUsuarios
  Caption = 'Cadastro de Usuarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlPrincipal: TCardPanel
    inherited cardPesquisa: TCard
      inherited pnlGrid: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = DataSource1
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'login'
              Title.Caption = 'LOGIN'
              Width = 185
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'STATUS'
              Width = 157
              Visible = True
            end>
        end
      end
      inherited pnlPesquisa: TPanel
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmUsuarios.cdsUsuarios
  end
end
