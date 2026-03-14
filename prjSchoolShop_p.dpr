program prjSchoolShop_p;

uses
  Vcl.Forms,
  frmSchoolShop_u in 'frmSchoolShop_u.pas' {Form4},
  dmSchoolShop_u in 'dmSchoolShop_u.pas' {DataModule5: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, frmSchoolShop);
  Application.CreateForm(TDataModule5, dmSchoolShop);
  Application.Run;
end.
