unit Unit6;

interface

uses
 { Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Mask, DBCtrlsEh, Menus, EhLibCDS, EHlibMTE;
  }
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, Grids, Calendar, DBGrids, DB, ADODB, StdCtrls,
  Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBCtrlsEh, Mask, DBCtrls,  DBAxisGridsEh, DBGridEh, GridsEh,
  ShellApi, ComObj, XPMan, ClipBrd,  Winsock, WordXP, Word2000,
  DBVertGridsEh, FWOpenDirectory, EhLibMTE, PropFilerEh, PropStorageEh,
  EhLibVCL, CPort;

type
  TForm6 = class(TForm)
    dbgrdh1: TDBGridEh;
    pnl1: TPanel;
    grp1: TGroupBox;
    edt1: TDBEditEh;
    edt2: TDBEditEh;
    edt3: TDBEditEh;
    btn2: TBitBtn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3, SBROS;

{$R *.dfm}

procedure TForm6.btn2Click(Sender: TObject);
begin
 SBROS_USER_SI_IO;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
 SBROS_USER_SI_IO;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.MTable_SI_IO.Active:=False;
end;

procedure TForm6.N1Click(Sender: TObject);
begin
 DM.MTable_USER_SI_IO.Edit;
 DM.MTable_USER_SI_IO.FieldByName('PRIZ_SI_IO').AsInteger:=0;
 DM.MTable_USER_SI_IO.Post;
 SBROS_USER_SI_IO;
 DM.DSet_USER.Active:=False;
 DM.DSet_USER.Active:=True;
end;

procedure TForm6.N2Click(Sender: TObject);
begin
 DM.MTable_USER_SI_IO.Edit;
 DM.MTable_USER_SI_IO.FieldByName('PRIZ_SI_IO').AsInteger:=1;
 DM.MTable_USER_SI_IO.Post;
 SBROS_USER_SI_IO;
 DM.DSet_USER.Active:=False;
 DM.DSet_USER.Active:=True;
end;

procedure TForm6.N3Click(Sender: TObject);
begin
 DM.MTable_USER_SI_IO.Edit;
 DM.MTable_USER_SI_IO.FieldByName('PRIZ_SI_IO').AsInteger:=2;
 DM.MTable_USER_SI_IO.Post;
 SBROS_USER_SI_IO;
 DM.DSet_USER.Active:=False;
 DM.DSet_USER.Active:=True;
end;


procedure TForm6.N4Click(Sender: TObject);
begin
 DM.MTable_USER_SI_IO.Edit;
 DM.MTable_USER_SI_IO.FieldByName('PRIZ_SI_IO').AsInteger:=3;
 DM.MTable_USER_SI_IO.Post;
 SBROS_USER_SI_IO;
 DM.DSet_USER.Active:=False;
 DM.DSet_USER.Active:=True;
end;

procedure TForm6.N5Click(Sender: TObject);
begin
 DM.MTable_USER_SI_IO.Edit;
 DM.MTable_USER_SI_IO.FieldByName('PRIZ_SI_IO').AsInteger:=4;
 DM.MTable_USER_SI_IO.Post;
 SBROS_USER_SI_IO;
 DM.DSet_USER.Active:=False;
 DM.DSet_USER.Active:=True;
end;

end.
