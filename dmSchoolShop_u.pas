unit dmSchoolShop_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule5 = class(TDataModule)
    conn: TADOConnection;
    qryDatabase: TADOQuery;
    dscQuery: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSchoolShop: TDataModule5;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
