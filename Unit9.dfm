object Form9: TForm9
  Left = 387
  Top = 154
  Width = 928
  Height = 530
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 491
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103
      object spl1: TSplitter
        Left = 539
        Top = 0
        Width = 5
        Height = 254
        Align = alRight
        Color = 15516137
        ParentColor = False
      end
      object pnl1: TPanel
        Left = 0
        Top = 254
        Width = 904
        Height = 209
        Align = alBottom
        TabOrder = 0
        object grp17: TGroupBox
          Left = 8
          Top = 12
          Width = 160
          Height = 185
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
          TabOrder = 0
          object btn40: TBitBtn
            Left = 16
            Top = 24
            Width = 128
            Height = 40
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 0
            OnClick = btn40Click
          end
          object btn41: TBitBtn
            Left = 16
            Top = 78
            Width = 128
            Height = 41
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            TabOrder = 1
            OnClick = btn41Click
          end
          object btn42: TBitBtn
            Left = 16
            Top = 133
            Width = 128
            Height = 40
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 2
            OnClick = btn42Click
          end
        end
        object grp1: TGroupBox
          Left = 176
          Top = 12
          Width = 657
          Height = 185
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 1
          object lbl16: TLabel
            Left = 16
            Top = 28
            Width = 73
            Height = 13
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
          end
          object lbl6: TLabel
            Left = 16
            Top = 58
            Width = 69
            Height = 13
            Caption = #1058#1077#1082#1089#1090' '#1079#1072#1103#1074#1082#1080
          end
          object lbl26: TLabel
            Left = 16
            Top = 88
            Width = 53
            Height = 13
            Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100
          end
          object lbl3: TLabel
            Left = 16
            Top = 118
            Width = 82
            Height = 13
            Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
          end
          object lbl11: TLabel
            Left = 312
            Top = 27
            Width = 78
            Height = 13
            Caption = #1057#1090#1072#1090#1091#1090#1089' '#1079#1072#1103#1074#1082#1080
          end
          object lbl12: TLabel
            Left = 312
            Top = 88
            Width = 102
            Height = 13
            Caption = #1044#1072#1090#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
          end
          object lbl5: TLabel
            Left = 435
            Top = 88
            Width = 7
            Height = 13
            Caption = #1057
          end
          object lbl1: TLabel
            Left = 540
            Top = 88
            Width = 14
            Height = 13
            Caption = #1055#1086
          end
          object lbl2: TLabel
            Left = 312
            Top = 58
            Width = 83
            Height = 13
            Caption = #1044#1072#1090#1072' '#1079#1072#1085#1077#1089#1077#1085#1080#1103
          end
          object lbl4: TLabel
            Left = 435
            Top = 58
            Width = 7
            Height = 13
            Caption = #1057
          end
          object lbl7: TLabel
            Left = 540
            Top = 58
            Width = 14
            Height = 13
            Caption = #1055#1086
          end
          object cbb15: TDBComboBoxEh
            Left = 104
            Top = 84
            Width = 193
            Height = 21
            DynProps = <>
            DropDownBox.Rows = 20
            EditButtons = <>
            Items.Strings = (
              #1042#1099#1089#1086#1082#1072#1103
              #1053#1080#1079#1082#1072#1103
              #1057#1088#1077#1076#1085#1103#1103)
            TabOrder = 0
            Visible = True
            OnChange = edt1Change
          end
          object cbb8: TDBComboBoxEh
            Left = 450
            Top = 24
            Width = 193
            Height = 21
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
            OnChange = edt1Change
          end
          object cbb3: TDBComboBoxEh
            Left = 104
            Top = 24
            Width = 193
            Height = 21
            DynProps = <>
            DropDownBox.Rows = 20
            EditButtons = <>
            TabOrder = 2
            Visible = True
            OnChange = edt1Change
          end
          object chk2: TDBCheckBoxEh
            Left = 415
            Top = 86
            Width = 17
            Height = 17
            DynProps = <>
            TabOrder = 3
          end
          object edt2: TDBDateTimeEditEh
            Left = 450
            Top = 84
            Width = 85
            Height = 21
            DynProps = <>
            Enabled = False
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 4
            Visible = True
            OnChange = edt1Change
          end
          object edt3: TDBDateTimeEditEh
            Left = 558
            Top = 84
            Width = 85
            Height = 21
            DynProps = <>
            Enabled = False
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 5
            Visible = True
            OnChange = edt1Change
          end
          object edt1: TDBEditEh
            Left = 104
            Top = 54
            Width = 193
            Height = 21
            DynProps = <>
            EditButtons = <>
            TabOrder = 6
            Visible = True
            OnChange = edt1Change
          end
          object edt4: TDBEditEh
            Left = 104
            Top = 114
            Width = 193
            Height = 21
            DynProps = <>
            EditButtons = <>
            TabOrder = 7
            Visible = True
            OnChange = edt1Change
          end
          object chk1: TDBCheckBoxEh
            Left = 415
            Top = 56
            Width = 17
            Height = 17
            DynProps = <>
            TabOrder = 8
          end
          object edt5: TDBDateTimeEditEh
            Left = 450
            Top = 54
            Width = 85
            Height = 21
            DynProps = <>
            Enabled = False
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 9
            Visible = True
            OnChange = edt1Change
          end
          object edt6: TDBDateTimeEditEh
            Left = 558
            Top = 54
            Width = 85
            Height = 21
            DynProps = <>
            Enabled = False
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 10
            Visible = True
            OnChange = edt1Change
          end
          object btn1: TBitBtn
            Left = 16
            Top = 144
            Width = 627
            Height = 29
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnClick = btn1Click
            Glyph.Data = {
              760B0000424D760B000000000000360000002800000028000000180000000100
              180000000000400B000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCD7CFC8
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF1EDEAE1DBD6D2C9C1C3B7ADFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DBD6B7A89AAF9F91FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6F5D2C9C1
              AF9F91AF9F91AF9F91AF9F91AF9F91F5F3F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFEBE7E4BEB1A6A99A8C625951A49588C3B7ADD5CCC5DFD8D2EBE7E4FDFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF8F6F5D2C9C1B2A294AF9F91A99A8C83776C5C54
              4D534A42A99A8CF1EDEAFFFFFFFFFFFFFFFFFFF5F3F1C8BDB3AF9F9172685F17
              120F050403887C71AF9F91AF9F91AF9F91AF9F91AF9F91C3B7ADE9E4E0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFE4DED9B2A2949E90834E453D1C17130605042F2218593D2717110D8E8176EB
              E7E4FFFFFFFFFFFFFFFFFFFDFCFC9F999427211C412E1FAB754817120D4D4640
              7D72688E8176AF9F91AF9F91AF9F91AF9F91AF9F91BEB1A6E1DBD6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DBD69E90834E453D17
              120E6A492E9F6D43BD814FBD814FBD814F32261CB0ADABFFFFFFFFFFFFFFFFFF
              DFDFDF4C494634281F93653EBD814FBD814F8E613B5E402735261B231B130000
              00211C176D635AA99A8CAF9F91AF9F91AF9F91C8BDB3FAF9F8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEEEAE75F544B17120E6A492EB77D4DBD814FBD814F
              BD814FBD814FBD814F453425A7A7A7FFFFFFFFFFFFE7E7E7070706704C2FBD81
              4FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814F99694046322117
              120F5D544BA49588AF9F91AF9F91C1B4A9FDFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF574F49583F29B77D4DBD814FBD814FBD814FBD814FBD814F9969406444
              2A271E17A7A7A7FFFFFFFFFFFFFFFFFFB7B7B7231E1B775335BD814FBD814FBD
              814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FAB7548593E2717120E
              83776CAF9F91AF9F91D2C9C1FFFFFFFFFFFFFFFFFFFFFFFF797572593E29BD81
              4FBD814FBD814FBD814FBD814F93653E34281F2C2926777675A7A7A7FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEFEFEF5C59563A2D22AB7548BD814F503A275E4027
              765031AB7548BD814FBD814FBD814FBD814FBD814FB1794A2F22186E6258AF9F
              91B2A294F8F6F5FFFFFFFFFFFFBFBFBF33281EBD814FBD814FBD814FBD814FBD
              814F885D3B37322DBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFB7B7B7231E1B7753350000007F7F7F5D5A581C1916563E
              2BB1794ABD814FBD814FBD814FBD814FB77D4D2E2319887C71AF9F91E1DBD6FF
              FFFFFFFFFF4C4946825936BD814FBD814FBD814FBD814FA57145221B15C3BAB2
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEFEFEF5C59560F0E0DFFFFFFFFFFFFF7F7F78E8D8C362C24B1794ABD
              814FBD814FBD814FBD814FAB754817120FA99A8CD7CFC8FFFFFFFFFFFF000000
              BD814FBD814FBD814FBD814FBD814F6A482C4D453EAF9F91DAD2CBFFFFFFFFFF
              FFFFFFFFFFFFFFEBE7E4CDC3BAF5F3F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF34281FBD814FBD814FBD814F
              BD814FBD814F3B2B1D786D63E6E1DDFFFFFFFFFFFF000000BD814FBD814FBD81
              4FBD814FBD814F5E4129574E46AF9F91AF9F91BEB1A6DDD5CFEBE7E4F3F0EEF5
              F3F1AF9F91AF9F91D2C9C1F8F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF1B1815A57145BD814FBD814FBD814FBD814F6444
              2A544C44F8F6F5FFFFFFFFFFFF1D1A18A57145BD814FBD814FBD814FBD814FAB
              754816120E998B7FAF9F91AF9F91AF9F91A99A8C37312B786D63AF9F91AF9F91
              AF9F91B2A294D2C9C1F8F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEAE7E1DB
              D6C2B8AE17120FAB7548BD814FBD814FBD814FBD814F6A482C615C58FFFFFFFF
              FFFFFFFFFF75737066482FBD814FBD814FBD814FBD814FBD814F93653E231B15
              574E4693867AAF9F91AF9F910000003B2B1D211C17786D63AF9F91AF9F91AF9F
              91B4A598F5F3F1FFFFFFFFFFFFD7CFC8AF9F91AF9F91AF9F915D534B4C3625BD
              814FBD814FBD814FBD814FBD814F4834239F9F9FFFFFFFFFFFFFFFFFFFF7F7F7
              24201DA57145BD814FBD814FBD814FBD814FBD814FB1794A5E41291D16100000
              000000000C0906BD814F9969403B2B1D211C1783776CBCAEA1F3F0EEFFFFFFFF
              FFFFFFFFFFD0C6BEAF9F9172685F322B25523A26BD814FBD814FBD814FBD814F
              BD814FAB75481C1916F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFDFDFDF38302A9365
              3EBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD
              814FBD814FBD814F99694030251B3B3734DFDFDFFFFFFFD7D7D73C3936000000
              000000412E1F885D39BD814FBD814FBD814FBD814FBD814FB77D4D423429B5B4
              B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF34302D503A2793653EBD
              814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814FBD814F
              BD814F8E613B1C1814CFCFCFFFFFFF9F9F9F38291CBD814FBD814FBD814FBD81
              4FBD814FBD814FBD814FBD814FA57145352A22B5B4B2FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97979734302D15110E4A3726825936
              8E613BB77D4DBD814FBD814FBD814FBD814FBD814FB77D4D5B422D3C3835E7E7
              E7FFFFFFFFFFFF9F9F9F4A3726BD814FBD814FBD814FBD814FBD814FBD814F99
              6940503A272B2622C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E79F9F9F4C49463C38350706050000
              0000000007060593653E9F6D43352A22858382FFFFFFFFFFFFFFFFFFFFFFFF87
              87875A3F28BD814FBD814F9F6D438E613B704C2F211B162C2926979797EFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6D6B36
              2518322C28C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F000000000000
              00000024211E3C3835656361D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F5C5956EFEFEFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
      end
      object dbvrtgrdh1: TDBVertGridEh
        Left = 544
        Top = 0
        Width = 360
        Height = 254
        Align = alRight
        AllowedSelections = []
        RowCategories.CategoryProps = <>
        PrintService.ColorSchema = pcsFullColorEh
        DataSource = DM.DSourse_COMMENT
        DrawGraphicData = True
        DrawMemoText = True
        ReadOnly = True
        TabOrder = 1
        LabelColWidth = 137
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
            FieldName = 'CREATE_DATE'
            RowLabel.Caption = #1042#1088#1077#1084#1103' '#1079#1072#1085#1077#1089#1077#1085#1080#1103' '#1079#1072#1087#1080#1089#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_USER'
            RowLabel.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZAYAVKA'
            FitRowHeightToData = True
            RowLabel.Caption = #1058#1077#1082#1089#1090' '#1079#1072#1103#1074#1082#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITY'
            RowLabel.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'MESSAGE'
            FitRowHeightToData = True
            RowLabel.Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'STATUS'
            RowLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1103#1074#1082#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'END_DATE'
            RowLabel.Caption = #1044#1072#1090#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
          end>
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 539
        Height = 254
        Align = alClient
        DataSource = DM.DSourse_COMMENT
        DrawMemoText = True
        DynProps = <>
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OptionsEh = [dghFixed3D, dghData3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        ReadOnly = True
        RowHeight = 4
        RowLines = 1
        TabOrder = 2
        OnDrawColumnCell = dbgrdh1DrawColumnCell
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
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103' '#1079#1072#1085#1077#1089#1077#1085#1080#1103' '#1079#1072#1087#1080#1089#1080
            Width = 140
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_USER'
            Footers = <>
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZAYAVKA'
            Footers = <>
            Title.Caption = #1058#1077#1082#1089#1090' '#1079#1072#1103#1074#1082#1080
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITY'
            Footers = <>
            Title.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MESSAGE'
            Footers = <>
            Title.Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STATUS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1103#1074#1082#1080
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
