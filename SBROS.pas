unit SBROS;

interface

uses Forms, Classes, SysUtils, DBCtrlsEh, Windows, Dialogs, Messages, Variants;

procedure SBROS_COMMENT;
procedure SBROS_SPR_GROUP_SI_IO;
procedure SBROS_USER_SI_IO;
procedure SBROS_SI_IO;
procedure SBROS_KONTRAGENT;
procedure SBROS_CLASS;

implementation

uses
  Lib, ZAPROS_SELECT, Unit1, Unit3, Unit4, Unit6, Unit9;

procedure SBROS_SPR_GROUP_SI_IO;
begin
 DM.MTable_SPR_GROUP_SI_IO.Active:=False;
 Form4.edt1.Text:='';

 with DM.DSet_SPR_GROUP_SI_IO do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('SPR_GROUP_SI_IO.ID,');
  SelectSQL.Add('SPR_GROUP_SI_IO.NAME');
  SelectSQL.Add('FROM');
  SelectSQL.Add('SPR_GROUP_SI_IO SPR_GROUP_SI_IO');
  Open;
 end;
 DM.MTable_SPR_GROUP_SI_IO.Active:=True;
end;

procedure SBROS_USER_SI_IO;
begin
 DM.MTable_USER_SI_IO.Active:=False;

 with Form6 do
 begin
  edt1.Text:='';
  edt2.Text:='';
  edt3.Text:='';
 end;

 with DM.DSet_USER_SI_IO do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('USER1.ID,');
  SelectSQL.Add('USER1.ID_PARENT,');
  SelectSQL.Add('USER1.DATA,');
  SelectSQL.Add('USER1.FAMILIE,');
  SelectSQL.Add('USER1.NAME,');
  SelectSQL.Add('USER1.OTCHEST,');
  SelectSQL.Add('USER1.FIO,');
  SelectSQL.Add('USER1.LOGIN_NAME,');
  SelectSQL.Add('USER1.PRIZ_SI_IO,');
  SelectSQL.Add('SPR_PRIVILEG_SI_IO.NAME');
  SelectSQL.Add('FROM');
  SelectSQL.Add('USER1 USER1');
  SelectSQL.Add('LEFT OUTER JOIN SPR_PRIVILEG_SI_IO ON USER1.PRIZ_SI_IO = SPR_PRIVILEG_SI_IO.ID');
  SelectSQL.Add('WHERE USER1.FIO is not Null');
  SelectSQL.Add('ORDER BY USER1.FIO');
  Open;
 end;

 DM.MTable_USER_SI_IO.Active:=True;
end;

procedure SBROS_SI_IO;
var
 Record_ID: Integer;
begin
 Record_ID:=DM.MTable_SI_IO.FieldByName('ID').AsInteger;

 DM.MTable_SI_IO.Active:=False;

 with Form1 do
 begin
  edt42.Text:='';
  edt4.Text:='';
  edt3.Text:='';
  edt47.Text:='';
  cbb1.Value:=null;
  cbb4.Value:=null;
  edt1.Text:='';
  cbb2.Value:=null;
  cbb3.KeyValue:=6;

  chkdbchckbxh3.Checked:=False;
  edt15.Value:=lib.GetServerDate-30;
  edt16.Value:=lib.GetServerDate+1;
 end;

 ZAPROS_SI_IO;
 if User_PRIZ='Ответственный' then
 begin
  DM.DSet_SI_IO.SelectSQL.Add('Where SPR_SI_IO.ID_USER='+IntToStr(ID_USER_GLOBAL));
 end;
               
 if User_PRIZ='Сотрудник лаборатории' then
 begin
  DM.DSet_SI_IO.SelectSQL.Add('Where SPR_SI_IO.ID_USER=209');
 end;

 if Form1.N16.Checked=True then DM.DSet_SI_IO.SelectSQL.Add('ORDER BY SPR_SI_IO.DATE_POVERKA_NEXT') else DM.DSet_SI_IO.SelectSQL.Add('ORDER BY SPR_SI_IO.NAME');
 DM.MTable_SI_IO.Filter:='';
 DM.MTable_SI_IO.Active:=True;
 DM.MTable_SI_IO.Filtered:=True;
 DM.MTable_SI_IO.Locate('ID', Record_ID,[]);
end;


