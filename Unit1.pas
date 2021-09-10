unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBVertGridsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  DBCtrlsEh, Mask, DBCtrls, Buttons, ExtCtrls, ComCtrls, Menus, frxBarcode, frxClass, XPMan, WordXP, Word2000, ShellApi, ComObj,
  frxDBSet, MemTableDataEh, Db, MemTableEh, ImgList, DBLookupEh;


type
  TForm1 = class(TForm)
    grp2: TGroupBox;
    lbl1: TLabel;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    pm1: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxdbdtst2: TfrxDBDataset;
    MTable_Memory: TMemTableEh;
    DSourse_Memory: TDataSource;
    N13: TMenuItem;
    pnl1: TPanel;
    grp7: TGroupBox;
    btn17: TBitBtn;
    btn18: TBitBtn;
    btn19: TBitBtn;
    btn20: TBitBtn;
    grp15: TGroupBox;
    lbl79: TLabel;
    edt42: TDBEditEh;
    btn48: TBitBtn;
    chkdbchckbxh3: TDBCheckBoxEh;
    btn49: TBitBtn;
    edt47: TDBEditEh;
    btn50: TBitBtn;
    edt3: TDBEditEh;
    edt4: TDBEditEh;
    edt16: TDBDateTimeEditEh;
    edt15: TDBDateTimeEditEh;
    btn5: TBitBtn;
    spl1: TSplitter;
    dbvrtgrdh1: TDBVertGridEh;
    pnl2: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    spl2: TSplitter;
    dbgrdh1: TDBGridEh;
    ts2: TTabSheet;
    ts3: TTabSheet;
    dbgrdh2: TDBGridEh;
    dbgrdh3: TDBGridEh;
    dbgrdh4: TDBGridEh;
    N14: TMenuItem;
    pm2: TPopupMenu;
    J1: TMenuItem;
    H1: TMenuItem;
    E1: TMenuItem;
    il1: TImageList;
    il2: TImageList;
    il4: TImageList;
    cbb1: TDBLookupComboboxEh;
    cbb2: TDBLookupComboboxEh;
    frxdbdtst3: TfrxDBDataset;
    frxrprt2: TfrxReport;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    edt1: TDBEditEh;
    N18: TMenuItem;
    N19: TMenuItem;
    frxrprt3: TfrxReport;
    G1: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    cbb3: TDBLookupComboboxEh;
    cbb4: TDBLookupComboboxEh;
    ChangePath: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure btn48Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure btn49Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure btn50Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt42Change(Sender: TObject);
    procedure ChangePathClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UPasswordDlg, Lib, SBROS, SORT, Unit3, Unit2, Unit4, Unit6, Unit9, Unit11,
  Unit12;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
 PasswordDlg1.ShowModal;

 Form1.il1.GetBitmap(1, btn48.Glyph);
 Form1.il1.GetBitmap(2, btn5.Glyph);
 Form1.il4.GetBitmap(0, btn17.Glyph);
 Form1.il4.GetBitmap(2, btn18.Glyph);
 Form1.il2.GetBitmap(3, btn20.Glyph);
end;

procedure TForm1.btn17Click(Sender: TObject);
Var
F2: Integer;
begin
 UPDATE_BOOLEAN:=True;
 DM.MTable_SI_IO.Insert;
 F2:=Form2.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
var
 F4: Integer;
begin
 F4:=Form4.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 ShowMessage(User_PRIZ);
end;

procedure TForm1.N3Click(Sender: TObject);
Var
 F6: Integer;
begin
 F6:=Form6.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
 ShowMessage(Lib.Lat_NameUser);
end;

procedure TForm1.btn48Click(Sender: TObject);
begin
 SBROS_SI_IO;
end;

procedure TForm1.btn20Click(Sender: TObject);
var
 F12: Integer;
begin
 Warning:='�� ������� ��� ������ ������� ������������?';
 Delete_help:='��������_������������';
 F12:=Form12.ShowModal;
 SBROS_SI_IO;
