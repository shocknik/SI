object Form13: TForm13
  Left = 384
  Top = 120
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1050#1072#1088#1090#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
  ClientHeight = 586
  ClientWidth = 755
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 514
    Align = alClient
    TabOrder = 0
    object grp3: TGroupBox
      Left = 1
      Top = 449
      Width = 753
      Height = 64
      Align = alClient
      Caption = #1056#1077#1082#1074#1077#1079#1080#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object edtINN: TDBEditEh
        Left = 56
        Top = 24
        Width = 315
        Height = 24
        ControlLabel.Width = 24
        ControlLabel.Height = 16
        ControlLabel.Caption = #1048#1053#1053
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -40
        DataField = 'INN'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object edtKPP: TDBEditEh
        Left = 442
        Top = 24
        Width = 289
        Height = 24
        ControlLabel.Width = 23
        ControlLabel.Height = 16
        ControlLabel.Caption = #1050#1055#1055
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -39
        DataField = 'KPP'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
    end
    object grp1: TGroupBox
      Left = 1
      Top = 1
      Width = 753
      Height = 224
      Align = alTop
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object edtDATE1: TDBDateTimeEditEh
        Left = 224
        Top = 24
        Width = 102
        Height = 24
        ControlLabel.Width = 150
        ControlLabel.Height = 16
        ControlLabel.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1079#1072#1087#1080#1089#1080
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -200
        DataField = 'DATE1'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButton.Width = 22
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkDateEh
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object edtNUM_ATTESTAT3: TDBEditEh
        Left = 224
        Top = 64
        Width = 505
        Height = 24
        ControlLabel.Width = 184
        ControlLabel.Height = 16
        ControlLabel.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -200
        DataField = 'SNAME'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
      object edtNUM_ATTESTAT4: TDBEditEh
        Left = 224
        Top = 104
        Width = 505
        Height = 24
        ControlLabel.Width = 180
        ControlLabel.Height = 16
        ControlLabel.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -200
        DataField = 'NAME'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = True
      end
      object edtNUM_ATTESTAT5: TDBEditEh
        Left = 224
        Top = 144
        Width = 505
        Height = 24
        ControlLabel.Width = 39
        ControlLabel.Height = 16
        ControlLabel.Caption = #1056#1077#1075#1090#1086#1085
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -200
        DataField = 'NAME_REG'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = True
      end
      object edtADR_JURID: TDBEditEh
        Left = 224
        Top = 184
        Width = 505
        Height = 24
        ControlLabel.Width = 117
        ControlLabel.Height = 16
        ControlLabel.Caption = #1040#1076#1088#1077#1089' '#1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -200
        DataField = 'ADR_JURID'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = True
      end
      object chkSI_IO: TDBCheckBoxEh
        Left = 350
        Top = 27
        Width = 97
        Height = 17
        Caption = #1055#1088#1080#1079#1085#1072#1082' '#1062#1057#1052
        DataField = 'SI_IO'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        TabOrder = 5
      end
    end
    object grp2: TGroupBox
      Left = 1
      Top = 225
      Width = 753
      Height = 224
      Align = alTop
      Caption = #1050#1086#1085#1090#1072#1082#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object edtADR_MAIL: TDBEditEh
        Left = 200
        Top = 24
        Width = 529
        Height = 24
        ControlLabel.Width = 96
        ControlLabel.Height = 16
        ControlLabel.Caption = #1040#1076#1088#1077#1089' '#1087#1086#1095#1090#1086#1074#1099#1081
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -176
        DataField = 'ADR_MAIL'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object edtKONT_FAICE: TDBEditEh
        Left = 200
        Top = 104
        Width = 529
        Height = 24
        ControlLabel.Width = 99
        ControlLabel.Height = 16
        ControlLabel.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -176
        DataField = 'KONT_FAICE'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
      object edtTEL_KONT: TDBEditEh
        Left = 200
        Top = 144
        Width = 179
        Height = 24
        ControlLabel.Width = 160
        ControlLabel.Height = 16
        ControlLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1082#1086#1085#1090#1072#1082#1090#1085#1086#1075#1086' '#1083#1080#1094#1072
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -176
        DataField = 'TEL_KONT'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = True
      end
      object edtFAX: TDBEditEh
        Left = 200
        Top = 184
        Width = 179
        Height = 24
        ControlLabel.Width = 29
        ControlLabel.Height = 16
        ControlLabel.Caption = #1060#1072#1082#1089
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -176
        DataField = 'FAX'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = True
      end
      object edtE_MAIL: TDBEditEh
        Left = 200
        Top = 64
        Width = 529
        Height = 24
        ControlLabel.Width = 155
        ControlLabel.Height = 16
        ControlLabel.Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089' E-Mail'
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -176
        DataField = 'E_MAIL'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = True
      end
      object edtTEL_BUCH1: TDBEditEh
        Left = 552
        Top = 184
        Width = 179
        Height = 24
        ControlLabel.Width = 129
        ControlLabel.Height = 16
        ControlLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1080
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -147
        DataField = 'TEL_BUCH'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = True
      end
      object edtTEL_BUCH: TDBEditEh
        Left = 550
        Top = 144
        Width = 179
        Height = 24
        ControlLabel.Width = 131
        ControlLabel.Height = 16
        ControlLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        ControlLabel.Font.Charset = DEFAULT_CHARSET
        ControlLabel.Font.Color = clWindowText
        ControlLabel.Font.Height = -13
        ControlLabel.Font.Name = 'Tahoma'
        ControlLabel.Font.Style = []
        ControlLabel.ParentFont = False
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = -20
        ControlLabelLocation.Offset = -147
        DataField = 'TEL_RUKOV'
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = True
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 514
    Width = 755
    Height = 72
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btn3: TBitBtn
      Left = 420
      Top = 16
      Width = 250
      Height = 40
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 85
      Top = 16
      Width = 250
      Height = 40
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1086#1073#1085#1086#1074#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn4Click
    end
  end
end
