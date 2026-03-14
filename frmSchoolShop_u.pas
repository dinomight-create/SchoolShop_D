unit frmSchoolShop_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dmSchoolShop_u, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    btnRun: TButton;
    btnMid: TButton;
    btnLeft: TButton;
    btnRight: TButton;
    btnDescriptionsStartingWithS: TButton;
    btnDescriptionsEndingWithS: TButton;
    edtSearch: TLabeledEdit;
    procedure btnRunClick(Sender: TObject);
    procedure btnMidClick(Sender: TObject);
    procedure btnDescriptionsStartingWithSClick(Sender: TObject);
    procedure btnDescriptionsEndingWithSClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSchoolShop: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btnDescriptionsEndingWithSClick(Sender: TObject);
begin
  with dmSchoolShop do
  begin
    qryDatabase.SQL.Clear;
    qryDatabase.SQL.Add('SELECT *');
    qryDatabase.SQL.Add('FROM [NewItems]');
    qryDatabase.SQL.Add('WHERE [Description] LIKE "%s"');
    qryDatabase.Open;
    DBGrid1.DataSource := dscQuery;
  end;
end;

procedure TForm4.btnDescriptionsStartingWithSClick(Sender: TObject);
begin
  with dmSchoolShop do
  begin
    qryDatabase.SQL.Clear;
    qryDatabase.SQL.Add('SELECT *');
    qryDatabase.SQL.Add('FROM [NewItems]');
    qryDatabase.SQL.Add('WHERE [Description] LIKE "S%"');
    qryDatabase.Open;
    DBGrid1.DataSource := dscQuery;
  end;
end;

procedure TForm4.btnMidClick(Sender: TObject);
begin
  with dmSchoolShop do
  begin
    qryDatabase.SQL.Clear;
    qryDatabase.SQL.Add('SELECT MID([ItemId],2,2), [ItemId]');
    qryDatabase.SQL.Add('FROM [NewItems]');
    qryDatabase.Open;
    DBGrid1.DataSource := dscQuery;
  end;
end;

procedure TForm4.btnRunClick(Sender: TObject);
begin
  with dmSchoolShop do
  begin
    qryDatabase.SQL.Clear;
    qryDatabase.SQL.Add('SELECT [Description]&" "&[ItemId],[InStock]');
    qryDatabase.SQL.Add('FROM [NewItems]');
    qryDatabase.SQL.Add('ORDER BY [InStock]');
    qryDatabase.Open;
    DBGrid1.DataSource := dscQuery;
  end;
end;

procedure TForm4.edtSearchChange(Sender: TObject);
var
  sSearch: string;
begin

  sSearch := edtSearch.Text;
  with dmSchoolShop do
  begin
    qryDatabase.SQL.Clear;
    qryDatabase.SQL.Add('SELECT *');
    qryDatabase.SQL.Add('FROM [NewItems]');
    qryDatabase.SQL.Add('WHERE [Description] LIKE"' + sSearch + '%"');
    qryDatabase.Open;
    DBGrid1.DataSource := dscQuery;
  end;
end;

end.
