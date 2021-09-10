unit UPasswordDlg;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, Grids, Calendar, DBGrids, DB, ADODB, StdCtrls,
  Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBCtrlsEh, Mask, DBCtrls,  DBAxisGridsEh, DBGridEh, GridsEh,
  ShellApi, ComObj, XPMan, ClipBrd,  Winsock, WordXP, Word2000,
  DBVertGridsEh, EhLibMTE, PropFilerEh, PropStorageEh;

type
  TPasswordDlg1 = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    edt1: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure PasswordEnter(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    Password_BOO: Boolean;
    Function GetFileDate(Const FileName: TFileName): TDateTime;
    { Public declarations }
  end;

var
  PasswordDlg1: TPasswordDlg1;
  loading: TStringListEh;
  dir, dir1, dir2, dirUP, dirOLD: string;
  Password_Clik_BOO : Boolean;

implementation

uses Lib, SBROS, Unit1, Unit2, Unit3;

{$R *.dfm}

function TPasswordDlg1.GetFileDate(const FileName: TFileName): TDateTime;
Var SearchRec: TSearchRec;
begin
 Result:=Now;
 if FindFirst(FileName,faAnyFile-faDirectory,SearchRec) = 0 then
 begin
  Result:=FileDateToDateTime(SearchRec.Time);
  FindClose(SearchRec);
 end;
end;

procedure TPasswordDlg1.FormShow(Sender: TObject);
begin
 Lib.Lat_NameUser := Trim(Lib.GetCurrentUserName);
 GetDir(0,Lib.Dir_GLOBAL); {Определение текущей директории}

 //**************************************************************************
 if FileExists(Lib.Dir_GLOBAL+'\cfg.txt') then
  begin
   loading:=TStringListEh.Create;
   dir:=Lib.Dir_GLOBAL+'\cfg.txt';
   loading.LoadFromFile(dir);
   dir1:=Trim(loading[2]);
   Delete(dir1, 1, 10);
   dir2:=Trim(loading[1]);
   dirUP:=Trim(loading[3]);
   Delete(dirUP, 1, 11);
   dirUP:=dirUP+ExtractFileName(application.ExeName);
   dirOLD:=ExtractFilePath(application.ExeName)+ExtractFileName(application.ExeName);
   DM.base2.DBName:= '10.0.20.158:C:\DataBases\Production.fdb';
   DM.base3.DBName:= '192.168.1.72:E:\FireBird\01-11-2010\spcable1.gdb';
   DM.base2.LibraryName:=dir1;
   DM.base3.LibraryName:=dir1;
   if FileExists(dirUP) then
   begin
    if  (GetFileDate(dirUP)) > (GetFileDate(dirOLD)) then
    Begin
     MessageDlg('Доступна новая версия программы. Нажмите <Ok>, чтобы её обновить ' + '(дождитесь пока она не запустится снова).',mtInformation,[mbOk],0);
     With TStringList.Create Do
     try
      Add(':Repeat');
      { если есть удаляем }
      Add('IF Exist "' + ParamStr(0) + '" Del "' + ParamStr(0) + '"');
      { если не удалилось переходим снова на удаление }
      Add('IF Exist "' + ParamStr(0) + '" goto Repeat');
      { копируем новую }
      Add('Copy "'+dirUP+'" "'+dirOLD+'"');
      { запускаем новую }
      Add('"' + ParamStr(0) + '"');
      { удаляем файл со скриптом }
      Add('del update.bat');
      { Сохраняем файл скрипта }
      SaveToFile('update.bat');
      { Запускаем скрипт }
      WinExec('update.bat', SW_HIDE);
      { Закрываем текущую }
      Application.MainForm.Close;
      Exit;
     finally
      Free;
     end;
    end;
   end
   else
   begin
    ShowMessage('Проверьте соединение с сетью!');
    Application.MainForm.Close;
    Exit;
   end;  
 end
 else
 begin
  if Lib.Dir_GLOBAL<>'D:\My_projects\СИ' then
  begin
   ShowMessage('Файл конфигурации отстутствует!');
   Application.MainForm.Close;
   Exit;
  end;
 end;
 DM.Base2.Connected:=True;
 DM.Base3.Connected:=True;

 DM.DSet_USER.Active:=True;

 while not DM.DSet_USER.Eof do
 begin
  if DM.DSet_USER.FieldByName('FIO').AsString<>'' then
  begin
   ComboBox1.Items.Add(DM.DSet_USER.FieldByName('FIO').AsString);
  end;
  DM.DSet_USER.Next;
 end;
end;

procedure TPasswordDlg1.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
 wVerReq: WORD;
 wsaData: TWSAData;
 persona: pchar;
 h: PHostEnt;
 c: array[0..128] of char;
 User_Info_List : TStringList;
 myDate : TDateTime;
 myYear, myMonth, myDay : Word;
begin
 if Password_BOO=True then
 begin
  Lib.User_Info:=False;
  User_Info_List:=TStringList.Create;
  User_Info_List.Add('Пользователь: ' +ComboBox1.Text);
  Lib.User_FIO:=ComboBox1.Text;
  wVerReq := MAKEWORD(1, 1);
  WSAStartup(wVerReq, wsaData);
  GetHostName(@c, 128);
  h := GetHostByName(@c);
  persona := iNet_ntoa(PInAddr(h^.h_addr_list^)^);
  Lib.IP_GLOBAL:=persona;
  myDate:=Lib.GetServerDate;
  DecodeDate(myDate, myYear, myMonth, myDay);

  Form1.lbl1.Caption:=User_Info_List.Text;
  WSACleanup;
  Security;
  DATE_GLOBAL:=GetServerDate;
  DM.MTable_SI_IO.Active:=True;
  SBROS_SI_IO;
  DM.MTable_SPR_GROUP_SI_IO.Active:=True;
  DM.MTable_SPR_SI_IO_CLASS.Active:=True;

  with DM.DSet_REMONT do
  begin
   SelectSQL.Clear;
   SelectSQL.Add('SELECT');
   SelectSQL.Add('SI_IO_REMONT.ID,');
   SelectSQL.Add('SI_IO_REMONT.ID_SPR_SI_IO,');
   SelectSQL.Add('SI_IO_REMONT.DATE_DEFEKT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_START_REMONT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_END_REMONT,');
   SelectSQL.Add('SI_IO_REMONT.ID_KONTRAGENT,');
   SelectSQL.Add('SI_IO_REMONT.NUM_ACCOUNT,');
   SelectSQL.Add('SI_IO_REMONT.DATE_ACCOUNT,');
   SelectSQL.Add('SI_IO_REMONT.PRIM');
   SelectSQL.Add('FROM');
   SelectSQL.Add('SI_IO_REMONT SI_IO_REMONT');
   SelectSQL.Add('LEFT OUTER JOIN KONTRAGENT ON SI_IO_REMONT.ID_KONTRAGENT = KONTRAGENT.ID');
   SelectSQL.Add('where ID_SPR_SI_IO='+IntToStr(DM.MTable_SI_IO.FieldByName('ID').AsInteger));
   SelectSQL.Add('ORDER BY DATE_DEFEKT');
  end;
  DM.MTable_REMONT.Active:=True;

  with DM.DSet_POVERKA do
  begin
   SelectSQL.Clear;
   SelectSQL.Add('SELECT');
   SelectSQL.Add('SI_IO_POVERKA.ID,');
   SelectSQL.Add('SI_IO_POVERKA.ID_SPR_SI_IO,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_POVERKA,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_NEXT_POVERKA,');
   SelectSQL.Add('SI_IO_POVERKA.NUM_ATTESTAT,');
   SelectSQL.Add('SI_IO_POVERKA.ID_KONTRAGENT,');
   SelectSQL.Add('SI_IO_POVERKA.NUM_ACCOUNT,');
   SelectSQL.Add('SI_IO_POVERKA.DATE_ACCOUNT,');
   SelectSQL.Add('SI_IO_POVERKA.PATH,');
   SelectSQL.Add('SPR_SI_IO.NAME,');
   SelectSQL.Add('KONTRAGENT.SNAME');
   SelectSQL.Add('FROM');
   SelectSQL.Add('SI_IO_POVERKA SI_IO_POVERKA');
   SelectSQL.Add('LEFT OUTER JOIN SPR_SI_IO ON SI_IO_POVERKA.ID_SPR_SI_IO = SPR_SI_IO.ID');
   SelectSQL.Add('LEFT OUTER JOIN KONTRAGENT ON SI_IO_POVERKA.ID_KONTRAGENT = KONTRAGENT.ID');
   SelectSQL.Add('where ID_SPR_SI_IO='+IntToStr(DM.MTable_SI_IO.FieldByName('ID').AsInteger));
   SelectSQL.Add('ORDER BY DATE_POVERKA');
  end;
  DM.MTable_POVERKA.Active:=True;
  DM.DSet_KONTRAGENT_LOOK.Active:=True;
  DM.MTable_SPR_STATUS_SI_IO.Active:=True;
  //DM.DSet_USER.Active:=True;
  //Сдесь нужно описать активизацию MTable
 end
 else Application.MainForm.Close;
end;

procedure TPasswordDlg1.CancelBtnClick(Sender: TObject);
begin
 Application.MainForm.Close;
end;

procedure TPasswordDlg1.OKBtnClick(Sender: TObject);
begin
 if ComboBox1.ItemIndex<>-1 then
 begin
  DM.DSet_Pablic.Active:=False;
  DM.DSet_Pablic.SelectSQL.Clear;
  DM.DSet_Pablic.SelectSQL.Add('select * from USER1 where FIO like '+chr(39)+'%'+ComboBox1.Text+'%'+chr(39));
  DM.DSet_Pablic.Open;
  DM.DSet_Pablic.Active:=True;
  if ComboBox1.Text='Выберите пользователя из списка' then ShowMessage('Выберите пользователя');
  if (Password.Text=DM.DSet_Pablic.FieldByName('PASS').AsString) and (ComboBox1.Text=DM.DSet_Pablic.FieldByName('FIO').AsString) then
  begin
   Password_BOO:=True;
   ID_USER_GLOBAL:=DM.DSet_Pablic.FieldByName('ID').AsInteger;
   if DM.DSet_Pablic.FieldByName('PRIZ_SI_IO').AsInteger=1 then User_PRIZ:='Администратор';
   if DM.DSet_Pablic.FieldByName('PRIZ_SI_IO').AsInteger=2 then User_PRIZ:='Сотрудник лаборатории';
   if DM.DSet_Pablic.FieldByName('PRIZ_SI_IO').AsInteger=3 then User_PRIZ:='Ответственный';
   if DM.DSet_Pablic.FieldByName('PRIZ_SI_IO').AsInteger=4 then User_PRIZ:='Пользователь';
   Close;
  end
  else ShowMessage('Выберите пользователя и введите пароль');
 end
 else ShowMessage('Выберите пользователя');
end;

procedure TPasswordDlg1.PasswordEnter(Sender: TObject);
begin
 LoadKeyboardLayout('00000409', KLF_ACTIVATE);
end;

procedure TPasswordDlg1.ComboBox1Enter(Sender: TObject);
begin
 LoadKeyboardLayout('00000419', KLF_ACTIVATE);
end;

procedure TPasswordDlg1.ComboBox1Change(Sender: TObject);
begin
 DM.DSet_Pablic.Active:=False;
 DM.DSet_Pablic.SelectSQL.Clear;
 DM.DSet_Pablic.SelectSQL.Add('select * from USER1 where FIO like '+chr(39)+'%'+ComboBox1.Text+'%'+chr(39));
 DM.DSet_Pablic.Open;
 DM.DSet_Pablic.Active:=True;
 if DM.DSet_Pablic.FieldByName('LOGIN_NAME').AsString=Lib.Lat_NameUser then
 begin
  Password.Text:=DM.DSet_Pablic.FieldByName('PASS').AsString;
 end;  
end;

end.

