unit PASSWORD;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    userNameEdit: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    PasswordEdit: TEdit;
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
 if (userNameEdit.Text = 'Luan') AND (PasswordEdit.Text = '12345') then
  begin

  end;

end;

end.
 
