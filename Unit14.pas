unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Buttons, DBLookupEh, Mask, DBCtrlsEh;

type
  TForm14 = class(TForm)
    btn1: TBitBtn;
    btn2: TBitBtn;
    cbbID_SPR_GROUP_SI_IO: TDBLookupComboboxEh;
    edtNAME: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  Form14: TForm14;
  Otmena_NAME: String;
  Otmena_ID_SPR_GROUP_SI_IO: Integer;

implementation

uses lib, SBROS, Unit1, Unit3;

{$R *.dfm}

procedure TForm14.FormShow(Sender: TObject);
begin
 Form1.il1.GetBitmap(0, btn1.Glyph);
 Form1.il2.GetBitmap(0, btn2.Glyph);

 if UPDATE_BOOLEAN=True then
 begin
  Otmena_NAME:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('NAME').AsString;
  Otmena_ID_SPR_GROUP_SI_IO:=DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger;
 end;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 INSERT_BOOLEAN:=False;
 UPDATE_BOOLEAN:=False;
end;

procedure TForm14.btn1Click(Sender: TObject);
var
 int_help: Integer;
begin
 if INSERT_BOOLEAN=True then
 begin
  if edtNAME.Text='' then MessageDlg('Нельзя добавить пустую запись', mtInformation, [mbOk], 0) else
  begin
   DM.MTable_SPR_SI_IO_CLASS.FieldByName('PRIORITET').AsInteger:=GetServerCount('SELECT COUNT(*) as a1 FROM SPR_SI_IO_CLASS')+1;
   DM.MTable_SPR_SI_IO_CLASS.Post;
   Close;
  end;
 end;

 if UPDATE_BOOLEAN=True then
 begin
  if DM.MTable_SPR_SI_IO_CLASS.Modified=True then DM.MTable_SPR_SI_IO_CLASS.Post;
  Close;
 end;
 SBROS_CLASS;
end;

procedure TForm14.btn2Click(Sender: TObject);
begin
 if  INSERT_BOOLEAN=True then DM.MTable_SPR_SI_IO_CLASS.Delete;

 if (UPDATE_BOOLEAN=True) and (DM.MTable_SPR_SI_IO_CLASS.Modified) then
 begin
  DM.MTable_SPR_SI_IO_CLASS.FieldByName('NAME').AsString:=Otmena_NAME;
  DM.MTable_SPR_SI_IO_CLASS.FieldByName('ID_SPR_GROUP_SI_IO').AsInteger:=Otmena_ID_SPR_GROUP_SI_IO;

  DM.MTable_SPR_SI_IO_CLASS.Post;
 end;
 SBROS_CLASS;
 Close;
end;

end.
 