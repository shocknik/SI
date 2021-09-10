object Form7: TForm7
  Left = 423
  Top = 112
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1077' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 343
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 16
    Top = 16
    Width = 400
    Height = 257
    Caption = #1047#1072#1103#1074#1082#1072
    TabOrder = 0
    object lbl2: TLabel
      Left = 16
      Top = 24
      Width = 69
      Height = 13
      Caption = #1058#1077#1082#1089#1090' '#1079#1072#1103#1074#1082#1080
    end
    object lbl3: TLabel
      Left = 16
      Top = 192
      Width = 53
      Height = 13
      Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100
    end
    object dbmmoZAYAVKA: TDBMemo
      Left = 16
      Top = 48
      Width = 369
      Height = 137
      DataField = 'ZAYAVKA'
      DataSource = DM.DSourse_COMMENT
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object cbbZAYAVKA: TDBComboBoxEh
      Left = 16
      Top = 216
      Width = 369
      Height = 21
      DataField = 'PRIORITY'
      DataSource = DM.DSourse_COMMENT
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        #1042#1099#1089#1086#1082#1072#1103
        #1053#1080#1079#1082#1072#1103
        #1057#1088#1077#1076#1085#1103#1103)
      TabOrder = 1
      Visible = True
    end
  end
  object grp2: TGroupBox
    Left = 432
    Top = 16
    Width = 400
    Height = 257
    Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
    TabOrder = 1
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 58
      Height = 13
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
    end
    object lbl4: TLabel
      Left = 16
      Top = 192
      Width = 73
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1103#1074#1082#1080
    end
    object dbmmoMESSAGE: TDBMemo
      Left = 16
      Top = 48
      Width = 369
      Height = 137
      DataField = 'MESSAGE'
      DataSource = DM.DSourse_COMMENT
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object cbbSTATUS: TDBComboBoxEh
      Left = 16
      Top = 216
      Width = 369
      Height = 21
      DataField = 'STATUS'
      DataSource = DM.DSourse_COMMENT
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        #1042#1099#1089#1090#1072#1074#1083#1077#1085#1072
        #1053#1077' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1072
        #1042' '#1088#1072#1073#1086#1090#1077
        #1053#1072' '#1076#1086#1088#1072#1073#1086#1090#1082#1077
        #1054#1090#1082#1083#1086#1085#1077#1085#1072
        #1042#1099#1087#1086#1083#1085#1077#1085#1072)
      TabOrder = 1
      Visible = True
    end
  end
  object btn1: TBitBtn
    Left = 16
    Top = 288
    Width = 400
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1086#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 432
    Top = 288
    Width = 400
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = btn2Click
  end
end
