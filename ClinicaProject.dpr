program ClinicaProject;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPrincipal},
  UnitCadPacientes in 'UnitCadPacientes.pas' {formCadPacientes},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {formCadAgendamentos},
  unitDM in 'unitDM.pas' {DataModule1: TDataModule},
  UnitEspecialidades in 'UnitEspecialidades.pas' {unitCadEspecialidades},
  PassWord in 'PassWord.pas' {PasswordDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TunitCadEspecialidades, unitCadEspecialidades);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.Run;
end.
