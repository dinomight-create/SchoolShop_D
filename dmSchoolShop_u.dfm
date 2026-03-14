object DataModule5: TDataModule5
  Height = 480
  Width = 640
  object conn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\2024\Grade 12 IT' +
      '\Queries\SchoolShop.mdb;Persist Security Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 192
  end
  object qryDatabase: TADOQuery
    Active = True
    Connection = conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [NewItems]')
    Left = 320
    Top = 32
  end
  object dscQuery: TDataSource
    DataSet = qryDatabase
    Left = 304
    Top = 224
  end
end
