unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBVertGridsEh, DBCtrls, StdCtrls, Buttons, Mask, DBCtrlsEh, DBLookupEh;

type
  TForm4 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl1: TPanel;
    grp1: TGroupBox;
    btn3: TBitBtn;
    btn2: TBitBtn;
    btn1: TBitBtn;
    btn5: TButton;
    dbgrdh1: TDBGridEh;
    edt1: TDBEditEh;
    btn4: TBitBtn;
    ts2: TTabSheet;
    pnl2: TPanel;
    grp7: TGroupBox;
    btn17: TBitBtn;
    btn18: TBitBtn;
    btn19: TBitBtn;
    grp15: TGroupBox;
    edt42: TDBEditEh;
    btn48: TBitBtn;
    edt4: TDBEditEh;
    btn6: TBitBtn;
    dbvrtgrdh1: TDBVertGridEh;
    spl1: TSplitter;
    dbgrdh2: TDBGridEh;
    edt2: TDBEditEh;
    edt5: TDBEditEh;
    edt6: TDBEditEh;
    edt3: TDBEditEh;
    edt8: TDBEditEh;
    chk1: TDBCheckBoxEh;
    ts3: TTabSheet;
    pnl3: TPanel;
    grp2: TGroupBox;
    btn11: TBitBtn;
    btn12: TBitBtn;
    btn7: TBitBtn;
    btn8: TBitBtn;
    btn9: TBitBtn;
    grp3: TGroupBox;
    edt7: TDBEditEh;
    dbgrdh3: TDBGridEh;
    btn16: TBitBtn;
    btn10: TBitBtn;
    cbb1: TDBLookupComboboxEh;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn48Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edt42Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure edt7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Lib, SBROS, Unit3, Unit5, Unit13, Unit2, Unit1, Unit14, Unit12, Unit9;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
Var
 F5: Integer;
begin
 INSERT_BOOLEAN:=True;
 DM.MTable_SPR_GROUP_SI_IO.Insert;
 F5:=Form5.ShowModal;
end;

procedure TForm4.btn2Click(Sender: TObject);
Var
 F5: Integer;
begin
 UPDATE_SPR_GROUP_SI_IO:=True;
 F5:=Form5.ShowModal;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
 SBROS_SPR_GROUP_SI_IO;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
 DM.MTable_SPR_GROUP_SI_IO.Delete;
 SBROS_SPR_GROUP_SI_IO;
end;

procedure TForm4.btn5Click(Sender: TObject);
var
 COPY_GROUP_SI_IO: string;
 F5: Integer;
begin
 INSERT_BOOLEAN:=True;
 COPY_GROUP_SI_IO:=DM.MTable_SPR_GROUP_SI_IO.FieldByName('NAME').AsString;
 DM.MTable_SPR_GROUP_SI_IO.Insert;
 DM.MTable_SPR_GROUP_SI_IO.FieldByName('NAME').AsString:=COPY_GROUP_SI_IO;
 F5:=Form5.ShowModal;
end;

procedure TForm4.btn48Click(Sender: TObject);
begin
 SBROS_KONTRAGENT;
end;

procedure TForm4.btn17Click(Sender: TObject);
Var
F13: Integer;
begin
 INSERT_BOOLEAN:=True;
 DM.MTable_KONTRAGENT.Insert;
 DM.MTable_KONTRAGENT.FieldByName('DATE1').AsDateTime:=GetServerDate;
 DM.MTable_KONTRAGENT.FieldByName('SI_IO').AsBoolean:=True;
 F13:=Form13.ShowModal;
end;

procedure TForm4.btn18Click(Sender: TObject);
Var
F13: Integer;
begin
 UPDATE_Boolean:=True;
 F13:=Form13.ShowModal;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
 DM.MTable_KONTRAGENT.Filtered:=False;
 with Form2 do
 begin
  chk1.Checked:=False;

  edt42.Text:='';
  edt2.Text:='';
  edt6.Text:='';
  edt5.Text:='';
  edt4.Text:='';
  edt3.Text:='';
  edt8.Text:='';
 end;

 DM.MTable_KONTRAGENT.Filter :='';
 DM.MTable_KONTRAGENT.Filtered:=True;
end;

procedure TForm4.edt42Change(Sender: TObject);
var
 h, KA_1_1, KA_2_1, KA_3_1, KA_4_1, KA_5_1, KA_6_1, KA_7_1: string;
 KA_1_2, KA_2_2, KA_3_2, KA_4_2, KA_5_2, KA_6_2, KA_7_2, KA_8_2: string;
