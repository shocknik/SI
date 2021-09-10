unit Lib;

interface

uses Forms, Classes, SysUtils, DBCtrlsEh, Windows, ComCtrls;

type
 TTree = record
    ID : integer;
    ParentID : integer;
    Priz_ID : integer;
    kod1 : integer;
    Name : string;
 end;

 function SCAN_ID_TU(ID : integer):boolean;
 function GetServerDate: TDateTime;
 function GetCurrentUserName: string;
 function GetServerCount(ZAPROS: string): Integer;
 procedure Color_Change(Sender: TObject);
 procedure Security;


 //**************Переменные*****************************************************

var
 // ********* Для ID ****************
 ID_TU_GLOBAL: Integer;
 ID_USER_GLOBAL: Integer;
 ID_EQUIPMENT_GLOBAL: Integer;
 ID_SPR_MESTO_PRO_GLOBAL: Integer;
 ID_SPR_PRO_SECTOR_GLOBAL: Integer; //Сектор

 // ********** Прочее*****************
 User_PRIZ : string;            //Наименование пользователя
 User_FIO : string;             //ФИО пользователя
 Lat_NameUser : string;         //Наименование пользователя при входе в компьтер
 Warning: string;               //Для формы удаления при формировании предупреждающей записи
 User_Info: Boolean;
 DATE_GLOBAL : TDateTime;
 Dir_GLOBAL : string;           //Для определения текущей директории
 HELP_LENGT : Boolean = False;
 IP_GLOBAL: string;             //Ip

 // ******** Insert и Update *********

 UPDATE_SPR_GROUP_SI_IO: Boolean = False;

 COMMENT_Insert: Boolean = False;
 COMMENT_Update: Boolean = False;

 INSERT_BOOLEAN: Boolean;                 //Добавление новых записей
 UPDATE_BOOLEAN: Boolean;                 //Редактирование записей

 //*******Проверка заполнения формы********************************************

 Control_List : TStringList;
 Control_Error : Boolean;

 //***********Для окна предупреждений******************************************
 Delete_help: string;
 Insert_help: string;

implementation

uses
  Unit1, Unit2, Unit3;

function GetServerCount(ZAPROS: string): Integer;
begin
 with DM.Query_Time do
 begin
  Close;
  SQL.Clear;
  SQL.Add(ZAPROS);
  ExecQuery;
  Result := FieldByName('a1').AsInteger;
  Close;
 end;
end;


function GetCurrentUserName: string;
const
 cnMaxUserNameLen = 254;
var
 sUserName: string;
 dwUserNameLen: DWORD;
begin
 dwUserNameLen := cnMaxUserNameLen - 1;
 SetLength(sUserName, cnMaxUserNameLen);
 GetUserName(PChar(sUserName), dwUserNameLen);
 SetLength(sUserName, dwUserNameLen);
 Result := sUserName;
end;


function SCAN_ID_TU(ID: integer): boolean;
begin
 begin
  result := FALSE;
  ID_TU_GLOBAL:=0;

  with DM.DSet_Pablic do
  begin
   if Filtered = True then Filtered := False;
   Close;
   SQLs.SelectSQL.Clear;
   SQLs.SelectSQL.Add('SELECT');
   SQLs.SelectSQL.Add('TOVAR.ID_TU');
   SQLs.SelectSQL.Add('FROM TOVAR');
   SQLs.SelectSQL.Add('WHERE TOVAR.ID = :TOVAR.ID');
   ParamByName('TOVAR.ID').AsInteger := ID;
   Open;
   if ID_TU_GLOBAL <>0 then result := TRUE;
   ID_TU_GLOBAL:= FieldByName('ID_TU').AsInteger;
   Close;
  end;
 end;
end;

function GetServerDate: TDateTime;
begin
 with DM.Query_Time do
 begin
  Close;
  SQL.Clear;
  SQL.Add('select CURRENT_TIMESTAMP a1 from rdb$database');
  ExecQuery;
  Result := FieldByName('a1').AsDateTime;
  Close;
 end;
end;

procedure Color_Change(Sender: TObject);
begin
 (Sender as TDBEditEh).Text:='';
end;

procedure Security;
begin
 //
end;  


end.
