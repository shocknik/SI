unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBGridEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBVertGridsEh, DBCtrlsEh,
  StdCtrls, Mask, Buttons, ExtCtrls, ComCtrls;

type
  TForm9 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    spl1: TSplitter;
    pnl1: TPanel;
    grp17: TGroupBox;
    btn40: TBitBtn;
    btn41: TBitBtn;
    btn42: TBitBtn;
    grp1: TGroupBox;
    lbl16: TLabel;
    lbl6: TLabel;
    lbl26: TLabel;
    lbl3: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl5: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    cbb15: TDBComboBoxEh;
    cbb8: TDBComboBoxEh;
    cbb3: TDBComboBoxEh;
    chk2: TDBCheckBoxEh;
    edt2: TDBDateTimeEditEh;
    edt3: TDBDateTimeEditEh;
    edt1: TDBEditEh;
    edt4: TDBEditEh;
    chk1: TDBCheckBoxEh;
    edt5: TDBDateTimeEditEh;
    edt6: TDBDateTimeEditEh;
    dbvrtgrdh1: TDBVertGridEh;
    dbgrdh1: TDBGridEh;
    btn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn40Click(Sender: TObject);
    procedure btn41Click(Sender: TObject);
    procedure btn42Click(Sender: TObject);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Lib, SBROS, SORT, Unit3, Unit8, Unit1;

{$R *.dfm}

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.MTable_COMMENT.Active:=False;
 DM.DSet_COMMENT.Active:=False;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
 SBROS_COMMENT;
end;

procedure TForm9.btn40Click(Sender: TObject);
var
 F7: Integer;
begin
 DM.MTable_COMMENT.Insert;
 DM.MTable_COMMENT.FieldByName('CREATE_USER').AsString:=User_FIO;
 DM.MTable_COMMENT.FieldByName('STATUS').AsString:='Выставлена';
 COMMENT_Insert:=True;
 F7:=Form7.ShowModal;
end;

procedure TForm9.btn41Click(Sender: TObject);
 var F7: Integer;
begin
 COMMENT_Update:=True;
 F7:=Form7.ShowModal;
end;

procedure TForm9.btn42Click(Sender: TObject);
begin
 DM.MTable_COMMENT.Delete;
end;

procedure TForm9.dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  with (Sender as TDBGridEh), (Sender as TDBGridEh).Canvas do
 begin
  if DM.MTable_COMMENT.FieldByName('STATUS').AsString='Выполнена' then Brush.Color:=clMoneyGreen
  else
  if DM.MTable_COMMENT.FieldByName('STATUS').AsString='В работе' then Brush.Color:= RGB(255,255,150)
  else
  if DM.MTable_COMMENT.FieldByName('STATUS').AsString='На доработке' then Brush.Color:= RGB(255,172,90)
  else
  Brush.Color:=clWhite;
  // Восстанавливаем выделение текущей позиции курсора
  if gdSelected in State then
  begin
   Brush.Color:= clHighLight;
   Font.Color := clHighLightText;
  end;
 // Просим GRID перересоваться самому
  DefaultDrawColumnCell(Rect,DataCol,Column,State);
 end;
end;

procedure TForm9.edt1Change(Sender: TObject);
begin
 SORT_COMMENT;
end;

end.
