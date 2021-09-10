unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, DBCtrls;

type
  TForm7 = class(TForm)
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    dbmmoZAYAVKA: TDBMemo;
    cbbZAYAVKA: TDBComboBoxEh;
    grp2: TGroupBox;
    lbl1: TLabel;
    lbl4: TLabel;
    dbmmoMESSAGE: TDBMemo;
    cbbSTATUS: TDBComboBoxEh;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public

    PROD_COMMENT_Otmena: array[1..2] of string;
    PROD_COMMENT_Otmena_ANSI: array[1..2] of AnsiString;
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses SBROS, Lib, Unit3;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
 if COMMENT_Insert=True then
 begin
  DM.MTable_COMMENT.FieldByName('CREATE_DATE').AsDateTime:=Lib.GetServerDate;
 end;

 if COMMENT_Update=True then
 begin
  if DM.MTable_COMMENT.FieldByName('STATUS').AsString='Выполнена' then DM.MTable_COMMENT.FieldByName('END_DATE').AsDateTime:=Lib.GetServerDate;
 end;
 DM.MTable_COMMENT.Post;
 Form7.Close;
 SBROS.SBROS_COMMENT;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
 PROD_COMMENT_Otmena[1]:=DM.MTable_COMMENT.FieldByName('PRIORITY').AsString;
 PROD_COMMENT_Otmena[2]:=DM.MTable_COMMENT.FieldByName('STATUS').AsString;
 PROD_COMMENT_Otmena_ANSI[1]:=DM.MTable_COMMENT.FieldByName('ZAYAVKA').AsString;
 PROD_COMMENT_Otmena_ANSI[2]:=DM.MTable_COMMENT.FieldByName('MESSAGE').AsString;
 if COMMENT_Insert= True then DM.MTable_COMMENT.FieldByName('PRIORITY').AsString:='Средняя';
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  if COMMENT_Insert=True then DM.MTable_COMMENT.Delete;

 if (COMMENT_Update=True) and (DM.MTable_COMMENT.Modified) then
 begin
  DM.MTable_COMMENT.FieldByName('PRIORITY').AsString:=PROD_COMMENT_Otmena[1];
  DM.MTable_COMMENT.FieldByName('STATUS').AsString:=PROD_COMMENT_Otmena[2];
  DM.MTable_COMMENT.FieldByName('ZAYAVKA').AsString:=PROD_COMMENT_Otmena_ANSI[1];
  DM.MTable_COMMENT.FieldByName('MESSAGE').AsString:=PROD_COMMENT_Otmena_ANSI[2];
 end;
 SBROS.SBROS_COMMENT;
 Close;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 COMMENT_Insert:=False;
 COMMENT_Update:=False;
end;

end.
