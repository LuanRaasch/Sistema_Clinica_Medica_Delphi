object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 320
  Width = 497
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    BeforePost = tbPacienteBeforePost
    AfterPost = tbPacienteAfterPost
    AfterDelete = tbPacienteAfterDelete
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.paciente'
    Left = 120
    Top = 48
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    AfterPost = tbAgendamentoAfterPost
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.agendamento'
    Left = 200
    Top = 48
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentoid_especialidade: TIntegerField
      FieldName = 'id_especialidade'
      Origin = 'id_especialidade'
      Required = True
    end
    object tbAgendamentodata: TStringField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object tbAgendamentohora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '!90:00;1;_'
      Size = 8
    end
    object tbAgendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
    object tbAgendamentonomePaciente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomePaciente'
      LookupDataSet = tbPaciente
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_paciente'
      Size = 80
      Lookup = True
    end
    object tbAgendamentonomeEspecialidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeEspecialidade'
      LookupDataSet = tbEspecialidade
      LookupKeyFields = 'id'
      LookupResultField = 'nome_especialidade'
      KeyFields = 'id_especialidade'
      Size = 40
      Lookup = True
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 120
    Top = 112
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 200
    Top = 112
  end
  object tbEspecialidade: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.especialidades'
    Left = 288
    Top = 48
    object tbEspecialidadeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbEspecialidadenome_especialidade: TStringField
      FieldName = 'nome_especialidade'
      Origin = 'nome_especialidade'
      Required = True
      Size = 40
    end
  end
  object dsEspecialidade: TDataSource
    DataSet = tbEspecialidade
    Left = 288
    Top = 112
  end
  object qtdPacientes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT COUNT(*) FROM paciente')
    Left = 120
    Top = 176
  end
  object consultaCpf: TFDQuery
    Connection = Conexao
    Left = 120
    Top = 232
    ParamData = <
      item
        Name = 'pCpf'
      end
      item
        Name = 'pId'
      end>
  end
  object sqlAgenData: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM `agendamento` WHERE data = '#39':pData'#39' ')
    Left = 200
    Top = 176
  end
  object dsAgenData: TDataSource
    DataSet = sqlAgenData
    Left = 200
    Top = 232
  end
end
