unit VALUE;

interface

uses Forms, Classes, SysUtils, DBCtrlsEh, Windows, Dialogs, Messages;

procedure VALUE_COMMENT;
procedure VALUE_REMONT;
procedure VALUE_POVERKA;

implementation

uses
  Lib, Unit1, Unit3, Unit9;

procedure VALUE_COMMENT;
begin
 if (Lib.User_PRIZ<>'�������������') and (DM.MTable_COMMENT.FieldByName('CREATE_USER').AsString<>User_FIO) then
 begin
  Form9.btn41.Enabled:=False;
  Form9.btn42.Enabled:=False;
 end
 else
 begin
  Form9.btn41.Enabled:=True;
  Form9.btn42.Enabled:=True;
 end;
end;

procedure VALUE_REMONT;
begin
 if (DM.MTable_REMONT.Active=True) and (DM.MTable_SI_IO.Active=true) then
 begin
  DM.MTable_REMONT.Active:=False;
  with DM.DSet_REMONT do
  begin
   SelectSQL.Clear;
   SelectSQL.Add('SELECT');
   SelectSQL.Add('SI_IO_REMONT.ID,');
   SelectSQL.Add('SI_IO_REMONT.ID_SPR_SI_IO,');
   SelectSQL.Add('SI_IO_REMONT.DATE_DEFEKT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_START_REMONT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_END_REMONT,');
   SelectSQL.Add('SI_IO_REMONT.ID_KONTRAGENT,');
   SelectSQL.Add('SI_IO_REMONT.NUM_ACCOUNT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_ACCOUNT,');
   SelectSQL.Add('SI_IO_REMONT.PRIM');
   SelectSQL.Add('FROM');
   SelectSQL.Add('SI_IO_REMONT SI_IO_REMONT');
   SelectSQL.Add('LEFT OUTER JOIN KONTRAGENT ON SI_IO_REMONT.ID_KONTRAGENT = KONTRAGENT.ID');
   SelectSQL.Add('where ID_SPR_SI_IO='+IntToStr(DM.MTable_SI_IO.FieldByName('ID').AsInteger));
   SelectSQL.Add('ORDER BY DATE_DEFEKT');
  end;
  DM.MTable_REMONT.Active:=True;
 end;
end;

procedure VALUE_POVERKA;
begin
 if (DM.MTable_POVERKA.Active=True) and (DM.MTable_SI_IO.Active=true) then
 begin
  DM.MTable_POVERKA.Active:=False;
  with DM.DSet_POVERKA do
  begin
   SelectSQL.Clear;
   SelectSQL.Add('SELECT');
   SelectSQL.Add('SI_IO_POVERKA.ID,');
   SelectSQL.Add('SI_IO_POVERKA.ID_SPR_SI_IO,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_POVERKA,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_NEXT_POVERKA,');
   SelectSQL.Add('SI_IO_POVERKA.NUM_ATTESTAT,');
   SelectSQL.Add('SI_IO_POVERKA.ID_KONTRAGENT,');
   SelectSQL.Add('SI_IO_POVERKA.NUM_ACCOUNT,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_ACCOUNT,');
   SelectSQL.Add('SI_IO_POVERKA.PATH,');
   SelectSQL.Add('SPR_SI_IO.NAME,');
   SelectSQL.Add('KONTRAGENT.SNAME');
   SelectSQL.Add('FROM');
   SelectSQL.Add('SI_IO_POVERKA SI_IO_POVERKA');
   SelectSQL.Add('LEFT OUTER JOIN SPR_SI_IO ON SI_IO_POVERKA.ID_SPR_SI_IO = SPR_SI_IO.ID');
   SelectSQL.Add('LEFT OUTER JOIN KONTRAGENT ON SI_IO_POVERKA.ID_KONTRAGENT = KONTRAGENT.ID');
   SelectSQL.Add('where ID_SPR_SI_IO='+IntToStr(DM.MTable_SI_IO.FieldByName('ID').AsInteger));
   SelectSQL.Add('ORDER BY DATE_POVERKA DESC');
  end;
  DM.MTable_POVERKA.Active:=True;
 end;
end;







end.
