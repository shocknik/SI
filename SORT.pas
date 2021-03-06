unit SORT;

interface

uses Forms, Classes, SysUtils, DBCtrlsEh, Windows, Dialogs, Variants;


 procedure SORT_COMMENT;
 procedure FILTER_SI_IO;

implementation

uses
  Lib, Unit1, Unit3, Unit9;


procedure SORT_COMMENT;
var
 h, ZAIAVKA, OTVET: string;
 COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, COMMENT_5, COMMENT_6, COMMENT_7, COMMENT_8, COMMENT_9: string;
begin
 if DM.MTable_COMMENT.Active=True then
 begin
  DM.MTable_COMMENT.Active:=False;
  ZAIAVKA:=AnsiUpperCase(Form9.edt1.Text);
  OTVET:=AnsiUpperCase(Form9.edt4.Text);
  if Form9.cbb3.ItemIndex<>-1 then COMMENT_1:=' AND CREATE_USER like '+chr(39)+'%'+Form9.cbb3.Text+'%'+chr(39) else COMMENT_1:='';
  if Form9.cbb15.ItemIndex<>-1 then COMMENT_2:=' AND PRIORITY like '+chr(39)+'%'+Form9.cbb15.Text+'%'+chr(39) else COMMENT_2:='';
  if Form9.cbb8.ItemIndex<>-1 then COMMENT_3:=' AND STATUS like '+chr(39)+'%'+Form9.cbb8.Text+'%'+chr(39) else COMMENT_3:='';
  if Form9.edt1.Text<>'' then COMMENT_4:=' AND UPPER(ZAYAVKA) like '+chr(39)+'%'+ZAIAVKA+'%'+chr(39) else COMMENT_4:='';
  if Form9.edt4.Text<>'' then COMMENT_5:=' AND UPPER(MESSAGE) like '+chr(39)+'%'+OTVET+'%'+chr(39) else COMMENT_5:='';
  COMMENT_6:=' and COMMENT.CREATE_DATE>'+chr(39)+DateTimeToStr(Form9.edt5.Value)+chr(39);
  COMMENT_7:=' and COMMENT.CREATE_DATE<'+chr(39)+DateTimeToStr(Form9.edt6.Value)+chr(39);
  if Form9.chk1.Checked=True then COMMENT_8:=' and COMMENT.END_DATE>'+chr(39)+DateTimeToStr(Form9.edt2.Value)+chr(39) else COMMENT_8:='';
  if Form9.chk1.Checked=True then COMMENT_9:=' and COMMENT.END_DATE<'+chr(39)+DateTimeToStr(Form9.edt3.Value)+chr(39) else COMMENT_9:='';

  h:=COMMENT_1+COMMENT_2+COMMENT_3+COMMENT_4+COMMENT_5+COMMENT_6+COMMENT_7+COMMENT_8+COMMENT_9;
  if (COMMENT_1<>'') or (COMMENT_2<>'') or (COMMENT_2<>'') or (COMMENT_3<>'') or (COMMENT_4<>'') or (COMMENT_5<>'') or (COMMENT_6<>'') or (COMMENT_7<>'') or (COMMENT_8<>'') or (COMMENT_9<>'') then delete(h, 1, 5);
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
   SelectSQL.Add('where '+h);
   SelectSQL.Add('ORDER BY');
   SelectSQL.Add('COMMENT_IO.CREATE_DATE');
  end;
  DM.MTable_COMMENT.Active:=True;
 end;
end;

procedure FILTER_SI_IO;
var
 h, NAME_1, TYPE_2, N_ZAVOD_3, N_INVENT_4: string;
 STR_1, STR_2, STR_3, STR_4, STR_5, STR_6, STR_7, STR_8, STR_9, STR_10: string;
begin
 if (DM.MTable_SI_IO.Active=True) and (DM.MTable_SI_IO.Filtered=True) then
 begin
  NAME_1:=AnsiUpperCase(Form1.edt42.Text);
  TYPE_2:=AnsiUpperCase(Form1.edt4.Text);
  N_ZAVOD_3:=AnsiUpperCase(Form1.edt3.Text);
  N_INVENT_4:=AnsiUpperCase(Form1.edt47.Text);

  if Form1.edt42.Text<>'' then STR_1:=' and UPPER(NAME) like '+chr(39)+'%'+NAME_1+'%'+chr(39) else STR_1:='';
  if Form1.edt4.Text<>'' then STR_2:=' and UPPER(TYPE_SI_IO) like '+chr(39)+'%'+TYPE_2+'%'+chr(39) else STR_2:='';
  if Form1.cbb1.Value<>null then STR_3:=' and ID_SPR_GROUP_SI_IO='+IntToStr(Form1.cbb1.KeyValue) else STR_3:='';
  if Form1.cbb4.Value<>null then STR_4:=' and ID_SPR_SI_IO_CLASS='+IntToStr(Form1.cbb4.KeyValue) else STR_4:='';
  if Form1.cbb2.Value<>null then STR_5:=' and ID_USER='+IntToStr(Form1.cbb2.KeyValue) else STR_5:='';
  if Form1.edt3.Text<>'' then STR_6:=' and UPPER(N_ZAVOD) like '+chr(39)+'%'+N_ZAVOD_3+'%'+chr(39) else STR_6:='';
  if Form1.edt4.Text<>'' then STR_7:=' and UPPER(N_INVENT) like '+chr(39)+'%'+N_INVENT_4+'%'+chr(39) else STR_7:='';
  if Form1.cbb3.Value<>null then
  begin
    if Form1.cbb3.KeyValue = 6 then STR_8:='' else STR_8:=' and ID_SPR_STATUS_SI_IO = '+IntToStr(Form1.cbb3.KeyValue);
  end
  else  STR_8:='';
  if Form1.chkdbchckbxh3.Checked=True then STR_9:=' and DATE_POVERKA_NEXT>'+chr(39)+DateTimeToStr(Form1.edt15.Value)+chr(39) else STR_9:='';
  if Form1.chkdbchckbxh3.Checked=True then STR_10:=' and DATE_POVERKA_NEXT<'+chr(39)+DateTimeToStr(Form1.edt15.Value)+chr(39) else STR_10:='';

  h:=STR_1+STR_2+STR_3+STR_4+STR_5+STR_6+STR_7+STR_8+STR_9+STR_10;
  Delete(h, 1, 5);
  DM.MTable_SI_IO.Filter := h;
 end;
end;


end.
