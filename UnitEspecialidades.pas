unit UnitEspecialidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.AppAnalytics, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TunitCadEspecialidades = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    tbMD: TFDTable;
    dsTBMD: TDataSource;
    tbMDdata: TStringField;
    tbMDhora: TStringField;
    tbMDmedico: TStringField;
    tbMDnomePaciente: TStringField;
    tbMDid_especialidade: TIntegerField;
    tbMDid: TFDAutoIncField;
    tbMDid_paciente: TIntegerField;
    Label5: TLabel;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unitCadEspecialidades: TunitCadEspecialidades;

implementation

{$R *.dfm}

uses unitDM;

procedure TunitCadEspecialidades.Edit1Change(Sender: TObject);
begin
 DataModule1.tbEspecialidade.Locate('nome_especialidade', Edit1.Text,[loPartialKey]);
end;

end.