begin
 if (DM.MTable_KONTRAGENT.Active=True) and (DM.MTable_KONTRAGENT.Filtered=true) then
 begin
  KA_1_1:=AnsiUpperCase(Form4.edt42.Text);
  KA_2_1:=AnsiUpperCase(Form4.edt2.Text);
  KA_3_1:=AnsiUpperCase(Form4.edt6.Text);
  KA_4_1:=AnsiUpperCase(Form4.edt5.Text);
  KA_5_1:=AnsiUpperCase(Form4.edt4.Text);
  KA_6_1:=AnsiUpperCase(Form4.edt3.Text);
  KA_7_1:=AnsiUpperCase(Form4.edt8.Text);

  if Form4.edt42.Text<>'' then KA_1_2:=' and UPPER(SNAME) like '+chr(39)+'%'+KA_1_1+'%'+chr(39) else KA_1_2:='';
  if Form4.edt2.Text<>'' then KA_2_2:=' and UPPER(KONT_FAICE) like '+chr(39)+'%'+KA_2_1+'%'+chr(39) else KA_2_2:='';
  if Form4.edt6.Text<>'' then KA_3_2:=' and UPPER(ADR_MAIL) like '+chr(39)+'%'+KA_3_1+'%'+chr(39) else KA_3_2:='';
  if Form4.edt5.Text<>'' then KA_4_2:=' and UPPER(ADR_JURID) like '+chr(39)+'%'+KA_4_1+'%'+chr(39) else KA_4_2:='';
  if Form4.edt4.Text<>'' then KA_5_2:=' and UPPER(NAME_REG) like '+chr(39)+'%'+KA_5_1+'%'+chr(39) else KA_5_2:='';
  if Form4.edt3.Text<>'' then KA_6_2:=' and UPPER(INN) like '+chr(39)+'%'+KA_6_1+'%'+chr(39) else KA_6_2:='';
  if Form4.edt8.Text<>'' then KA_7_2:=' and UPPER(KPP) like '+chr(39)+'%'+KA_7_1+'%'+chr(39) else KA_7_2:='';

  if Form4.chk1.Checked=True then KA_8_2:=' and SI_IO=1' else KA_8_2:=' and SI_IO=0';

  h:=KA_1_2+KA_2_2+KA_3_2+KA_4_2+KA_5_2+KA_6_2+KA_7_2+KA_8_2;
  Delete(h, 1, 5);
  DM.MTable_KONTRAGENT.Filter := h;
 end;
end;


procedure TForm4.FormShow(Sender: TObject);
begin
 Form1.il4.GetBitmap(0, btn17.Glyph);
 Form1.il2.GetBitmap(1, btn19.Glyph);
 Form1.il4.GetBitmap(2, btn18.Glyph);
 Form1.il1.GetBitmap(1, btn48.Glyph);
 Form1.il1.GetBitmap(2, btn6.Glyph);

 Form1.il4.GetBitmap(0, btn11.Glyph);     //Добавить
 Form1.il4.GetBitmap(1, btn12.Glyph);     //Редактировать
 Form1.il4.GetBitmap(2, btn7.Glyph);     //Редактировать

 Form1.il1.GetBitmap(1, btn16.Glyph);    //Общий сброс
 Form1.il1.GetBitmap(2, btn10.Glyph);    //Сброс фильтра

 Form1.il1.GetBitmap(3, btn9.Glyph);    //Стрелка вверх
 Form1.il1.GetBitmap(4, btn8.Glyph);    //Стрелка вниз
end;

procedure TForm4.btn11Click(Sender: TObject);
Var
 F14: Integer;
begin
 INSERT_BOOLEAN:=True;
 DM.MTable_SPR_SI_IO_CLASS.Insert;
 F14:=Form14.ShowModal;
end;

procedure TForm4.btn16Click(Sender: TObject);
begin
 SBROS_CLASS;
end;

procedure TForm4.btn12Click(Sender: TObject);
var
 F12: Integer;
begin
 if DM.MTable_SPR_SI_IO_CLASS.RecordCount<>0 then
 begin
  Delete_help:='Удаление_класс';
  Warning:='Вы уверены что хотите удалить выбранную запись';
  F12:=Form12.ShowModal;
 end;
end;

procedure TForm4.btn7Click(Sender: TObject);
Var
F14: Integer;
begin
 UPDATE_BOOLEAN:=True;
 F14:=Form14.ShowModal;
end;

procedure TForm4.btn9Click(Sender: TObject);
Var
 Record_help: Integer;
 ORDER_UP: Integer;
 ORDER_DOWN: Integer;
