unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls, DBGridEh,
  DBLookupEh;

type
  TForm2 = class(TForm)
    pnl2: TPanel;
    grp2: TGroupBox;
    lbl9: TLabel;
    grp3: TGroupBox;
    edtCHECK_PERIOD: TDBEditEh;
    edtLAST_DATE: TDBDateTimeEditEh;
    edtNEXT_DATE: TDBDateTimeEditEh;
    edtCERTIFICATE_NUMBER: TDBEditEh;
    edtFIRST_DATE: TDBDateTimeEditEh;
    pnl1: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    grp1: TGroupBox;
    edtFACTORY_NUMBER: TDBEditEh;
    edtINVENTORY_NUMBER: TDBEditEh;
    edtYEAR_OF_ENTRY: TDBDateTimeEditEh;
    edtYEAR_OF_PRODUCTION: TDBDateTimeEditEh;
    dbmhTYPE_SI_IO: TDBMemoEh;
    cbbID_USER: TDBLookupComboboxEh;
    cbbNAME: TDBLookupComboboxEh;
    edt1: TDBEditEh;
    cbbID_SPR_SI_IO_CLASS: TDBLookupComboboxEh;
    dbmhTYPE_SI_IO1: TDBMemoEh;
    edt2: TDBEditEh;
    dbmhTYPE_SI_IO2: TDBMemoEh;
    dbmhRANGE_IZMER: TDBMemoEh;
    dbmhRANGE_IZMER1: TDBMemoEh;
    edtWATT: TDBNumberEditEh;
    edtPRICE_WORK: TDBNumberEditEh;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn3Click(Sender: TObject);
    procedure cbbNAMEExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  WATT_Otmena: Real;
  SI_IO_Otmena: array[1..4] of string;
  SI_IO_Otmena_Time: array [1..5] of TDateTime;
  SI_IO_Otmena_Ansi: array [1..6] of AnsiString;
  SI_IO_Otmena_INT: array [1..4] of Integer;


implementation

uses Lib, SBROS, Unit3, Unit1;

{$R *.dfm}

procedure TForm2.btn2Click(Sender: TObject);
var
 Record_help: Integer;