procedure SBROS_COMMENT;
begin
 DM.MTable_COMMENT.Active:=False;
 Form9.cbb3.ItemIndex:=-1;
 Form9.cbb15.ItemIndex:=-1;
 Form9.cbb8.ItemIndex:=-1;
 Form9.edt1.Text:='';
 Form9.edt4.Text:='';
 Form9.edt2.Value:='19.03.2019';
 Form9.edt3.Value:=Date+1;
 Form9.chk1.Checked:=False;
 Form9.chk2.Checked:=False;
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
  SelectSQL.Add('where (COMMENT_IO.STATUS='+chr(39)+'В работе'+chr(39)+') or (COMMENT_IO.STATUS='+chr(39)+'Выставлена'+chr(39)+') or (COMMENT_IO.STATUS='+chr(39)+'На доработке'+chr(39)+')');
  SelectSQL.Add('ORDER BY');
  SelectSQL.Add('COMMENT_IO.CREATE_DATE');
 end;
 DM.MTable_COMMENT.Active:=True;
end;

procedure SBROS_KONTRAGENT;
begin
 DM.MTable_KONTRAGENT.Active:=False;
 Form4.edt42.Text:='';
 Form4.edt2.Text:='';
 Form4.edt6.Text:='';
 Form4.edt5.Text:='';
 Form4.edt4.Text:='';
 Form4.edt3.Text:='';
 Form4.edt8.Text:='';
 Form4.chk1.Checked:=False;

 with DM.DSet_KONTRAGENT do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('KONTRAGENT.ID,');
  SelectSQL.Add('KONTRAGENT.DATE1,');
  SelectSQL.Add('KONTRAGENT.SNAME,');
  SelectSQL.Add('KONTRAGENT.NAME,');
  SelectSQL.Add('KONTRAGENT.ID_REGION,');
  SelectSQL.Add('KONTRAGENT.NAME_REG,');
  SelectSQL.Add('KONTRAGENT.ADR_MAIL,');
  SelectSQL.Add('KONTRAGENT.ADR_JURID,');
  SelectSQL.Add('KONTRAGENT.KONT_FAICE,');
  SelectSQL.Add('KONTRAGENT.TEL_KONT,');
  SelectSQL.Add('KONTRAGENT.TEL_BUCH,');
  SelectSQL.Add('KONTRAGENT.TEL_RUKOV,');
  SelectSQL.Add('KONTRAGENT.FAX,');
  SelectSQL.Add('KONTRAGENT.E_MAIL,');
  SelectSQL.Add('KONTRAGENT.ID_USER1,');
  SelectSQL.Add('KONTRAGENT.PRIM,');
  SelectSQL.Add('KONTRAGENT.PRIZ1,');
  SelectSQL.Add('KONTRAGENT.PRIZ_2,');
  SelectSQL.Add('KONTRAGENT.INN,');
  SelectSQL.Add('KONTRAGENT.KPP,');
  SelectSQL.Add('KONTRAGENT.SI_IO');
  SelectSQL.Add('FROM');
  SelectSQL.Add('KONTRAGENT KONTRAGENT');
 end;
 DM.MTable_KONTRAGENT.Active:=True;
end;

procedure SBROS_CLASS;
begin
 DM.MTable_SPR_SI_IO_CLASS.Active:=False;
 DM.MTable_SPR_SI_IO_CLASS.Filtered:=False;
 DM.MTable_SPR_SI_IO_CLASS.Filter :='';

 Form4.btn8.Enabled:=True;
 Form4.btn9.Enabled:=True;

 Form4.edt7.Text:='';
 Form4.cbb1.Value:=null;

 with DM.DSet_SPR_SI_IO_CLASS do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('SPR_SI_IO_CLASS.ID,');
  SelectSQL.Add('SPR_SI_IO_CLASS.NAME,');
  SelectSQL.Add('SPR_SI_IO_CLASS.PRIORITET,');
  SelectSQL.Add('SPR_SI_IO_CLASS.ID_SPR_GROUP_SI_IO,');
  SelectSQL.Add('SPR_GROUP_SI_IO.NAME as GROUP_NAME');
  SelectSQL.Add('FROM');
  SelectSQL.Add('SPR_SI_IO_CLASS SPR_SI_IO_CLASS');
  SelectSQL.Add('LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO_CLASS.ID_SPR_GROUP_SI_IO = SPR_GROUP_SI_IO.ID');
  SelectSQL.Add('ORDER BY PRIORITET');
 end;

 DM.MTable_SPR_SI_IO_CLASS.Active:=True;
 DM.MTable_SPR_SI_IO_CLASS.Filtered:=True;
end;

end.
