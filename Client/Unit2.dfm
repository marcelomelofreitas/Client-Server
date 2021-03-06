object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 267
  Top = 203
  Height = 362
  Width = 989
  object DCOMConnection: TDCOMConnection
    Connected = True
    ServerGUID = '{5F6EF2FB-E384-4D8D-85ED-0DC833C96EAF}'
    ServerName = 'Project1.rdmw'
    ComputerName = '127.001'
    Left = 32
    Top = 24
  end
  object ClientDataSetInform: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'id_pers'
    MasterFields = 'id_pers'
    MasterSource = DataSourcePers
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetInform'
    RemoteServer = DCOMConnection
    Left = 136
    Top = 32
  end
  object ClientDataSetPers: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_pers'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'dep'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'fam'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'nam'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'par'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'year_b'
        DataType = ftInteger
      end
      item
        Name = 'pol'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'charact'
        DataType = ftMemo
      end
      item
        Name = 'photo'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ADOInform'
        DataType = ftDataSet
      end
      item
        Name = 'ADOTelephon'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'depinfo'
        Fields = 'dep'
      end>
    IndexName = 'depinfo'
    Params = <>
    ProviderName = 'DataSetPers'
    RemoteServer = DCOMConnection
    StoreDefs = True
    Left = 136
    Top = 88
    object ClientDataSetPersid_pers: TAutoIncField
      FieldName = 'id_pers'
      ReadOnly = True
    end
    object ClientDataSetPersdep: TWideStringField
      FieldName = 'dep'
      Size = 50
    end
    object ClientDataSetPersfam: TWideStringField
      FieldName = 'fam'
      Size = 50
    end
    object ClientDataSetPersnam: TWideStringField
      FieldName = 'nam'
      Size = 50
    end
    object ClientDataSetPerspar: TWideStringField
      FieldName = 'par'
      Size = 50
    end
    object ClientDataSetPersyear_b: TIntegerField
      FieldName = 'year_b'
    end
    object ClientDataSetPerspol: TWideStringField
      FieldName = 'pol'
      Size = 255
    end
    object ClientDataSetPerscharact: TMemoField
      FieldName = 'charact'
      BlobType = ftMemo
    end
    object ClientDataSetPersphoto: TWideStringField
      FieldName = 'photo'
      Size = 255
    end
    object ClientDataSetPersADOInform: TDataSetField
      FieldName = 'ADOInform'
    end
    object ClientDataSetPersADOTelephon: TDataSetField
      FieldName = 'ADOTelephon'
    end
  end
  object ClientDataSetTelephon: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'id_pers'
    MasterFields = 'id_pers'
    MasterSource = DataSourcePers
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetTelephon'
    RemoteServer = DCOMConnection
    Left = 136
    Top = 140
  end
  object DataSourceInform: TDataSource
    DataSet = ClientDataSetInform
    Left = 248
    Top = 32
  end
  object DataSourcePers: TDataSource
    DataSet = ClientDataSetPers
    Left = 248
    Top = 88
  end
  object DataSourceTelephon: TDataSource
    DataSet = ClientDataSetTelephon
    Left = 256
    Top = 144
  end
end
