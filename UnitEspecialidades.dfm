object unitCadEspecialidades: TunitCadEspecialidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Especialidades'
  ClientHeight = 485
  ClientWidth = 927
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 13
    Height = 13
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 104
    Width = 76
    Height = 13
    Caption = 'Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 587
    Top = 104
    Width = 117
    Height = 13
    Caption = 'Buscar Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 187
    Height = 13
    Caption = 'Agendamentos por Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 81
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 807
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Especialidades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 414
      Top = 18
      Width = 354
      Height = 45
      DataSource = DataModule1.dsEspecialidade
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 123
    Width = 257
    Height = 21
    DataField = 'nome_especialidade'
    DataSource = DataModule1.dsEspecialidade
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 123
    Width = 33
    Height = 21
    DataField = 'id'
    DataSource = DataModule1.dsEspecialidade
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 587
    Top = 123
    Width = 320
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 587
    Top = 150
    Width = 320
    Height = 315
    DataSource = DataModule1.dsEspecialidade
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 286
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 216
    Width = 529
    Height = 249
    DataSource = dsTBMD
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_especialidade'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Title.Caption = 'M'#201'DICO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomePaciente'
        Title.Caption = 'PACIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_paciente'
        Visible = False
      end>
  end
  object tbMD: TFDTable
    Active = True
    IndexFieldNames = 'id_especialidade'
    MasterSource = DataModule1.dsEspecialidade
    MasterFields = 'id'
    DetailFields = 'id_especialidade'
    Connection = DataModule1.Conexao
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    TableName = 'clinica.agendamento'
    Left = 480
    Top = 160
    object tbMDid_especialidade: TIntegerField
      DisplayWidth = 6
      FieldName = 'id_especialidade'
      Origin = 'id_especialidade'
      Required = True
    end
    object tbMDid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMDdata: TStringField
      DisplayWidth = 10
      FieldName = 'data'
      Origin = 'data'
      Required = True
      Size = 10
    end
    object tbMDhora: TStringField
      DisplayWidth = 8
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      Size = 8
    end
    object tbMDmedico: TStringField
      DisplayWidth = 30
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
    object tbMDnomePaciente: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'nomePaciente'
      LookupDataSet = DataModule1.tbPaciente
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_paciente'
      Size = 80
      Lookup = True
    end
    object tbMDid_paciente: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
  end
  object dsTBMD: TDataSource
    DataSet = tbMD
    Left = 416
    Top = 160
  end
end
