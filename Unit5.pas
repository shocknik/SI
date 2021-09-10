unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh;

type
  TForm5 = class(TForm)
    edtNAME: TDBEditEh;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    SI_IO_Otmena: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Lib, SBROS, Unit3;

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 INSERT_BOOLEAN := False;
 UPDATE_SPR_GROUP_SI_IO := False;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
 SI_IO_Otmena:=DM.MTable_SPR_GROUP_SI_IO.FieldByName('NAME').AsString;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
 if INSERT_BOOLEAN=True then
 begin
  if edtNAME.Text='' then
  begin
   MessageDlg('Нельзя добавить пустую запись', mtInformation, [mbOk], 0);
  end
  else
  begin
   DM.MTable_SPR_GROUP_SI_IO.Post;
   Close;
  end;
 end;
 if UPDATE_SPR_GROUP_SI_IO=True then
 begin
  if DM.MTable_SPR_GROUP_SI_IO.Modified=True then DM.MTable_SPR_GROUP_SI_IO.Post;
  Close;
 end;
 SBROS_SPR_GROUP_SI_IO;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
 if  INSERT_BOOLEAN=True then DM.MTable_SPR_GROUP_SI_IO.Delete;

 if (UPDATE_SPR_GROUP_SI_IO=True) and (DM.MTable_SPR_GROUP_SI_IO.Modified) then
 begin
  DM.MTable_SPR_GROUP_SI_IO.FieldByName('NAME').AsString:=SI_IO_Otmena;
  DM.MTable_SPR_GROUP_SI_IO.Post;
 end;
 SBROS_SPR_GROUP_SI_IO;
 Close;
end;

end.