end;

procedure TForm1.btn18Click(Sender: TObject);
Var
F2: Integer;
begin
 UPDATE_BOOLEAN:=True;
 F2:=Form2.ShowModal;
end;

procedure TForm1.btn19Click(Sender: TObject);
var
 WATT_COPY: Real;
 SI_IO_COPY: array[1..4] of string;
 SI_IO_COPY_Time: array [1..5] of TDateTime;
 SI_IO_COPY_Ansi: array [1..5] of AnsiString;
 SI_IO_COPY_INT: array [1..4] of Integer;
 F2: Integer;
begin
 WATT_Otmena:=DM.MTable_SI_IO.FieldByName('WATT').AsFloat;

 SI_IO_COPY[1]:=DM.MTable_SI_IO.FieldByName('CLASS').AsString;
 SI_IO_COPY[2]:=DM.MTable_SI_IO.FieldByName('IP').AsString;
 SI_IO_COPY[3]:=DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString;
 SI_IO_COPY[4]:=DM.MTable_SI_IO.FieldByName('N_INVENT').AsString;

 SI_IO_COPY_Time[1]:=DM.MTable_SI_IO.FieldByName('DATE_PRO').AsDateTime;
 SI_IO_COPY_Time[2]:=DM.MTable_SI_IO.FieldByName('DATE_VVOD').AsDateTime;
 SI_IO_COPY_Time[3]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_FIRST').AsDateTime;
 SI_IO_COPY_Time[4]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime;
 SI_IO_COPY_Time[5]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime;

 SI_IO_COPY_Ansi[1]:=DM.MTable_SI_IO.FieldByName('NAME').AsString;
 SI_IO_COPY_Ansi[2]:=DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString;
 SI_IO_COPY_Ansi[3]:=DM.MTable_SI_IO.FieldByName('RANGE_IZMER').AsString;
 SI_IO_COPY_Ansi[4]:=DM.MTable_SI_IO.FieldByName('CORRECT').AsString;
 SI_IO_COPY_Ansi[5]:=DM.MTable_SI_IO.FieldByName('N_ATTESTAT').AsString;

 SI_IO_COPY_INT[1]:=DM.MTable_SI_IO.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger;
 SI_IO_COPY_INT[2]:=DM.MTable_SI_IO.FieldByName('ID_SPR_OTDEL').AsInteger;
 SI_IO_COPY_INT[3]:=DM.MTable_SI_IO.FieldByName('ID_USER').AsInteger;
 SI_IO_COPY_INT[4]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_PERIOD').AsInteger;

 DM.MTable_SI_IO.Insert;

 DM.MTable_SI_IO.FieldByName('WATT').AsFloat:=WATT_COPY;

 DM.MTable_SI_IO.FieldByName('CLASS').AsString:=SI_IO_COPY[1];
 DM.MTable_SI_IO.FieldByName('IP').AsString:=SI_IO_COPY[2];
 DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString:=SI_IO_COPY[3];
 DM.MTable_SI_IO.FieldByName('N_INVENT').AsString:=SI_IO_COPY[4];

 DM.MTable_SI_IO.FieldByName('DATE_PRO').AsDateTime:=SI_IO_COPY_Time[1];
 DM.MTable_SI_IO.FieldByName('DATE_VVOD').AsDateTime:=SI_IO_COPY_Time[2];
 DM.MTable_SI_IO.FieldByName('DATE_POVERKA_FIRST').AsDateTime:=SI_IO_COPY_Time[3];
 DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime:=SI_IO_COPY_Time[4];
 DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime:=SI_IO_COPY_Time[5];

 DM.MTable_SI_IO.FieldByName('NAME').AsString:=SI_IO_COPY_Ansi[1];
 DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString:=SI_IO_COPY_Ansi[2];
 DM.MTable_SI_IO.FieldByName('RANGE_IZMER').AsString:=SI_IO_COPY_Ansi[3];
 DM.MTable_SI_IO.FieldByName('CORRECT').AsString:=SI_IO_COPY_Ansi[4];
 DM.MTable_SI_IO.FieldByName('N_ATTESTAT').AsString:=SI_IO_COPY_Ansi[5];

 DM.MTable_SI_IO.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger:=SI_IO_COPY_INT[1];
 DM.MTable_SI_IO.FieldByName('ID_SPR_OTDEL').AsInteger:=SI_IO_COPY_INT[2];
 DM.MTable_SI_IO.FieldByName('ID_USER').AsInteger:=SI_IO_COPY_INT[3];
 DM.MTable_SI_IO.FieldByName('DATE_POVERKA_PERIOD').AsInteger:=SI_IO_COPY_INT[4];

 INSERT_BOOLEAN:=True;
 F2:=Form2.ShowModal;
