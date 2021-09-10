unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm12 = class(TForm)
    lbl1: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    procedure POVERKA_DEL;
    procedure CLASS_DEL;
    procedure SI_IO_DEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Lib, VALUE, SBROS, Unit1, Unit3;

{$R *.dfm}

procedure TForm12.FormShow(Sender: TObject);
begin
 Form1.il1.GetBitmap(0, btn1.Glyph);
 Form1.il2.GetBitmap(0, btn2.Glyph);
 lbl1.Caption:=Warning;
 lbl1.Alignment:=taCenter;
end;

procedure TForm12.btn2Click(Sender: TObject);
begin
 Close;
end;

procedure TForm12.POVERKA_DEL;
begin
 DM.MTable_POVERKA.Delete;
 VALUE_POVERKA;
 Close;
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
 if Delete_help='”даление_поверка' then POVERKA_DEL;
 if Delete_help='”даление_класс' then CLASS_DEL;
 if Delete_help='—писание_оборудование' then SI_IO_DEL;
end;

procedure TForm12.CLASS_DEL;
var
 i: Integer;
begin
 Control_List:=TStringList.Create;
 Control_Error:=True;
 {
 with DM.DSet_Pablic do
 begin
  Active:=False;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT');
  SelectSQL.Add('TK_PROCES.ID,');
  SelectSQL.Add('TK_PROCES.ID_SPR_PRO_OPER1');
  SelectSQL.Add('FROM');
  SelectSQL.Add('TK_PROCES TK_PROCES');
  SelectSQL.Add('WHERE');
  SelectSQL.Add('TK_PROCES.ID_SPR_PRO_OPER1='+IntToStr(DM_1.MTable_OPER.FieldByName('ID').AsInteger));
  Open;
 end;

 if DM.DSet_Pablic.RecordCount<>0 then
 begin
  Control_Error:=False;
  Control_List.Add(chr(7)+' Ќевозможно удалить данную операцию так как она присвоена одному из этапов производства');
 end;
 }
 //ƒанный кусок нужно заменить на проверку в основной таблице

 if Control_Error=True then
 begin
  DM.MTable_SPR_SI_IO_CLASS.Delete;

  with DM.DSet_Pablic do
  begin
   Active:=False;
   UpdateSQL.Clear;
   SelectSQL.Clear;
   SelectSQL.Add('SELECT');
   SelectSQL.Add('SPR_SI_IO_CLASS.ID,');
   SelectSQL.Add('SPR_SI_IO_CLASS.PRIORITET');
   SelectSQL.Add('FROM');
   SelectSQL.Add('SPR_SI_IO_CLASS SPR_SI_IO_CLASS');
   SelectSQL.Add('ORDER BY PRIORITET');

   UpdateSQL.Add('UPDATE SPR_SI_IO_CLASS');
   UpdateSQL.Add('SET');
   UpdateSQL.Add('PRIORITET = :PRIORITET');
   UpdateSQL.Add('WHERE');
   UpdateSQL.Add('ID = :OLD_ID');
   Open;
   First;
  end;
  i:=1;
  while not DM.DSet_Pablic.Eof do
  begin
   DM.DSet_Pablic.Edit;
   DM.DSet_Pablic.FieldByName('PRIORITET').AsInteger:=i;
   DM.DSet_Pablic.Post;
   i:=i+1;
   DM.DSet_Pablic.Next;
  end;
  SBROS_CLASS;
 end
 else ShowMessage(Control_List.Text);

 Control_List.Free;
 Form12.Close;
end;

procedure  TForm12.SI_IO_DEL;
begin
 with DM.DSet_Pablic do
 begin
  Close;
  UpdateSQL.Clear;
  SelectSQL.Clear;

  SelectSQL.Add('SELECT');
  SelectSQL.Add('SPR_SI_IO.ID,');
  SelectSQL.Add('SPR_SI_IO.ID_SPR_STATUS_SI_IO,');
  SelectSQL.Add('SPR_SI_IO.DATE_OUT,');
  SelectSQL.Add('SPR_SI_IO.ID_USER_OUT');
  SelectSQL.Add('FROM');
  SelectSQL.Add('SPR_SI_IO');
  SelectSQL.Add('WHERE ID='+inttostr(DM.MTable_SI_IO.FieldByName('ID').AsInteger));

  UpdateSQL.Add('UPDATE SPR_SI_IO');
  UpdateSQL.Add('SET');
  UpdateSQL.Add('ID_SPR_STATUS_SI_IO = :ID_SPR_STATUS_SI_IO,');
  UpdateSQL.Add('DATE_OUT = :DATE_OUT,');
  UpdateSQL.Add('ID_USER_OUT = :ID_USER_OUT');
  UpdateSQL.Add('WHERE');
  UpdateSQL.Add('ID = :OLD_ID');
  Open;

  Edit;
  FieldByName('ID_SPR_STATUS_SI_IO').AsInteger:=4;
  FieldByName('DATE_OUT').AsDateTime:=GetServerDate;
  FieldByName('ID_USER_OUT').AsInteger:=ID_USER_GLOBAL;
  Post;
  Close;
 end;

 SBROS_SI_IO;

 Form12.Close;
end;  

end.
