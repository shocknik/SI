object Form4: TForm4
  Left = 265
  Top = 81
  Width = 1086
  Height = 583
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 1070
    Height = 544
    ActivePage = ts3
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1043#1088#1091#1087#1087#1099
      object pnl1: TPanel
        Left = 0
        Top = 367
        Width = 1062
        Height = 149
        Align = alBottom
        TabOrder = 0
        object grp1: TGroupBox
          Left = 8
          Top = 8
          Width = 345
          Height = 121
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
          TabOrder = 0
          object btn3: TBitBtn
            Left = 256
            Top = 24
            Width = 73
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 0
            OnClick = btn3Click
          end
          object btn2: TBitBtn
            Left = 96
            Top = 24
            Width = 73
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            TabOrder = 1
            OnClick = btn2Click
          end
          object btn1: TBitBtn
            Left = 16
            Top = 24
            Width = 73
            Height = 25
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 2
            OnClick = btn1Click
          end
          object btn5: TButton
            Left = 176
            Top = 24
            Width = 73
            Height = 25
            Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 3
            OnClick = btn5Click
          end
          object edt1: TDBEditEh
            Left = 96
            Top = 56
            Width = 233
            Height = 21
            ControlLabel.Width = 40
            ControlLabel.Height = 13
            ControlLabel.Caption = #1060#1080#1083#1100#1090#1088
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -80
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Text = 'edt1'
            Visible = True
          end
          object btn4: TBitBtn
            Left = 16
            Top = 84
            Width = 313
            Height = 25
            Caption = #1057#1073#1088#1086#1089
            TabOrder = 5
            OnClick = btn4Click
          end
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1062
        Height = 367
        Align = alClient
        DataSource = DM.DSourse_SPR_GROUP_SI_IO
        DynProps = <>
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh]
        HorzScrollBar.ExtraPanel.Visible = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 276
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      ImageIndex = 1
      object spl1: TSplitter
        Left = 707
        Top = 0
        Width = 5
        Height = 307
        Align = alRight
        Color = 15516137
        ParentColor = False
      end
      object pnl2: TPanel
        Left = 0
        Top = 307
        Width = 1062
        Height = 209
        Align = alBottom
        TabOrder = 0
        object grp7: TGroupBox
          Left = 8
          Top = 12
          Width = 172
          Height = 185
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
          TabOrder = 0
          object btn17: TBitBtn
            Left = 16
            Top = 24
            Width = 140
            Height = 39
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 0
            OnClick = btn17Click
          end
          object btn18: TBitBtn
            Left = 16
            Top = 134
            Width = 140
            Height = 39
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            TabOrder = 1
            OnClick = btn18Click
          end
          object btn19: TBitBtn
            Left = 16
            Top = 79
            Width = 140
            Height = 39
            Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
          end
        end
        object grp15: TGroupBox
          Left = 192
          Top = 12
          Width = 695
          Height = 185
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 1
          object edt42: TDBEditEh
            Left = 133
            Top = 24
            Width = 193
            Height = 21
            ControlLabel.Width = 76
            ControlLabel.Height = 13
            ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -117
            DynProps = <>
            EditButtons = <>
            TabOrder = 0
            Visible = True
            OnChange = edt42Change
          end
          object btn48: TBitBtn
            Left = 16
            Top = 144
            Width = 309
            Height = 29
            Caption = #1054#1073#1097#1080#1081' '#1089#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btn48Click
          end
          object edt4: TDBEditEh
            Left = 486
            Top = 24
            Width = 193
            Height = 21
            ControlLabel.Width = 36
            ControlLabel.Height = 13
            ControlLabel.Caption = #1056#1077#1075#1080#1086#1085
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -129
            DynProps = <>
            EditButtons = <>
            TabOrder = 2
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object btn6: TBitBtn
            Left = 357
            Top = 144
            Width = 322
            Height = 29
            Caption = #1057#1073#1088#1086#1089' '#1092#1080#1083#1100#1090#1088#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btn6Click
          end
          object edt2: TDBEditEh
            Left = 132
            Top = 54
            Width = 193
            Height = 21
            ControlLabel.Width = 86
            ControlLabel.Height = 13
            ControlLabel.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -117
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object edt5: TDBEditEh
            Left = 133
            Top = 114
            Width = 193
            Height = 21
            ControlLabel.Width = 101
            ControlLabel.Height = 13
            ControlLabel.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -117
            DynProps = <>
            EditButtons = <>
            TabOrder = 5
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object edt6: TDBEditEh
            Left = 132
            Top = 84
            Width = 193
            Height = 21
            ControlLabel.Width = 83
            ControlLabel.Height = 13
            ControlLabel.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -117
            DynProps = <>
            EditButtons = <>
            TabOrder = 6
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object edt3: TDBEditEh
            Left = 486
            Top = 54
            Width = 193
            Height = 21
            ControlLabel.Width = 24
            ControlLabel.Height = 13
            ControlLabel.Caption = #1048#1053#1053
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -129
            DynProps = <>
            EditButtons = <>
            TabOrder = 7
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object edt8: TDBEditEh
            Left = 486
            Top = 84
            Width = 193
            Height = 21
            ControlLabel.Width = 113
            ControlLabel.Height = 13
            ControlLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -129
            DynProps = <>
            EditButtons = <>
            TabOrder = 8
            Text = 'edt4'
            Visible = True
            OnChange = edt42Change
          end
          object chk1: TDBCheckBoxEh
            Left = 360
            Top = 116
            Width = 97
            Height = 17
            Caption = #1055#1088#1080#1079#1085#1072#1082' ('#1062#1057#1052')'
            DynProps = <>
            TabOrder = 9
            OnClick = edt42Change
          end
        end
      end
      object dbvrtgrdh1: TDBVertGridEh
        Left = 712
        Top = 0
        Width = 350
        Height = 307
        Align = alRight
        AllowedSelections = []
        RowCategories.CategoryProps = <>
        PrintService.ColorSchema = pcsFullColorEh
        DataSource = DM.DSourse_KONTRAGENT
        DrawGraphicData = True
        DrawMemoText = True
        ReadOnly = True
        TabOrder = 1
        LabelColWidth = 203
        Rows = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE1'
            RowLabel.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'SNAME'
            RowLabel.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            RowLabel.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_REGION'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_REG'
            RowLabel.Caption = #1056#1077#1075#1080#1086#1085
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'KONT_FAICE'
            RowLabel.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_KONT'
            RowLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1082#1086#1085#1090#1072#1082#1090#1085#1086#1075#1086' '#1083#1080#1094#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADR_MAIL'
            RowLabel.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADR_JURID'
            RowLabel.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_BUCH'
            RowLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_RUKOV'
            RowLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FAX'
            RowLabel.Caption = #1060#1072#1082#1089
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'E_MAIL'
            RowLabel.Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_USER1'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIM'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIZ1'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIZ_2'
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'INN'
            RowLabel.Caption = #1048#1053#1053
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'KPP'
            RowLabel.Caption = 'K'#1055#1055
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'SI_IO'
            RowLabel.Caption = #1055#1088#1080#1079#1085#1072#1082' ('#1062#1057#1052')'
          end>
      end
      object dbgrdh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 707
        Height = 307
        Align = alClient
        DataSource = DM.DSourse_KONTRAGENT
        DynProps = <>
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        RowHeight = 4
        RowLines = 1
        TabOrder = 2
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE1'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SNAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'|'#1050#1088#1072#1090#1082#1086#1077
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'|'#1055#1086#1083#1085#1086#1077
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_REGION'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_REG'
            Footers = <>
            Title.Caption = #1056#1077#1075#1080#1086#1085
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SI_IO'
            Footers = <>
            Title.Caption = #1055#1088#1080#1079#1085#1072#1082' ('#1062#1057#1052')'
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KONT_FAICE'
            Footers = <>
            Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086'|'#1060#1048#1054
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_KONT'
            Footers = <>
            Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086'|'#1058#1077#1083#1077#1092#1086#1085
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADR_MAIL'
            Footers = <>
            Title.Caption = #1040#1076#1088#1077#1089'|'#1055#1086#1095#1090#1086#1074#1099#1081' '
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADR_JURID'
            Footers = <>
            Title.Caption = #1040#1076#1088#1077#1089'|'#1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_BUCH'
            Footers = <>
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085'|'#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TEL_RUKOV'
            Footers = <>
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085'|'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FAX'
            Footers = <>
            Title.Caption = #1060#1072#1082#1089
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'E_MAIL'
            Footers = <>
            Title.Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_USER1'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIM'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIZ1'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIZ_2'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'INN'
            Footers = <>
            Title.Caption = #1048#1053#1053
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KPP'
            Footers = <>
            Title.Caption = 'K'#1055#1055
            Width = 120
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object ts3: TTabSheet
      Caption = #1050#1083#1072#1089#1089#1099
      ImageIndex = 2
      object pnl3: TPanel
        Left = 0
        Top = 393
        Width = 1062
        Height = 123
        Align = alBottom
        TabOrder = 0
        object grp2: TGroupBox
          Left = 8
          Top = 12
          Width = 537
          Height = 99
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
          TabOrder = 0
          object btn11: TBitBtn
            Left = 16
            Top = 24
            Width = 125
            Height = 59
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 0
            OnClick = btn11Click
          end
          object btn12: TBitBtn
            Left = 157
            Top = 24
            Width = 125
            Height = 59
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 1
            OnClick = btn12Click
          end
          object btn7: TBitBtn
            Left = 298
            Top = 24
            Width = 125
            Height = 59
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
            OnClick = btn7Click
          end
          object btn8: TBitBtn
            Left = 488
            Top = 24
            Width = 33
            Height = 59
            TabOrder = 3
            OnClick = btn8Click
          end
          object btn9: TBitBtn
            Left = 439
            Top = 24
            Width = 33
            Height = 59
            TabOrder = 4
            OnClick = btn9Click
          end
        end
        object grp3: TGroupBox
          Left = 553
          Top = 12
          Width = 489
          Height = 99
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 1
          object edt7: TDBEditEh
            Left = 62
            Top = 24
            Width = 174
            Height = 21
            ControlLabel.Width = 31
            ControlLabel.Height = 13
            ControlLabel.Caption = #1050#1083#1072#1089#1089
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -47
            DynProps = <>
            EditButtons = <>
            TabOrder = 0
            Visible = True
            OnChange = edt7Change
          end
          object btn16: TBitBtn
            Left = 16
            Top = 54
            Width = 220
            Height = 29
            Caption = #1054#1073#1097#1080#1081' '#1089#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btn16Click
            Spacing = 10
          end
          object btn10: TBitBtn
            Left = 253
            Top = 54
            Width = 220
            Height = 29
            Caption = #1057#1073#1088#1086#1089' '#1092#1080#1083#1100#1090#1088#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btn10Click
            Spacing = 10
          end
          object cbb1: TDBLookupComboboxEh
            Left = 304
            Top = 24
            Width = 169
            Height = 21
            ControlLabel.Width = 35
            ControlLabel.Height = 13
            ControlLabel.Caption = #1043#1088#1091#1087#1087#1072
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = -17
            ControlLabelLocation.Offset = -51
            DynProps = <>
            EditButtons = <>
            KeyField = 'ID'
            ListField = 'NAME'
            ListSource = DM.DSourse_SPR_GROUP_SI_IO
            TabOrder = 3
            Visible = True
            OnChange = edt7Change
          end
        end
      end
      object dbgrdh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1062
        Height = 393
        Align = alClient
        DataSource = DM.DSourse_SPR_SI_IO_CLASS
        DynProps = <>
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITET'
            Footers = <>
            Title.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_SPR_GROUP_SI_IO'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GROUP_NAME'
            Footers = <>
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Width = 70
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
