unit Unit3;

interface

uses
  SysUtils, Classes, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, MemTableDataEh, MemTableEh, DataDriverEh;

type
  TDM = class(TDataModule)
    Base3: TpFIBDatabase;
    tn_read_3: TpFIBTransaction;
    tn_write_3: TpFIBTransaction;
    DSet_Pablic: TpFIBDataSet;
    Query_Time: TpFIBQuery;
    DSet_USER: TpFIBDataSet;
    DSet_SI_IO: TpFIBDataSet;
    DSetDriver_SI_IO: TDataSetDriverEh;
    DSourse_SI_IO: TDataSource;
    DSet_SPR_GROUP_SI_IO: TpFIBDataSet;
    DDriver_SPR_GROUP_SI_IO: TDataSetDriverEh;
    MTable_SPR_GROUP_SI_IO: TMemTableEh;
    DSourse_SPR_GROUP_SI_IO: TDataSource;
    DSet_USER_SI_IO: TpFIBDataSet;
    DDriver_USER_SI_IO: TDataSetDriverEh;
    MTable_USER_SI_IO: TMemTableEh;
    DSourse_USER_SI_IO: TDataSource;
    MTable_SI_IO: TMemTableEh;
    DSourse_USER: TDataSource;
    Base2: TpFIBDatabase;
    tn_read_2: TpFIBTransaction;
    tn_write_2: TpFIBTransaction;
    DSet_COMMENT: TpFIBDataSet;
    DDriver_COMMENT: TDataSetDriverEh;
    MTable_COMMENT: TMemTableEh;
    intgrfldMemTable_COMMENTID: TIntegerField;
    dtmfldMemTable_COMMENTCREATE_DATE: TDateTimeField;
    strngfldMemTable_COMMENTCREATE_USER: TStringField;
    blbfldMemTable_COMMENTZAYAVKA: TBlobField;
    strngfldMemTable_COMMENTPRIORITY: TStringField;
    blbfldMemTable_COMMENTMESSAGE: TBlobField;
    strngfldMemTable_COMMENTSTATUS: TStringField;
    dtmfldMemTable_COMMENTEND_DATE: TDateTimeField;
    DSourse_COMMENT: TDataSource;
    MTable_Memory: TMemTableEh;
    DSourse_Memory: TDataSource;
    DSet_POVERKA: TpFIBDataSet;
    DSet_REMONT: TpFIBDataSet;
    MTable_POVERKA: TMemTableEh;
    MTable_REMONT: TMemTableEh;
    DDriver_POVERKA: TDataSetDriverEh;
    DDriver_REMONT: TDataSetDriverEh;
    DSourse_POVERKA: TDataSource;
    DSourse_REMONT: TDataSource;
    DSet_KONTRAGENT: TpFIBDataSet;
    DDriver_KONTRAGENT: TDataSetDriverEh;
    MTable_KONTRAGENT: TMemTableEh;
    DSourse_KONTRAGENT: TDataSource;
    DSet_KONTRAGENT_LOOK: TpFIBDataSet;
    DSourse_KONTRAGENT_LOOK: TDataSource;
    DSourse_SPR_SI_IO_CLASS: TDataSource;
    DSet_SPR_SI_IO_CLASS: TpFIBDataSet;
    MTable_SPR_SI_IO_CLASS: TMemTableEh;
    DDriver_SPR_SI_IO_CLASS: TDataSetDriverEh;
    MTable_SPR_STATUS_SI_IO: TMemTableEh;
    DSourse_SPR_STATUS_SI_IO: TDataSource;
    DSet_SPR_STATUS_SI_IO: TpFIBDataSet;
    DDriver_SPR_STATUS_SI_IO: TDataSetDriverEh;
    procedure MTable_COMMENTAfterScroll(DataSet: TDataSet);
    procedure MTable_SI_IOAfterScroll(DataSet: TDataSet);
    procedure MTable_SI_IOAfterOpen(DataSet: TDataSet);
    procedure MTable_POVERKAAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  VALUE, Unit1;

{$R *.dfm}

procedure TDM.MTable_COMMENTAfterScroll(DataSet: TDataSet);
begin
 VALUE_COMMENT;
end;

procedure TDM.MTable_SI_IOAfterScroll(DataSet: TDataSet);
begin
 if Form1.pgc1.ActivePageIndex=1 then VALUE_REMONT;
 if Form1.pgc1.ActivePageIndex=2 then VALUE_POVERKA;
end;

procedure TDM.MTable_SI_IOAfterOpen(DataSet: TDataSet);
begin
 if Form1.pgc1.ActivePageIndex=1 then VALUE_REMONT;
 if Form1.pgc1.ActivePageIndex=2 then VALUE_POVERKA;
end;

procedure TDM.MTable_POVERKAAfterOpen(DataSet: TDataSet);
begin
 if DM.MTable_POVERKA.RecordCount<>0 then
 begin
  Form1.H1.Enabled:=True;
  Form1.E1.Enabled:=True;
 end
 else
 begin
  Form1.H1.Enabled:=False;
  Form1.E1.Enabled:=False;
 end;
end;

end.