begin
 Record_help:=DM.MTable_SI_IO.FieldByName('ID').AsInteger;
 //if INSERT_BOOLEAN=True then DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=3;
 //if (INSERT_BOOLEAN=True) and (GetServerCount(DM.MTable_SI_IO.FieldByName('ID')) = 0) then  DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=3;

  //if (DM.MTable_SI_IO.FieldByName('ID_SPR_STATUS_SI_IO').AsInteger=3) and (DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime<DATE_GLOBAL+31) then Brush.Color:= RGB(255,172,90)


 if DM.MTable_SI_IO.Modified=True then DM.MTable_SI_IO.Post;
 SBROS_SI_IO;
 DM.MTable_SI_IO.Last;
 DM.MTable_SI_IO.Locate('ID', IntToStr(Record_help),[]);
 Form2.Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
 Form1.il2.GetBitmap(2, btn2.Glyph);
 Form1.il2.GetBitmap(0, btn3.Glyph);
 
 WATT_Otmena:=DM.MTable_SI_IO.FieldByName('WATT').AsFloat;

 SI_IO_Otmena[1]:=DM.MTable_SI_IO.FieldByName('CLASS').AsString;
 SI_IO_Otmena[2]:=DM.MTable_SI_IO.FieldByName('IP').AsString;
 SI_IO_Otmena[3]:=DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString;
 SI_IO_Otmena[4]:=DM.MTable_SI_IO.FieldByName('N_INVENT').AsString;

 SI_IO_Otmena_Time[1]:=DM.MTable_SI_IO.FieldByName('DATE_PRO').AsDateTime;
 SI_IO_Otmena_Time[2]:=DM.MTable_SI_IO.FieldByName('DATE_VVOD').AsDateTime;
 SI_IO_Otmena_Time[3]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_FIRST').AsDateTime;
 SI_IO_Otmena_Time[4]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime;
 SI_IO_Otmena_Time[5]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime;

 SI_IO_Otmena_Ansi[1]:=DM.MTable_SI_IO.FieldByName('NAME').AsString;
 SI_IO_Otmena_Ansi[2]:=DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString;
 SI_IO_Otmena_Ansi[3]:=DM.MTable_SI_IO.FieldByName('RANGE_IZMER').AsString;
 SI_IO_Otmena_Ansi[4]:=DM.MTable_SI_IO.FieldByName('CORRECT').AsString;
 SI_IO_Otmena_Ansi[5]:=DM.MTable_SI_IO.FieldByName('N_ATTESTAT').AsString;
 SI_IO_Otmena_Ansi[6]:=DM.MTable_SI_IO.FieldByName('PRIM').AsString;

 SI_IO_Otmena_INT[1]:=DM.MTable_SI_IO.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger;
 SI_IO_Otmena_INT[2]:=DM.MTable_SI_IO.FieldByName('ID_SPR_OTDEL').AsInteger;
 SI_IO_Otmena_INT[3]:=DM.MTable_SI_IO.FieldByName('ID_USER').AsInteger;
 SI_IO_Otmena_INT[4]:=DM.MTable_SI_IO.FieldByName('DATE_POVERKA_PERIOD').AsInteger;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 INSERT_BOOLEAN:=False;
 UPDATE_BOOLEAN:=False;
 DM.MTable_SPR_SI_IO_CLASS.Filter:='';
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
 if INSERT_BOOLEAN=True then  DM.MTable_SI_IO.Delete;

 if (UPDATE_BOOLEAN=True) and (DM.MTable_SI_IO.Modified) then
 begin
  DM.MTable_SI_IO.FieldByName('WATT').AsFloat:=WATT_Otmena;

  DM.MTable_SI_IO.FieldByName('CLASS').AsString:=SI_IO_Otmena[1];
  DM.MTable_SI_IO.FieldByName('IP').AsString:=SI_IO_Otmena[2];
  DM.MTable_SI_IO.FieldByName('N_ZAVOD').AsString:=SI_IO_Otmena[3];
  DM.MTable_SI_IO.FieldByName('N_INVENT').AsString:=SI_IO_Otmena[4];

  DM.MTable_SI_IO.FieldByName('DATE_PRO').AsDateTime:=SI_IO_Otmena_Time[1];
  DM.MTable_SI_IO.FieldByName('DATE_VVOD').AsDateTime:=SI_IO_Otmena_Time[2];
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_FIRST').AsDateTime:=SI_IO_Otmena_Time[3];
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime:=SI_IO_Otmena_Time[4];
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime:=SI_IO_Otmena_Time[5];

  DM.MTable_SI_IO.FieldByName('NAME').AsString:=SI_IO_Otmena_Ansi[1];
  DM.MTable_SI_IO.FieldByName('TYPE_SI_IO').AsString:=SI_IO_Otmena_Ansi[2];
  DM.MTable_SI_IO.FieldByName('RANGE_IZMER').AsString:=SI_IO_Otmena_Ansi[3];
  DM.MTable_SI_IO.FieldByName('CORRECT').AsString:=SI_IO_Otmena_Ansi[4];
  DM.MTable_SI_IO.FieldByName('N_ATTESTAT').AsString:=SI_IO_Otmena_Ansi[5];
  DM.MTable_SI_IO.FieldByName('PRIM').AsString:=SI_IO_Otmena_Ansi[6];

  DM.MTable_SI_IO.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger:=SI_IO_Otmena_INT[1];
  DM.MTable_SI_IO.FieldByName('ID_SPR_OTDEL').AsInteger:=SI_IO_Otmena_INT[2];
  DM.MTable_SI_IO.FieldByName('ID_USER').AsInteger:=SI_IO_Otmena_INT[3];
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_PERIOD').AsInteger:=SI_IO_Otmena_INT[4];

  DM.MTable_SI_IO.Post;
 end;
 
 SBROS_SI_IO;
 Close;
end;

procedure TForm2.cbbNAMEExit(Sender: TObject);
begin
 if DM.MTable_SPR_SI_IO_CLASS.Active= True then
 begin
  DM.MTable_SPR_SI_IO_CLASS.Filter:='ID_SPR_GROUP_SI_IO='+IntToStr(cbbNAME.KeyValue);
 end;
end;

end.
