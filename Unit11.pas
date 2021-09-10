unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, StdCtrls, Mask, Buttons, ExtCtrls, DBGridEh,
  DBLookupEh, DBCtrls;

type
  TForm11 = class(TForm)
    pnl1: TPanel;
    btn3: TBitBtn;
    btn4: TBitBtn;
    grp3: TGroupBox;
    edtLAST_DATE: TDBDateTimeEditEh;
    edtNEXT_DATE: TDBDateTimeEditEh;
    edtCERTIFICATE_NUMBER: TDBEditEh;
    edtPATH: TDBEditEh;
    dlgOpen1: TOpenDialog;
    cbbID_KONTRAGENT: TDBLookupComboboxEh;
    pnl2: TPanel;
    lbl1: TLabel;
    grp1: TGroupBox;
    edtDATE_POVERKA_NEXT: TDBDateTimeEditEh;
    edtN_ATTESTAT: TDBEditEh;
    dbtxtTYPE_SI_IO: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn4Click(Sender: TObject);
    procedure edtPATHEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  POVERKA_Otmena_KONTRAGENT: Integer;
  POVERKA_Otmena_DATE: array[1..3] of TDate;
  POVERKA_Otmena_NUM_ACCOUNT: string;
  POVERKA_Otmena_NUM_ATTESTAT: string;
  POVERKA_Otmena_PATH: AnsiString;

implementation

uses

Lib, SBROS, VALUE, Unit3;

{$R *.dfm}

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Insert_Boolean:=False;
 UPDATE_Boolean:=False;
end;

procedure TForm11.btn4Click(Sender: TObject);
begin
 if DM.MTable_POVERKA.Modified=True then
 begin
  DM.MTable_POVERKA.Post;
  DM.MTable_SI_IO.Edit;
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_NEXT').AsDateTime:=DM.MTable_POVERKA.FieldByName('DATE_NEXT_POVERKA').AsDateTime;
  DM.MTable_SI_IO.FieldByName('DATE_POVERKA_LAST').AsDateTime:=DM.MTable_POVERKA.FieldByName('DATE_POVERKA').AsDateTime;
  DM.MTable_SI_IO.FieldByName('N_ATTESTAT').AsString:=DM.MTable_POVERKA.FieldByName('NUM_ATTESTAT').AsString;
  DM.MTable_SI_IO.Post;
  SBROS_SI_IO;
 end;
 Close;
end;

procedure TForm11.edtPATHEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 if dlgOpen1.Execute=True then edtPATH.Text:=dlgOpen1.FileName;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
 POVERKA_Otmena_KONTRAGENT:=DM.MTable_POVERKA.FieldByName('ID_KONTRAGENT').AsInteger;
 POVERKA_Otmena_DATE[1]:=DM.MTable_POVERKA.FieldByName('DATE_POVERKA').AsDateTime;
 POVERKA_Otmena_DATE[2]:=DM.MTable_POVERKA.FieldByName('DATE_NEXT_POVERKA').AsDateTime;
 POVERKA_Otmena_DATE[3]:=DM.MTable_POVERKA.FieldByName('DATE_ACCOUNT').AsDateTime;
 POVERKA_Otmena_NUM_ACCOUNT:=DM.MTable_POVERKA.FieldByName('NUM_ACCOUNT').AsString;
 POVERKA_Otmena_NUM_ATTESTAT:=DM.MTable_POVERKA.FieldByName('NUM_ATTESTAT').AsString;
 POVERKA_Otmena_PATH:=DM.MTable_POVERKA.FieldByName('PATH').AsString;
end;

procedure TForm11.btn3Click(Sender: TObject);
begin
 if Insert_Boolean=True then  DM.MTable_POVERKA.Delete;

 if (UPDATE_Boolean=True) and (DM.MTable_POVERKA.Modified) then
 begin
  DM.MTable_POVERKA.FieldByName('ID_KONTRAGENT').AsInteger:=POVERKA_Otmena_KONTRAGENT;
  DM.MTable_POVERKA.FieldByName('DATE_POVERKA').AsDateTime:=POVERKA_Otmena_DATE[1];
  DM.MTable_POVERKA.FieldByName('DATE_NEXT_POVERKA').AsDateTime:=POVERKA_Otmena_DATE[2];
  DM.MTable_POVERKA.FieldByName('DATE_ACCOUNT').AsDateTime:=POVERKA_Otmena_DATE[3];
  DM.MTable_POVERKA.FieldByName('NUM_ACCOUNT').AsString:=POVERKA_Otmena_NUM_ACCOUNT;
  DM.MTable_POVERKA.FieldByName('NUM_ATTESTAT').AsString:=POVERKA_Otmena_NUM_ATTESTAT;
  DM.MTable_POVERKA.FieldByName('PATH').AsString:=POVERKA_Otmena_PATH;

  DM.MTable_POVERKA.Post;
 end;
 
 VALUE_POVERKA;
 Close;
end;

end.