begin
 if DM.MTable_SPR_SI_IO_CLASS.FieldByName('PRIORITET').AsInteger<>1 then
 begin
  Record_help:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('PRIORITET').AsInteger-1;

  ORDER_UP:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID').AsInteger;
  DM.MTable_SPR_SI_IO_CLASS.Prior;
  ORDER_DOWN:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID').AsInteger;

  with DM.DSet_Pablic do
  begin
   Active:=False;
   SelectSQL.Clear;
   UpdateSQL.Clear;
   SelectSQL.Add('select * from SPR_SI_IO_CLASS where ID='+inttostr(ORDER_UP));
   UpdateSQL.Add('UPDATE SPR_SI_IO_CLASS');
   UpdateSQL.Add('SET');
   UpdateSQL.Add('PRIORITET = :PRIORITET');
   UpdateSQL.Add('WHERE');
   UpdateSQL.Add('ID = :OLD_ID');
   Open;
   Edit;
   FieldByName('PRIORITET').AsInteger:=DM.DSet_Pablic.FieldByName('PRIORITET').AsInteger-1;
   Post;

   Active:=False;
   SelectSQL.Clear;
   SelectSQL.Add('select * from SPR_SI_IO_CLASS where ID='+inttostr(ORDER_DOWN));
   Open;
   Active:=True;
   Edit;
   FieldByName('PRIORITET').AsInteger:=DM.DSet_Pablic.FieldByName('PRIORITET').AsInteger+1;
   Post;

   Close;
  end;
  
  SBROS_CLASS;
  DM.MTable_SPR_SI_IO_CLASS.RecNo:=Record_help;
 end;
end;

procedure TForm4.btn8Click(Sender: TObject);
Var
 Record_help: Integer;
 ORDER_UP: Integer;
 ORDER_DOWN: Integer;
begin
 Record_help:=GetServerCount('SELECT COUNT(*) as a1 FROM SPR_SI_IO_CLASS');

 if DM.MTable_SPR_SI_IO_CLASS.FieldByName('PRIORITET').AsInteger<>Record_help then
 begin
  Record_help:=DM.MTable_SPR_SI_IO_CLASS.RecNo+1;

  ORDER_DOWN:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID').AsInteger;
  DM.MTable_SPR_SI_IO_CLASS.Next;
  ORDER_UP:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID').AsInteger;

  with DM.DSet_Pablic do
  begin
   Close;
   SelectSQL.Clear;
   UpdateSQL.Clear;
   SelectSQL.Add('select * from SPR_SI_IO_CLASS where ID='+inttostr(ORDER_DOWN));
   UpdateSQL.Add('UPDATE SPR_SI_IO_CLASS');
   UpdateSQL.Add('SET');
   UpdateSQL.Add('PRIORITET = :PRIORITET');
   UpdateSQL.Add('WHERE');
   UpdateSQL.Add('ID = :OLD_ID');
   Open;
   Active:=True;
   Edit;
   FieldByName('PRIORITET').AsInteger:=DM.DSet_Pablic.FieldByName('PRIORITET').AsInteger+1;
   Post;
   Active:=False;
   SelectSQL.Clear;
   SelectSQL.Add('select * from SPR_SI_IO_CLASS where ID='+inttostr(ORDER_UP));
   Open;

   Edit;
   FieldByName('PRIORITET').AsInteger:=DM.DSet_Pablic.FieldByName('PRIORITET').AsInteger-1;
   Post;
   Active:=False;
  end;

  SBROS_CLASS;
  DM.MTable_SPR_SI_IO_CLASS.RecNo:=Record_help;
 end;
end;

procedure TForm4.btn10Click(Sender: TObject);
begin
 edt7.Text:='';
 cbb1.Value:=null;

 Form4.btn9.Enabled:=True;
 Form4.btn8.Enabled:=True;
 DM.MTable_SPR_SI_IO_CLASS.Filter :='';
end;

procedure TForm4.edt7Change(Sender: TObject);
var
 STR_1, STR_2, h_STR, NAME_1, ORDER_2: string;
begin
 if DM.MTable_SPR_SI_IO_CLASS.Active=True then
 begin
  btn9.Enabled:=False;
  btn8.Enabled:=False;

  NAME_1:=AnsiUpperCase(edt7.Text);

  if edt7.Text<>'' then STR_1:= ' AND UPPER(NAME) like '+''''+'%'+NAME_1+'%'+'''' else STR_1:='';
  if cbb1.Value<>null then STR_2:=' and ID_SPR_GROUP_SI_IO = '+IntToStr(cbb1.KeyValue) else STR_2:='';

  h_STR:=STR_1+STR_2;
  Delete(h_STR, 1, 5);
  DM.MTable_SPR_SI_IO_CLASS.Filter := h_STR;
 end;
end;

end.
