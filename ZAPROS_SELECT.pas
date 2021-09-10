unit ZAPROS_SELECT;

Interface

uses Forms, Classes, SysUtils, DBCtrlsEh, Windows, Dialogs, Messages, Variants;

procedure ZAPROS_SI_IO;


implementation

uses
 SBROS, Lib, Unit1, Unit3;

procedure ZAPROS_SI_IO;
begin
 with DM.DSet_SI_IO do
 begin
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('SPR_SI_IO.ID,');
  SelectSQL.Add('SPR_SI_IO.NAME,');
  SelectSQL.Add('SPR_SI_IO.TYPE_SI_IO,');
  SelectSQL.Add('SPR_SI_IO.CLASS,');
  SelectSQL.Add('SPR_SI_IO.RANGE_IZMER,');
  SelectSQL.Add('SPR_SI_IO.WATT,');
  SelectSQL.Add('SPR_SI_IO.PRICE_WORK,');
  SelectSQL.Add('SPR_SI_IO.IP,');
  SelectSQL.Add('SPR_SI_IO.N_ZAVOD,');
  SelectSQL.Add('SPR_SI_IO.N_INVENT,');
  SelectSQL.Add('SPR_SI_IO.DATE_PRO,');
  SelectSQL.Add('SPR_SI_IO.DATE_VVOD,');
  SelectSQL.Add('SPR_SI_IO.DATE_POVERKA_FIRST,');
  SelectSQL.Add('SPR_SI_IO.DATE_POVERKA_NEXT,');
  SelectSQL.Add('SPR_SI_IO.DATE_POVERKA_LAST,');
  SelectSQL.Add('SPR_SI_IO.N_ATTESTAT,');
  SelectSQL.Add('SPR_SI_IO.CORRECT,');
  SelectSQL.Add('SPR_SI_IO.ID_SPR_OTDEL,');
  SelectSQL.Add('SPR_SI_IO.ID_USER,');
  SelectSQL.Add('SPR_SI_IO.ID_SPR_GROUP_SI_IO,');
  SelectSQL.Add('SPR_SI_IO.DATE_POVERKA_PERIOD,');
  SelectSQL.Add('SPR_SI_IO.ID_SPR_STATUS_SI_IO,');
  SelectSQL.Add('SPR_SI_IO.DATE_OUT,');
  SelectSQL.Add('SPR_SI_IO.ID_USER_OUT,');
  SelectSQL.Add('SPR_SI_IO.ID_SPR_SI_IO_CLASS,');
  SelectSQL.Add('SPR_SI_IO.PRIM,');
  SelectSQL.Add('USER_FIO.FIO as USER_FIO_SI_IO,');
  SelectSQL.Add('USER_FIO_OUT.FIO as USER_FIO_OUT,');
  SelectSQL.Add('SPR_GROUP_SI_IO.NAME,');
  SelectSQL.Add('SPR_STATUS_SI_IO.NAME as SPR_STATUS_SI_IO_NAME,');
  SelectSQL.Add('SPR_SI_IO_CLASS.NAME as CLASS_NAME');
  SelectSQL.Add('FROM');
  SelectSQL.Add('SPR_SI_IO SPR_SI_IO');
  SelectSQL.Add('LEFT OUTER JOIN USER1 USER_FIO ON SPR_SI_IO.ID_USER = USER_FIO.ID');
  SelectSQL.Add('LEFT OUTER JOIN USER1 USER_FIO_OUT ON SPR_SI_IO.ID_USER_OUT = USER_FIO_OUT.ID');
  SelectSQL.Add('LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO.ID_SPR_GROUP_SI_IO = SPR_GROUP_SI_IO.ID');
  SelectSQL.Add('LEFT OUTER JOIN SPR_STATUS_SI_IO ON SPR_SI_IO.ID_SPR_STATUS_SI_IO = SPR_STATUS_SI_IO.ID');
  SelectSQL.Add('LEFT OUTER JOIN SPR_SI_IO_CLASS ON SPR_SI_IO.ID_SPR_SI_IO_CLASS =SPR_SI_IO_CLASS.ID');
 end;
end;





end.