end;

procedure TForm1.N7Click(Sender: TObject);
var
 F9: Integer;
begin
 DM.MTable_COMMENT.Active:=False;
 DM.DSet_COMMENT.Active:=False;
 with DM.DSet_COMMENT do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('COMMENT_IO.ID,');
  SelectSQL.Add('COMMENT_IO.CREATE_DATE,');
  SelectSQL.Add('COMMENT_IO.CREATE_USER,');
  SelectSQL.Add('COMMENT_IO.ZAYAVKA,');
  SelectSQL.Add('COMMENT_IO.PRIORITY,');
  SelectSQL.Add('COMMENT_IO."MESSAGE",');
  SelectSQL.Add('COMMENT_IO.STATUS,');
  SelectSQL.Add('COMMENT_IO.END_DATE');
  SelectSQL.Add('FROM');
  SelectSQL.Add('COMMENT_IO COMMENT_IO');
  SelectSQL.Add('where (COMMENT_IO.STATUS='+chr(39)+'� ������'+chr(39)+') or (COMMENT_IO.STATUS='+chr(39)+'����������'+chr(39)+') or (COMMENT_IO.STATUS='+chr(39)+'�� ���������'+chr(39)+')');
  SelectSQL.Add('ORDER BY');
  SelectSQL.Add('COMMENT_IO.CREATE_DATE');
 end;
 //Form9.edt2.Value:=lib.GetServerDate-30;
 //Form9.edt3.Value:=lib.GetServerDate+1;
 //Form9.edt5.Value:=lib.GetServerDate-30;
 //Form9.edt6.Value:=lib.GetServerDate+1;
 DM.DSet_COMMENT.Active:=True;
 DM.MTable_COMMENT.Active:=True;
 F9:=form9.ShowModal;
end;

procedure TForm1.dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  with (Sender as TDBGridEh), (Sender as TDBGridEh).Canvas do
 begin
  if (DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=3) and (DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime<DATE_GLOBAL) then Brush.Color:= RGB(255,220,220)
  else
  if (DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=3) and (DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime<DATE_GLOBAL+31) then Brush.Color:= RGB(255,172,90)
  else
  if DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=3 then Brush.Color:=clMoneyGreen
  else
  if DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=2 then Brush.Color:= RGB(255,255,150)
  else
  if DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=4 then Brush.Color:= RGB(191,191,191)
  else
  if DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=5 then Brush.Color:= RGB(175,175,175)
  else
  if DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=1 then Brush.Color:= RGB(64,128,128)
  else
  Brush.Color:=clWhite;
  // ��������������� ��������� ������� ������� �������
  if gdSelected in State then
  begin
   Brush.Color:= clHighLight;
   Font.Color := clHighLightText;
  end;
 // ������ GRID �������������� ������
  DefaultDrawColumnCell(Rect,DataCol,Column,State);
 end;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Edit;
 DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=5;
 DM.MTable_SI_IO.Post;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Edit;
 DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=4;
 DM.MTable_SI_IO.Post;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Edit;
 DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=3;
 DM.MTable_SI_IO.Post;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Edit;
 DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=2;
 DM.MTable_SI_IO.Post;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Edit;
 DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=1;
 DM.MTable_SI_IO.Post;
