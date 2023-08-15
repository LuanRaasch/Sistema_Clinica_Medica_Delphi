object PasswordDlg: TPasswordDlg
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Password Dialog'
  ClientHeight = 182
  ClientWidth = 340
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 81
    Height = 13
    Caption = 'Enter Username:'
  end
  object Label2: TLabel
    Left = 8
    Top = 65
    Width = 79
    Height = 13
    Caption = 'Enter password:'
  end
  object userNameEdit: TEdit
    Left = 8
    Top = 28
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 150
    Top = 149
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 246
    Top = 149
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object PasswordEdit: TEdit
    Left = 8
    Top = 92
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
end
