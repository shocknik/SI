unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DBLookupEh, DBCtrlsEh, StdCtrls, Buttons, Mask,
  ExtCtrls;

type
  TForm13 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn3: TBitBtn;
    btn4: TBitBtn;
    grp3: TGroupBox;
    grp1: TGroupBox;
    edtDATE1: TDBDateTimeEditEh;
    edtNUM_ATTESTAT3: TDBEditEh;
    edtNUM_ATTESTAT4: TDBEditEh;
    edtNUM_ATTESTAT5: TDBEditEh;
    edtADR_JURID: TDBEditEh;
    grp2: TGroupBox;
    edtADR_MAIL: TDBEditEh;
    edtKONT_FAICE: TDBEditEh;
    edtTEL_KONT: TDBEditEh;
    edtFAX: TDBEditEh;
    edtE_MAIL: TDBEditEh;
    edtTEL_BUCH1: TDBEditEh;
    edtTEL_BUCH: TDBEditEh;
    edtINN: TDBEditEh;
    edtKPP: TDBEditEh;
    chkSI_IO: TDBCheckBoxEh;
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  KONTRAGENT_Otmena: array[1..13] of string;
  DATE_Otmena: TDateTime;
  SI_IO_Otmena: Boolean;

implementation

uses Lib, SBROS, Unit3, Unit1;

{$R *.dfm}

procedure TForm13.btn3Click(Sender: TObject);
begin
 if INSERT_BOOLEAN=True then  DM.MTable_KONTRAGENT.Delete;

 if (UPDATE_BOOLEAN=True) and (DM.MTable_KONTRAGENT.Modified) then
 begin
  DM.MTable_KONTRAGENT.FieldByName('DATE1').AsDateTime:=DATE_Otmena;
  DM.MTable_KONTRAGENT.FieldByName('SNAME').AsString:=KONTRAGENT_Otmena[1];
  DM.MTable_KONTRAGENT.FieldByName('NAME').AsString:=KONTRAGENT_Otmena[2];
  DM.MTable_KONTRAGENT.FieldByName('NAME_REG').AsString:=KONTRAGENT_Otmena[3];
  DM.MTable_KONTRAGENT.FieldByName('ADR_JURID').AsString:=KONTRAGENT_Otmena[4];
  DM.MTable_KONTRAGENT.FieldByName('ADR_MAIL').AsString:=KONTRAGENT_Otmena[5];
  DM.MTable_KONTRAGENT.FieldByName('E_MAIL').AsString:=KONTRAGENT_Otmena[6];
  DM.MTable_KONTRAGENT.FieldByName('KONT_FAICE').AsString:=KONTRAGENT_Otmena[7];
  DM.MTable_KONTRAGENT.FieldByName('TEL_KONT').AsString:=KONTRAGENT_Otmena[8];
  DM.MTable_KONTRAGENT.FieldByName('TEL_RUKOV').AsString:=KONTRAGENT_Otmena[9];
  DM.MTable_KONTRAGENT.FieldByName('FAX').AsString:=KONTRAGENT_Otmena[10];
  DM.MTable_KONTRAGENT.FieldByName('TEL_BUCH').AsString:=KONTRAGENT_Otmena[11];
  DM.MTable_KONTRAGENT.FieldByName('INN').AsString:=KONTRAGENT_Otmena[12];
  DM.MTable_KONTRAGENT.FieldByName('KPP').AsString:=KONTRAGENT_Otmena[13];
  DM.MTable_KONTRAGENT.FieldByName('SI_IO').AsBoolean:=SI_IO_Otmena;

  DM.MTable_KONTRAGENT.Post;
 end;

 SBROS_KONTRAGENT;
 Close;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 INSERT_BOOLEAN:=False;
 UPDATE_BOOLEAN:=False;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
 Form1.il1.GetBitmap(0, btn4.Glyph);
 Form1.il2.GetBitmap(0, btn3.Glyph);
 DATE_Otmena:=DM.MTable_KONTRAGENT.FieldByName('DATE1').AsDateTime;
 KONTRAGENT_Otmena[1]:=DM.MTable_KONTRAGENT.FieldByName('SNAME').AsString;
 KONTRAGENT_Otmena[2]:=DM.MTable_KONTRAGENT.FieldByName('NAME').AsString;
 KONTRAGENT_Otmena[3]:=DM.MTable_KONTRAGENT.FieldByName('NAME_REG').AsString;
 KONTRAGENT_Otmena[4]:=DM.MTable_KONTRAGENT.FieldByName('ADR_JURID').AsString;
 KONTRAGENT_Otmena[5]:=DM.MTable_KONTRAGENT.FieldByName('ADR_MAIL').AsString;
 KONTRAGENT_Otmena[6]:=DM.MTable_KONTRAGENT.FieldByName('E_MAIL').AsString;
 KONTRAGENT_Otmena[7]:=DM.MTable_KONTRAGENT.FieldByName('KONT_FAICE').AsString;
 KONTRAGENT_Otmena[8]:=DM.MTable_KONTRAGENT.FieldByName('TEL_KONT').AsString;
 KONTRAGENT_Otmena[9]:=DM.MTable_KONTRAGENT.FieldByName('TEL_RUKOV').AsString;
 KONTRAGENT_Otmena[10]:=DM.MTable_KONTRAGENT.FieldByName('FAX').AsString;
 KONTRAGENT_Otmena[11]:=DM.MTable_KONTRAGENT.FieldByName('TEL_BUCH').AsString;
 KONTRAGENT_Otmena[12]:=DM.MTable_KONTRAGENT.FieldByName('INN').AsString;
 KONTRAGENT_Otmena[13]:=DM.MTable_KONTRAGENT.FieldByName('KPP').AsString;
 SI_IO_Otmena:=DM.MTable_KONTRAGENT.FieldByName('SI_IO').AsBoolean;
end;

procedure TForm13.btn4Click(Sender: TObject);
begin
 if INSERT_BOOLEAN=True then
 begin
  if edtNUM_ATTESTAT3.Text='' then
  begin
   MessageDlg('?????? ???????? ?????? ??????', mtInformation, [mbOk], 0);
  end
  else
  begin
   DM.MTable_KONTRAGENT.Post;
   Close;
  end;
 end;

 if UPDATE_BOOLEAN=True then
 begin
  if DM.MTable_KONTRAGENT.Modified=True then DM.MTable_KONTRAGENT.Post;
  Close;
 end;
 DM.DSet_KONTRAGENT_LOOK.Active:=False;
 DM.DSet_KONTRAGENT_LOOK.Active:=True;
 
 SBROS_KONTRAGENT;
end;

end.
 