end;

procedure TForm1.btn49Click(Sender: TObject);
var
 frx_Memo: TfrxMemoView;
begin
 frx_Memo:=Form1.frxrprt1.FindObject('Memo12')as TfrxMemoView;
 //frx_Memo.Text:= '������� � ' + IntToStr(DM.MTable_BARABAN.FieldByName('ID').AsInteger);
 Form1.frxrprt1.ShowReport;
end;

procedure TForm1.N14Click(Sender: TObject);
var
 F11: Integer;
begin
 Insert_Boolean:=True;
 DM.MTable_POVERKA.Insert;
 DM.MTable_POVERKA.FieldByName('ID_SPR_SI_IO').AsInteger:=DM.MTable_SI_IO.FieldByName('ID').AsInteger;
 Form11.edtLAST_DATE.Value:=Date;
 Form11.edtNEXT_DATE.Value:=Date+365;
 F11:=form11.ShowModal;
end;

procedure TForm1.H1Click(Sender: TObject);
var
 F11: Integer;
begin
 UPDATE_Boolean:=True;
 F11:=form11.ShowModal;
end;

procedure TForm1.E1Click(Sender: TObject);
var
 F12: Integer;
begin
 Delete_help:='��������_�������';
 Warning:='�� ������� ��� ������ ������� ������ � �������';
 F12:=Form12.ShowModal;
end;

procedure TForm1.btn50Click(Sender: TObject);
var
 frx_Memo1, frx_Memo2, frx_Memo3, frx_Memo4: TfrxMemoView;
 frx_BarCode1 : TfrxBarcodeView;
 FIO, F, I, O: string;
 len_type: real;  // ���������� �������� � ���� ������������
 len_mf_num: real; // ���������� �������� � ��������� ������

begin
 FIO:=Trim(DM.MTable_SI_IO.FieldByName('USER_FIO_SI_IO').AsString);
 F:=Copy(FIO, 1, Pos(' ', FIO));
 I:=Copy(FIO, Pos(' ', FIO)+1, 1)+'.';
 O:=Copy(FIO, LastDelimiter(' ', FIO)+1, 1)+'.';
 FIO:=F+' '+I+' '+O;
 len_type:=length(DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString);
 len_mf_num:=length(DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString);

 frx_Memo1:=Form1.frxrprt2.FindObject('Memo1')as TfrxMemoView;
 frx_Memo1.Text:= '���: ' + DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString;


 frx_Memo2:=Form1.frxrprt2.FindObject('Memo2')as TfrxMemoView;
 frx_Memo2.Text:='���. �: ' + DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString;

 // frx_Memo3:=Form1.frxrprt2.FindObject('Memo3')as TfrxMemoView;
 // frx_Memo3.Text:='�������������: ' + FIO;

 frx_Memo4:=Form1.frxrprt2.FindObject('Memo4')as TfrxMemoView;
 frx_Memo4.Text:='ID: ' + inttostr(DM.MTable_SI_IO.FieldByName('ID').AsInteger);

 frx_BarCode1:=Form1.frxrprt2.FindObject('BarCode1') as TfrxBarCodeView;
 frx_BarCode1.Text:='SPC23'+IntToStr(DM.MTable_SI_IO.FieldByName('ID').AsInteger);
 if (len_type < 12) and (len_mf_num < 8) then
 begin
 frx_Memo1.Font.Size:=12;
 frx_Memo2.Font.Size:=12;
 frx_Memo4.Font.Size:=12;
 end
 else
 begin
 frx_Memo1.Font.Size:=10;
 frx_Memo2.Font.Size:=10;
 frx_Memo4.Font.Size:=10;
 end;
Form1.frxrprt2.ShowReport;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
 SBROS_SI_IO;
end;

procedure TForm1.N19Click(Sender: TObject);
var
 Way_S, HELP, h: string;
 Word_S: OleVariant;
begin
 if DM.MTable_POVERKA.FieldByName('PATH').AsString='' then
 begin
   MessageDlg('���� �� ���������', mtInformation, [mbOk], 0)
 end
 else
 begin
  Way_S:=Trim(DM.MTable_POVERKA.FieldByName('PATH').AsString);
  HELP:=Copy(Way_S, LastDelimiter('.', Way_S), Length(Way_S));

  if (HELP='.doc') or (HELP='.docx') then
  begin
   Word_S:=CreateOleObject('Word.Application');
   Word_S.Visible:=True;
   Word_S.Documents.Open(Way_S);
   Word_S.Application.WindowState:=2;
   Word_S.Application.WindowState:=1;
  end;
  if (HELP='.pdf') or (HELP='.PDF')  then ShellExecute(handle, 'open', PChar(Way_S), nil, nil, SW_SHOWNORMAL);
 end;
end;

procedure TForm1.N24Click(Sender: TObject);
var
 frx_Memo2, frx_Memo3: TfrxMemoView;
begin
 frx_Memo2:=Form1.frxrprt3.FindObject('Memo2')as TfrxMemoView;
 frx_Memo2.Text:='���������: ' +  DateToStr(DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime);

 frx_Memo3:=Form1.frxrprt3.FindObject('Memo3')as TfrxMemoView;
 frx_Memo3.Text:='���������: ' + DateToStr(DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime);

 Form1.frxrprt3.ShowReport;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 DM.MTable_SI_IO.Filtered:=False;

 edt42.Text:='';
 edt4.Text:='';
 edt3.Text:='';
 edt47.Text:='';
 cbb1.Value:=null;
 cbb4.Value:=null;
 edt1.Text:='';
 cbb2.Value:=null;
 cbb3.Value:=null;

 chkdbchckbxh3.Checked:=False;
 edt15.Value:=lib.GetServerDate-30;
 edt16.Value:=lib.GetServerDate+1;

 DM.MTable_SI_IO.Filter:='';
 DM.MTable_SI_IO.Filtered:=True;
end;

procedure TForm1.edt42Change(Sender: TObject);
begin
 FILTER_SI_IO;
end;

procedure TForm1.ChangePathClick(Sender: TObject);
var Check_Nas_Path_Var, Copy_Path: string;
begin
 with DM.DSet_Pablic do
 begin
  Close;
  SelectSQL.Clear;
  UpdateSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('SI_IO_POVERKA.ID,');
  SelectSQL.Add('SI_IO_POVERKA.PATH');
  SelectSQL.Add('FROM');
  SelectSQL.Add('SI_IO_POVERKA');
  UpdateSQL.Add('UPDATE SI_IO_POVERKA');
  UpdateSQL.Add('SET');
  UpdateSQL.Add('PATH = :PATH');
  UpdateSQL.Add('WHERE');
  UpdateSQL.Add('ID = :OLD_ID');
  Open;
  Last;
  First;
 end;

 while not DM.DSet_Pablic.Eof do
 begin
 Check_Nas_Path_Var:=Copy(DM.DSet_Pablic.FieldByName('PATH').AsString, 1, 5); // ��������, ���� �� � ���� nas//(1-5 ��������)


 if (DM.DSet_Pablic.FieldByName('PATH').AsString <> '') and (Check_Nas_Path_Var <> '\\nas') then
 begin
 Copy_Path := Copy(DM.DSet_Pablic.FieldByName('PATH').AsString, 14, Length(DM.DSet_Pablic.FieldByName('PATH').AsString ));
 DM.DSet_Pablic.Edit;
 DM.DSet_Pablic.FieldByName('PATH').AsString:='\\nas01\SPCABLE\26_Tekhnicheskiy_Departament\00_Metrologiya'+ Copy_Path;
 DM.DSet_Pablic.Post;
 end;
 DM.DSet_Pablic.Next;
 end;

end;


end.
