object DM: TDM
  OldCreateOrder = False
  Left = 264
  Top = 141
  Height = 614
  Width = 1194
  object Base3: TpFIBDatabase
    DBName = 'D:\FireBird_DB\SPCABLE1.GDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    DefaultTransaction = tn_read_3
    DefaultUpdateTransaction = tn_write_3
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 16
    Top = 16
  end
  object tn_read_3: TpFIBTransaction
    DefaultDatabase = Base3
    TimeoutAction = TARollback
    Left = 72
    Top = 16
  end
  object tn_write_3: TpFIBTransaction
    DefaultDatabase = Base3
    TimeoutAction = TARollback
    Left = 136
    Top = 16
  end
  object DSet_Pablic: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TASKS.ID,'
      '    TASKS.DATE_CREATE,'
      '    TASKS.ID_USER,'
      '    TASKS.ID_SPR_PRO_OBORUD1,'
      '    TASKS.ID_SPR_PRO_PRIORITET,'
      '    TASKS.PRIORITET,'
      '    TASKS.ID_TOVAR,'
      '    TASKS.ID_TU,'
      '    TASKS.ID_SPR_MESTO_PRO,'
      '    TASKS.ID_SPR_PRO_SECTOR,'
      '    TASKS.KOL_PLAN,'
      '    TASKS.KOL_FAKT,'
      '    TASKS.SEARCH,'
      '    TASKS.STATUS,'
      '    TASKS.DATE_START,'
      '    TASKS.DATE_END,'
      '    TASKS.NAME_PARTII,'
      '    TASKS.PRIM_PLAN_PRO,'
      '    TASKS.PRIM_END,'
      '    TASKS.PRIZ_DEL,'
      '    USER1.FIO,'
      '    SPR_PRO_OBORUD1.SNAME,'
      '    SPR_PRO_PRIORITET.NAME,'
      '    TOVAR.NAME || COALESCE('#39' '#39' || SPR_COLOR.NAME, '#39#39') AS T_NAME,'
      '    TU.NAME,'
      '    SPR_MESTO_PRO.NAME,'
      '    SPR_PRO_SECTOR.NAME'
      'FROM'
      '    TASKS'
      '    LEFT OUTER JOIN USER1 ON TASKS.ID_USER = USER1.ID'
      
        '    LEFT OUTER JOIN SPR_PRO_OBORUD1 ON  TASKS.ID_SPR_PRO_OBORUD1' +
        ' = SPR_PRO_OBORUD1.ID'
      
        '    LEFT OUTER JOIN SPR_PRO_PRIORITET ON TASKS.ID_SPR_PRO_PRIORI' +
        'TET = SPR_PRO_PRIORITET.ID'
      '    LEFT OUTER JOIN TOVAR ON TASKS.ID_TOVAR = TOVAR.ID'
      '    LEFT OUTER JOIN TU ON  TASKS.ID_TU = TU.ID'
      
        '    LEFT OUTER JOIN SPR_MESTO_PRO ON TASKS.ID_SPR_MESTO_PRO = SP' +
        'R_MESTO_PRO.ID'
      
        '    LEFT OUTER JOIN SPR_PRO_SECTOR ON TASKS.ID_SPR_PRO_SECTOR = ' +
        'SPR_PRO_SECTOR.ID'
      
        '    LEFT OUTER JOIN SPR_COLOR ON TOVAR.ID_SPR_COLOR = SPR_COLOR.' +
        'ID'
      'ORDER BY'
      'TASKS.DATE_END'
      '')
    Database = Base3
    AutoCommit = True
    Left = 424
    Top = 16
  end
  object Query_Time: TpFIBQuery
    Transaction = tn_read_3
    Database = Base3
    Left = 496
    Top = 16
  end
  object DSet_USER: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    USER1.ID,'
      '    USER1.ID_PARENT,'
      '    USER1.DATA,'
      '    USER1.FAMILIE,'
      '    USER1.NAME,'
      '    USER1.OTCHEST,'
      '    USER1.FIO,'
      '    USER1.LOGIN_NAME,'
      '    USER1.PASS,'
      '    USER1.PRIZ_SI_IO'
      'FROM'
      '    USER1 USER1'
      'WHERE'
      '   USER1.PRIZ_SI_IO<>0'
      '')
    Transaction = tn_read_3
    Database = Base3
    Left = 760
    Top = 64
  end
  object DSet_SI_IO: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SPR_SI_IO'
      'SET '
      '    NAME = :NAME,'
      '    TYPE_SI_IO = :TYPE_SI_IO,'
      '    CLASS = :CLASS,'
      '    RANGE_IZMER = :RANGE_IZMER,'
      '    WATT = :WATT,'
      '    PRICE_WORK = :PRICE_WORK,'
      '    IP = :IP,'
      '    N_ZAVOD = :N_ZAVOD,'
      '    N_INVENT = :N_INVENT,'
      '    DATE_PRO = :DATE_PRO,'
      '    DATE_VVOD = :DATE_VVOD,'
      '    DATE_POVERKA_FIRST = :DATE_POVERKA_FIRST,'
      '    DATE_POVERKA_NEXT = :DATE_POVERKA_NEXT,'
      '    DATE_POVERKA_LAST = :DATE_POVERKA_LAST,'
      '    N_ATTESTAT = :N_ATTESTAT,'
      '    CORRECT = :CORRECT,'
      '    ID_SPR_OTDEL = :ID_SPR_OTDEL,'
      '    ID_USER = :ID_USER,'
      '    ID_SPR_GROUP_SI_IO = :ID_SPR_GROUP_SI_IO,'
      '    DATE_POVERKA_PERIOD = :DATE_POVERKA_PERIOD,'
      '    ID_SPR_STATUS_SI_IO = :ID_SPR_STATUS_SI_IO,'
      '    DATE_OUT = :DATE_OUT,'
      '    ID_USER_OUT = :ID_USER_OUT,'
      '    ID_SPR_SI_IO_CLASS = :ID_SPR_SI_IO_CLASS,'
      '    PRIM = :PRIM'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SPR_SI_IO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SPR_SI_IO('
      '    ID,'
      '    NAME,'
      '    TYPE_SI_IO,'
      '    CLASS,'
      '    RANGE_IZMER,'
      '    WATT,'
      '    PRICE_WORK,'
      '    IP,'
      '    N_ZAVOD,'
      '    N_INVENT,'
      '    DATE_PRO,'
      '    DATE_VVOD,'
      '    DATE_POVERKA_FIRST,'
      '    DATE_POVERKA_NEXT,'
      '    DATE_POVERKA_LAST,'
      '    N_ATTESTAT,'
      '    CORRECT,'
      '    ID_SPR_OTDEL,'
      '    ID_USER,'
      '    ID_SPR_GROUP_SI_IO,'
      '    DATE_POVERKA_PERIOD,'
      '    ID_SPR_STATUS_SI_IO,'
      '    DATE_OUT,'
      '    ID_USER_OUT,'
      '    ID_SPR_SI_IO_CLASS,'
      '    PRIM'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :TYPE_SI_IO,'
      '    :CLASS,'
      '    :RANGE_IZMER,'
      '    :WATT,'
      '    :PRICE_WORK,'
      '    :IP,'
      '    :N_ZAVOD,'
      '    :N_INVENT,'
      '    :DATE_PRO,'
      '    :DATE_VVOD,'
      '    :DATE_POVERKA_FIRST,'
      '    :DATE_POVERKA_NEXT,'
      '    :DATE_POVERKA_LAST,'
      '    :N_ATTESTAT,'
      '    :CORRECT,'
      '    :ID_SPR_OTDEL,'
      '    :ID_USER,'
      '    :ID_SPR_GROUP_SI_IO,'
      '    :DATE_POVERKA_PERIOD,'
      '    :ID_SPR_STATUS_SI_IO,'
      '    :DATE_OUT,'
      '    :ID_USER_OUT,'
      '    :ID_SPR_SI_IO_CLASS,'
      '    :PRIM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SPR_SI_IO.ID,'
      '    SPR_SI_IO.NAME,'
      '    SPR_SI_IO.TYPE_SI_IO,'
      '    SPR_SI_IO.CLASS,'
      '    SPR_SI_IO.RANGE_IZMER,'
      '    SPR_SI_IO.WATT,'
      '    SPR_SI_IO.PRICE_WORK,'
      '    SPR_SI_IO.IP,'
      '    SPR_SI_IO.N_ZAVOD,'
      '    SPR_SI_IO.N_INVENT,'
      '    SPR_SI_IO.DATE_PRO,'
      '    SPR_SI_IO.DATE_VVOD,'
      '    SPR_SI_IO.DATE_POVERKA_FIRST,'
      '    SPR_SI_IO.DATE_POVERKA_NEXT,'
      '    SPR_SI_IO.DATE_POVERKA_LAST,'
      '    SPR_SI_IO.N_ATTESTAT,'
      '    SPR_SI_IO.CORRECT,'
      '    SPR_SI_IO.ID_SPR_OTDEL,'
      '    SPR_SI_IO.ID_USER,'
      '    SPR_SI_IO.ID_SPR_GROUP_SI_IO,'
      '    SPR_SI_IO.DATE_POVERKA_PERIOD,'
      '    SPR_SI_IO.ID_SPR_STATUS_SI_IO,'
      '    SPR_SI_IO.DATE_OUT,'
      '    SPR_SI_IO.ID_USER_OUT,'
      '    SPR_SI_IO.ID_SPR_SI_IO_CLASS,'
      '    SPR_SI_IO.PRIM,'
      '    USER_FIO.FIO as USER_FIO_SI_IO,'
      '    USER_FIO_OUT.FIO as USER_FIO_OUT,'
      '    SPR_GROUP_SI_IO.NAME,'
      '    SPR_STATUS_SI_IO.NAME as SPR_STATUS_SI_IO_NAME,'
      '    SPR_SI_IO_CLASS.NAME as CLASS_NAME'
      'FROM'
      '    SPR_SI_IO SPR_SI_IO'
      
        '    LEFT OUTER JOIN USER1 USER_FIO ON SPR_SI_IO.ID_USER = USER_F' +
        'IO.ID'
      
        '    LEFT OUTER JOIN USER1 USER_FIO_OUT ON SPR_SI_IO.ID_USER_OUT ' +
        '= USER_FIO_OUT.ID'
      
        '    LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO.ID_SPR_GROUP_SI' +
        '_IO = SPR_GROUP_SI_IO.ID'
      
        '    LEFT OUTER JOIN SPR_STATUS_SI_IO ON SPR_SI_IO.ID_SPR_STATUS_' +
        'SI_IO = SPR_STATUS_SI_IO.ID'
      
        '    LEFT OUTER JOIN SPR_SI_IO_CLASS ON SPR_SI_IO.ID_SPR_SI_IO_CL' +
        'ASS =SPR_SI_IO_CLASS.ID'
      ' '
      ' WHERE '
      '        SPR_SI_IO.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SPR_SI_IO.ID,'
      '    SPR_SI_IO.NAME,'
      '    SPR_SI_IO.TYPE_SI_IO,'
      '    SPR_SI_IO.CLASS,'
      '    SPR_SI_IO.RANGE_IZMER,'
      '    SPR_SI_IO.WATT,'
      '    SPR_SI_IO.PRICE_WORK,'
      '    SPR_SI_IO.IP,'
      '    SPR_SI_IO.N_ZAVOD,'
      '    SPR_SI_IO.N_INVENT,'
      '    SPR_SI_IO.DATE_PRO,'
      '    SPR_SI_IO.DATE_VVOD,'
      '    SPR_SI_IO.DATE_POVERKA_FIRST,'
      '    SPR_SI_IO.DATE_POVERKA_NEXT,'
      '    SPR_SI_IO.DATE_POVERKA_LAST,'
      '    SPR_SI_IO.N_ATTESTAT,'
      '    SPR_SI_IO.CORRECT,'
      '    SPR_SI_IO.ID_SPR_OTDEL,'
      '    SPR_SI_IO.ID_USER,'
      '    SPR_SI_IO.ID_SPR_GROUP_SI_IO,'
      '    SPR_SI_IO.DATE_POVERKA_PERIOD,'
      '    SPR_SI_IO.ID_SPR_STATUS_SI_IO,'
      '    SPR_SI_IO.DATE_OUT,'
      '    SPR_SI_IO.ID_USER_OUT,'
      '    SPR_SI_IO.ID_SPR_SI_IO_CLASS,'
      '    SPR_SI_IO.PRIM,'
      '    USER_FIO.FIO as USER_FIO_SI_IO,'
      '    USER_FIO_OUT.FIO as USER_FIO_OUT,'
      '    SPR_GROUP_SI_IO.NAME,'
      '    SPR_STATUS_SI_IO.NAME as SPR_STATUS_SI_IO_NAME,'
      '    SPR_SI_IO_CLASS.NAME as CLASS_NAME'
      'FROM'
      '    SPR_SI_IO SPR_SI_IO'
      
        '    LEFT OUTER JOIN USER1 USER_FIO ON SPR_SI_IO.ID_USER = USER_F' +
        'IO.ID'
      
        '    LEFT OUTER JOIN USER1 USER_FIO_OUT ON SPR_SI_IO.ID_USER_OUT ' +
        '= USER_FIO_OUT.ID'
      
        '    LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO.ID_SPR_GROUP_SI' +
        '_IO = SPR_GROUP_SI_IO.ID'
      
        '    LEFT OUTER JOIN SPR_STATUS_SI_IO ON SPR_SI_IO.ID_SPR_STATUS_' +
        'SI_IO = SPR_STATUS_SI_IO.ID'
      
        '    LEFT OUTER JOIN SPR_SI_IO_CLASS ON SPR_SI_IO.ID_SPR_SI_IO_CL' +
        'ASS =SPR_SI_IO_CLASS.ID'
      'ORDER BY'
      '    SPR_SI_IO.DATE_POVERKA_NEXT'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Transaction = tn_read_3
    Database = Base3
    AutoCommit = True
    Left = 72
    Top = 72
  end
  object DSetDriver_SI_IO: TDataSetDriverEh
    ProviderDataSet = DSet_SI_IO
    Left = 248
    Top = 64
  end
  object DSourse_SI_IO: TDataSource
    DataSet = MTable_SI_IO
    Left = 600
    Top = 64
  end
  object DSet_SPR_GROUP_SI_IO: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SPR_GROUP_SI_IO'
      'SET '
      '    NAME = :NAME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SPR_GROUP_SI_IO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SPR_GROUP_SI_IO('
      '    ID,'
      '    NAME'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SPR_GROUP_SI_IO.ID,'
      '    SPR_GROUP_SI_IO.NAME'
      'FROM'
      '    SPR_GROUP_SI_IO SPR_GROUP_SI_IO'
      ''
      ' WHERE '
      '        SPR_GROUP_SI_IO.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SPR_GROUP_SI_IO.ID,'
      '    SPR_GROUP_SI_IO.NAME'
      'FROM'
      '    SPR_GROUP_SI_IO SPR_GROUP_SI_IO')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    AutoCommit = True
    Left = 72
    Top = 112
  end
  object DDriver_SPR_GROUP_SI_IO: TDataSetDriverEh
    ProviderDataSet = DSet_SPR_GROUP_SI_IO
    Left = 248
    Top = 112
  end
  object MTable_SPR_GROUP_SI_IO: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DDriver_SPR_GROUP_SI_IO
    Left = 424
    Top = 112
  end
  object DSourse_SPR_GROUP_SI_IO: TDataSource
    DataSet = MTable_SPR_GROUP_SI_IO
    Left = 600
    Top = 112
  end
  object DSet_USER_SI_IO: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USER1'
      'SET '
      '    ID_PARENT = :ID_PARENT,'
      '    DATA = :DATA,'
      '    FAMILIE = :FAMILIE,'
      '    NAME = :NAME,'
      '    OTCHEST = :OTCHEST,'
      '    LOGIN_NAME = :LOGIN_NAME,'
      '    PRIZ_SI_IO = :PRIZ_SI_IO'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USER1'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USER1('
      '    ID,'
      '    ID_PARENT,'
      '    DATA,'
      '    FAMILIE,'
      '    NAME,'
      '    OTCHEST,'
      '    LOGIN_NAME,'
      '    PRIZ_SI_IO'
      ')'
      'VALUES('
      '    :ID,'
      '    :ID_PARENT,'
      '    :DATA,'
      '    :FAMILIE,'
      '    :NAME,'
      '    :OTCHEST,'
      '    :LOGIN_NAME,'
      '    :PRIZ_SI_IO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    USER1.ID,'
      '    USER1.ID_PARENT,'
      '    USER1.DATA,'
      '    USER1.FAMILIE,'
      '    USER1.NAME,'
      '    USER1.OTCHEST,'
      '    USER1.FIO,'
      '    USER1.LOGIN_NAME,'
      '    USER1.PRIZ_SI_IO,'
      '    SPR_PRIVILEG_SI_IO.NAME'
      'FROM'
      '    USER1 USER1'
      
        '    LEFT OUTER JOIN SPR_PRIVILEG_SI_IO ON USER1.PRIZ_SI_IO = SPR' +
        '_PRIVILEG_SI_IO.ID'
      ''
      ''
      ' WHERE '
      '        USER1.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    USER1.ID,'
      '    USER1.ID_PARENT,'
      '    USER1.DATA,'
      '    USER1.FAMILIE,'
      '    USER1.NAME,'
      '    USER1.OTCHEST,'
      '    USER1.FIO,'
      '    USER1.LOGIN_NAME,'
      '    USER1.PRIZ_SI_IO,'
      '    SPR_PRIVILEG_SI_IO.NAME'
      'FROM'
      '    USER1 USER1'
      
        '    LEFT OUTER JOIN SPR_PRIVILEG_SI_IO ON USER1.PRIZ_SI_IO = SPR' +
        '_PRIVILEG_SI_IO.ID'
      '')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    AutoCommit = True
    Left = 72
    Top = 160
  end
  object DDriver_USER_SI_IO: TDataSetDriverEh
    ProviderDataSet = DSet_USER_SI_IO
    Left = 248
    Top = 160
  end
  object MTable_USER_SI_IO: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DDriver_USER_SI_IO
    Left = 424
    Top = 160
  end
  object DSourse_USER_SI_IO: TDataSource
    DataSet = MTable_USER_SI_IO
    Left = 600
    Top = 160
  end
  object MTable_SI_IO: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DSetDriver_SI_IO
    AfterOpen = MTable_SI_IOAfterOpen
    AfterScroll = MTable_SI_IOAfterScroll
    Left = 424
    Top = 64
  end
  object DSourse_USER: TDataSource
    DataSet = DSet_USER
    Left = 936
    Top = 64
  end
  object Base2: TpFIBDatabase
    DBName = 'D:\FireBird_DB\Production.FDB'
    DBParams.Strings = (
      'password=masterkey'
      'user_name=SYSDBA')
    DefaultTransaction = tn_read_2
    DefaultUpdateTransaction = tn_write_2
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 216
    Top = 16
  end
  object tn_read_2: TpFIBTransaction
    DefaultDatabase = Base2
    TimeoutAction = TARollback
    Left = 280
    Top = 16
  end
  object tn_write_2: TpFIBTransaction
    DefaultDatabase = Base2
    TimeoutAction = TARollback
    Left = 344
    Top = 16
  end
  object DSet_COMMENT: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE COMMENT_IO'
      'SET '
      '    CREATE_DATE = :CREATE_DATE,'
      '    CREATE_USER = :CREATE_USER,'
      '    ZAYAVKA = :ZAYAVKA,'
      '    PRIORITY = :PRIORITY,'
      '    "MESSAGE" = :"MESSAGE",'
      '    STATUS = :STATUS,'
      '    END_DATE = :END_DATE'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    COMMENT_IO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO COMMENT_IO('
      '    ID,'
      '    CREATE_DATE,'
      '    CREATE_USER,'
      '    ZAYAVKA,'
      '    PRIORITY,'
      '    "MESSAGE",'
      '    STATUS,'
      '    END_DATE'
      ')'
      'VALUES('
      '    :ID,'
      '    :CREATE_DATE,'
      '    :CREATE_USER,'
      '    :ZAYAVKA,'
      '    :PRIORITY,'
      '    :"MESSAGE",'
      '    :STATUS,'
      '    :END_DATE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    COMMENT_IO.ID,'
      '    COMMENT_IO.CREATE_DATE,'
      '    COMMENT_IO.CREATE_USER,'
      '    COMMENT_IO.ZAYAVKA,'
      '    COMMENT_IO.PRIORITY,'
      '    COMMENT_IO."MESSAGE",'
      '    COMMENT_IO.STATUS,'
      '    COMMENT_IO.END_DATE'
      'FROM'
      '    COMMENT_IO COMMENT_IO'
      ' '
      ' WHERE '
      '        COMMENT_IO.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    COMMENT_IO.ID,'
      '    COMMENT_IO.CREATE_DATE,'
      '    COMMENT_IO.CREATE_USER,'
      '    COMMENT_IO.ZAYAVKA,'
      '    COMMENT_IO.PRIORITY,'
      '    COMMENT_IO."MESSAGE",'
      '    COMMENT_IO.STATUS,'
      '    COMMENT_IO.END_DATE'
      'FROM'
      '    COMMENT_IO COMMENT_IO'
      'ORDER BY'
      '    COMMENT_IO.CREATE_DATE'
      '')
    Transaction = tn_read_2
    Database = Base2
    AutoCommit = True
    Left = 72
    Top = 208
  end
  object DDriver_COMMENT: TDataSetDriverEh
    ProviderDataSet = DSet_COMMENT
    Left = 248
    Top = 208
  end
  object MTable_COMMENT: TMemTableEh
    Params = <>
    DataDriver = DDriver_COMMENT
    AfterScroll = MTable_COMMENTAfterScroll
    Left = 424
    Top = 208
    object intgrfldMemTable_COMMENTID: TIntegerField
      FieldName = 'ID'
    end
    object dtmfldMemTable_COMMENTCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object strngfldMemTable_COMMENTCREATE_USER: TStringField
      FieldName = 'CREATE_USER'
      Size = 60
    end
    object blbfldMemTable_COMMENTZAYAVKA: TBlobField
      FieldName = 'ZAYAVKA'
      BlobType = ftMemo
    end
    object strngfldMemTable_COMMENTPRIORITY: TStringField
      FieldName = 'PRIORITY'
      Size = 30
    end
    object blbfldMemTable_COMMENTMESSAGE: TBlobField
      FieldName = 'MESSAGE'
      BlobType = ftMemo
    end
    object strngfldMemTable_COMMENTSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object dtmfldMemTable_COMMENTEND_DATE: TDateTimeField
      FieldName = 'END_DATE'
    end
  end
  object DSourse_COMMENT: TDataSource
    DataSet = MTable_COMMENT
    Left = 600
    Top = 208
  end
  object MTable_Memory: TMemTableEh
    Params = <>
    Left = 760
    Top = 16
  end
  object DSourse_Memory: TDataSource
    DataSet = MTable_Memory
    Left = 936
    Top = 16
  end
  object DSet_POVERKA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SI_IO_POVERKA'
      'SET'
      '    ID_SPR_SI_IO = :ID_SPR_SI_IO,'
      '    DATE_POVERKA = :DATE_POVERKA,'
      '    DATE_NEXT_POVERKA = :DATE_NEXT_POVERKA,'
      '    NUM_ATTESTAT = :NUM_ATTESTAT,'
      '    ID_KONTRAGENT = :ID_KONTRAGENT,'
      '    NUM_ACCOUNT = :NUM_ACCOUNT,'
      '    DATE_ACCOUNT = :DATE_ACCOUNT,'
      '    PATH = :PATH'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SI_IO_POVERKA'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SI_IO_POVERKA('
      '    ID,'
      '    ID_SPR_SI_IO,'
      '    DATE_POVERKA,'
      '    DATE_NEXT_POVERKA,'
      '    NUM_ATTESTAT,'
      '    ID_KONTRAGENT,'
      '    NUM_ACCOUNT,'
      '    DATE_ACCOUNT,'
      '    PATH'
      ')'
      'VALUES('
      '    :ID,'
      '    :ID_SPR_SI_IO,'
      '    :DATE_POVERKA,'
      '    :DATE_NEXT_POVERKA,'
      '    :NUM_ATTESTAT,'
      '    :ID_KONTRAGENT,'
      '    :NUM_ACCOUNT,'
      '    :DATE_ACCOUNT,'
      '    :PATH'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SI_IO_POVERKA.ID,'
      '    SI_IO_POVERKA.ID_SPR_SI_IO,'
      '    SI_IO_POVERKA.DATE_POVERKA,'
      '    SI_IO_POVERKA.DATE_NEXT_POVERKA,'
      '    SI_IO_POVERKA.NUM_ATTESTAT,'
      '    SI_IO_POVERKA.ID_KONTRAGENT,'
      '    SI_IO_POVERKA.NUM_ACCOUNT,'
      '    SI_IO_POVERKA.DATE_ACCOUNT,'
      '    SI_IO_POVERKA.PATH,'
      '    SPR_SI_IO.NAME,'
      '    KONTRAGENT.NAME'
      'FROM'
      '    SI_IO_POVERKA SI_IO_POVERKA'
      
        '    LEFT OUTER JOIN SPR_SI_IO ON SI_IO_POVERKA.ID_SPR_SI_IO = SP' +
        'R_SI_IO.ID'
      
        '    LEFT OUTER JOIN KONTRAGENT ON SI_IO_POVERKA.ID_KONTRAGENT = ' +
        'KONTRAGENT.ID'
      ''
      ' WHERE '
      '        SI_IO_POVERKA.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SI_IO_POVERKA.ID,'
      '    SI_IO_POVERKA.ID_SPR_SI_IO,'
      '    SI_IO_POVERKA.DATE_POVERKA,'
      '    SI_IO_POVERKA.DATE_NEXT_POVERKA,'
      '    SI_IO_POVERKA.NUM_ATTESTAT,'
      '    SI_IO_POVERKA.ID_KONTRAGENT,'
      '    SI_IO_POVERKA.NUM_ACCOUNT,'
      '    SI_IO_POVERKA.DATE_ACCOUNT,'
      '    SI_IO_POVERKA.PATH,'
      '    SPR_SI_IO.NAME,'
      '    KONTRAGENT.NAME'
      'FROM'
      '    SI_IO_POVERKA SI_IO_POVERKA'
      
        '    LEFT OUTER JOIN SPR_SI_IO ON SI_IO_POVERKA.ID_SPR_SI_IO = SP' +
        'R_SI_IO.ID'
      
        '    LEFT OUTER JOIN KONTRAGENT ON SI_IO_POVERKA.ID_KONTRAGENT = ' +
        'KONTRAGENT.ID')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    AutoCommit = True
    Left = 72
    Top = 256
  end
  object DSet_REMONT: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SI_IO_REMONT'
      'SET '
      '    ID_SPR_SI_IO = :ID_SPR_SI_IO,'
      '    DATE_DEFEKT = :DATE_DEFEKT,'
      '    DATE_START_REMONT = :DATE_START_REMONT,'
      '    DATE_END_REMONT = :DATE_END_REMONT,'
      '    ID_KONTRAGENT = :ID_KONTRAGENT,'
      '    NUM_ACCOUNT = :NUM_ACCOUNT,'
      '    DATE_ACCOUNT = :DATE_ACCOUNT,'
      '    PRIM = :PRIM'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SI_IO_REMONT'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SI_IO_REMONT('
      '    ID,'
      '    ID_SPR_SI_IO,'
      '    DATE_DEFEKT,'
      '    DATE_START_REMONT,'
      '    DATE_END_REMONT,'
      '    ID_KONTRAGENT,'
      '    NUM_ACCOUNT,'
      '    DATE_ACCOUNT,'
      '    PRIM'
      ')'
      'VALUES('
      '    :ID,'
      '    :ID_SPR_SI_IO,'
      '    :DATE_DEFEKT,'
      '    :DATE_START_REMONT,'
      '    :DATE_END_REMONT,'
      '    :ID_KONTRAGENT,'
      '    :NUM_ACCOUNT,'
      '    :DATE_ACCOUNT,'
      '    :PRIM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SI_IO_REMONT.ID,'
      '    SI_IO_REMONT.ID_SPR_SI_IO,'
      '    SI_IO_REMONT.DATE_DEFEKT,'
      '    SI_IO_REMONT.DATE_START_REMONT,'
      '    SI_IO_REMONT.DATE_END_REMONT,'
      '    SI_IO_REMONT.ID_KONTRAGENT,'
      '    SI_IO_REMONT.NUM_ACCOUNT,'
      '    SI_IO_REMONT.DATE_ACCOUNT,'
      '    SI_IO_REMONT.PRIM'
      'FROM'
      '    SI_IO_REMONT SI_IO_REMONT'
      
        '    LEFT OUTER JOIN KONTRAGENT ON SI_IO_REMONT.ID_KONTRAGENT = K' +
        'ONTRAGENT.ID'
      ''
      ' WHERE '
      '        SI_IO_REMONT.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SI_IO_REMONT.ID,'
      '    SI_IO_REMONT.ID_SPR_SI_IO,'
      '    SI_IO_REMONT.DATE_DEFEKT,'
      '    SI_IO_REMONT.DATE_START_REMONT,'
      '    SI_IO_REMONT.DATE_END_REMONT,'
      '    SI_IO_REMONT.ID_KONTRAGENT,'
      '    SI_IO_REMONT.NUM_ACCOUNT,'
      '    SI_IO_REMONT.DATE_ACCOUNT,'
      '    SI_IO_REMONT.PRIM'
      'FROM'
      '    SI_IO_REMONT SI_IO_REMONT'
      
        '    LEFT OUTER JOIN KONTRAGENT ON SI_IO_REMONT.ID_KONTRAGENT = K' +
        'ONTRAGENT.ID')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    Left = 72
    Top = 304
  end
  object MTable_POVERKA: TMemTableEh
    Params = <>
    DataDriver = DDriver_POVERKA
    AfterOpen = MTable_POVERKAAfterOpen
    Left = 424
    Top = 256
  end
  object MTable_REMONT: TMemTableEh
    Params = <>
    DataDriver = DDriver_REMONT
    Left = 424
    Top = 304
  end
  object DDriver_POVERKA: TDataSetDriverEh
    ProviderDataSet = DSet_POVERKA
    Left = 248
    Top = 256
  end
  object DDriver_REMONT: TDataSetDriverEh
    ProviderDataSet = DSet_REMONT
    Left = 248
    Top = 304
  end
  object DSourse_POVERKA: TDataSource
    DataSet = MTable_POVERKA
    Left = 600
    Top = 256
  end
  object DSourse_REMONT: TDataSource
    DataSet = DSet_REMONT
    Left = 600
    Top = 304
  end
  object DSet_KONTRAGENT: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE KONTRAGENT'
      'SET '
      '    DATE1 = :DATE1,'
      '    SNAME = :SNAME,'
      '    NAME = :NAME,'
      '    ID_REGION = :ID_REGION,'
      '    NAME_REG = :NAME_REG,'
      '    ADR_MAIL = :ADR_MAIL,'
      '    ADR_JURID = :ADR_JURID,'
      '    KONT_FAICE = :KONT_FAICE,'
      '    TEL_KONT = :TEL_KONT,'
      '    TEL_BUCH = :TEL_BUCH,'
      '    TEL_RUKOV = :TEL_RUKOV,'
      '    FAX = :FAX,'
      '    E_MAIL = :E_MAIL,'
      '    ID_USER1 = :ID_USER1,'
      '    PRIM = :PRIM,'
      '    PRIZ1 = :PRIZ1,'
      '    PRIZ_2 = :PRIZ_2,'
      '    INN = :INN,'
      '    KPP = :KPP,'
      '    SI_IO = :SI_IO'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    KONTRAGENT'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO KONTRAGENT('
      '    ID,'
      '    DATE1,'
      '    SNAME,'
      '    NAME,'
      '    ID_REGION,'
      '    NAME_REG,'
      '    ADR_MAIL,'
      '    ADR_JURID,'
      '    KONT_FAICE,'
      '    TEL_KONT,'
      '    TEL_BUCH,'
      '    TEL_RUKOV,'
      '    FAX,'
      '    E_MAIL,'
      '    ID_USER1,'
      '    PRIM,'
      '    PRIZ1,'
      '    PRIZ_2,'
      '    INN,'
      '    KPP,'
      '    SI_IO'
      ')'
      'VALUES('
      '    :ID,'
      '    :DATE1,'
      '    :SNAME,'
      '    :NAME,'
      '    :ID_REGION,'
      '    :NAME_REG,'
      '    :ADR_MAIL,'
      '    :ADR_JURID,'
      '    :KONT_FAICE,'
      '    :TEL_KONT,'
      '    :TEL_BUCH,'
      '    :TEL_RUKOV,'
      '    :FAX,'
      '    :E_MAIL,'
      '    :ID_USER1,'
      '    :PRIM,'
      '    :PRIZ1,'
      '    :PRIZ_2,'
      '    :INN,'
      '    :KPP,'
      '    :SI_IO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    KONTRAGENT.ID,'
      '    KONTRAGENT.DATE1,'
      '    KONTRAGENT.SNAME,'
      '    KONTRAGENT.NAME,'
      '    KONTRAGENT.ID_REGION,'
      '    KONTRAGENT.NAME_REG,'
      '    KONTRAGENT.ADR_MAIL,'
      '    KONTRAGENT.ADR_JURID,'
      '    KONTRAGENT.KONT_FAICE,'
      '    KONTRAGENT.TEL_KONT,'
      '    KONTRAGENT.TEL_BUCH,'
      '    KONTRAGENT.TEL_RUKOV,'
      '    KONTRAGENT.FAX,'
      '    KONTRAGENT.E_MAIL,'
      '    KONTRAGENT.ID_USER1,'
      '    KONTRAGENT.PRIM,'
      '    KONTRAGENT.PRIZ1,'
      '    KONTRAGENT.PRIZ_2,'
      '    KONTRAGENT.INN,'
      '    KONTRAGENT.KPP,'
      '    KONTRAGENT.SI_IO'
      'FROM'
      '    KONTRAGENT KONTRAGENT'
      ''
      ' WHERE '
      '        KONTRAGENT.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    KONTRAGENT.ID,'
      '    KONTRAGENT.DATE1,'
      '    KONTRAGENT.SNAME,'
      '    KONTRAGENT.NAME,'
      '    KONTRAGENT.ID_REGION,'
      '    KONTRAGENT.NAME_REG,'
      '    KONTRAGENT.ADR_MAIL,'
      '    KONTRAGENT.ADR_JURID,'
      '    KONTRAGENT.KONT_FAICE,'
      '    KONTRAGENT.TEL_KONT,'
      '    KONTRAGENT.TEL_BUCH,'
      '    KONTRAGENT.TEL_RUKOV,'
      '    KONTRAGENT.FAX,'
      '    KONTRAGENT.E_MAIL,'
      '    KONTRAGENT.ID_USER1,'
      '    KONTRAGENT.PRIM,'
      '    KONTRAGENT.PRIZ1,'
      '    KONTRAGENT.PRIZ_2,'
      '    KONTRAGENT.INN,'
      '    KONTRAGENT.KPP,'
      '    KONTRAGENT.SI_IO'
      'FROM'
      '    KONTRAGENT KONTRAGENT')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    AutoCommit = True
    Left = 72
    Top = 352
  end
  object DDriver_KONTRAGENT: TDataSetDriverEh
    ProviderDataSet = DSet_KONTRAGENT
    Left = 248
    Top = 352
  end
  object MTable_KONTRAGENT: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DDriver_KONTRAGENT
    Left = 424
    Top = 352
  end
  object DSourse_KONTRAGENT: TDataSource
    DataSet = MTable_KONTRAGENT
    Left = 600
    Top = 352
  end
  object DSet_KONTRAGENT_LOOK: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '  KONTRAGENT.ID,'
      '  KONTRAGENT.SNAME'
      'FROM'
      '  KONTRAGENT KONTRAGENT'
      'WHERE'
      '  SI_IO=1 ')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    Left = 760
    Top = 112
  end
  object DSourse_KONTRAGENT_LOOK: TDataSource
    DataSet = DSet_KONTRAGENT_LOOK
    Left = 936
    Top = 112
  end
  object DSourse_SPR_SI_IO_CLASS: TDataSource
    DataSet = MTable_SPR_SI_IO_CLASS
    Left = 600
    Top = 400
  end
  object DSet_SPR_SI_IO_CLASS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SPR_SI_IO_CLASS'
      'SET '
      '    NAME = :NAME,'
      '    PRIORITET = :PRIORITET,'
      '    ID_SPR_GROUP_SI_IO = :ID_SPR_GROUP_SI_IO'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SPR_SI_IO_CLASS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SPR_SI_IO_CLASS('
      '    ID,'
      '    NAME,'
      '    PRIORITET,'
      '    ID_SPR_GROUP_SI_IO'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :PRIORITET,'
      '    :ID_SPR_GROUP_SI_IO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SPR_SI_IO_CLASS.ID,'
      '    SPR_SI_IO_CLASS.NAME,'
      '    SPR_SI_IO_CLASS.PRIORITET,'
      '    SPR_SI_IO_CLASS.ID_SPR_GROUP_SI_IO,'
      '    SPR_GROUP_SI_IO.NAME as GROUP_NAME'
      'FROM'
      '    SPR_SI_IO_CLASS SPR_SI_IO_CLASS'
      
        '    LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO_CLASS.ID_SPR_GR' +
        'OUP_SI_IO = SPR_GROUP_SI_IO.ID'
      ''
      ' WHERE '
      '        SPR_SI_IO_CLASS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SPR_SI_IO_CLASS.ID,'
      '    SPR_SI_IO_CLASS.NAME,'
      '    SPR_SI_IO_CLASS.PRIORITET,'
      '    SPR_SI_IO_CLASS.ID_SPR_GROUP_SI_IO,'
      '    SPR_GROUP_SI_IO.NAME as GROUP_NAME'
      'FROM'
      '    SPR_SI_IO_CLASS SPR_SI_IO_CLASS'
      
        '    LEFT OUTER JOIN SPR_GROUP_SI_IO ON SPR_SI_IO_CLASS.ID_SPR_GR' +
        'OUP_SI_IO = SPR_GROUP_SI_IO.ID')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    AutoCommit = True
    Left = 72
    Top = 400
  end
  object MTable_SPR_SI_IO_CLASS: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DDriver_SPR_SI_IO_CLASS
    Left = 424
    Top = 400
  end
  object DDriver_SPR_SI_IO_CLASS: TDataSetDriverEh
    ProviderDataSet = DSet_SPR_SI_IO_CLASS
    Left = 248
    Top = 400
  end
  object MTable_SPR_STATUS_SI_IO: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DDriver_SPR_STATUS_SI_IO
    Left = 424
    Top = 448
  end
  object DSourse_SPR_STATUS_SI_IO: TDataSource
    DataSet = MTable_SPR_STATUS_SI_IO
    Left = 600
    Top = 448
  end
  object DSet_SPR_STATUS_SI_IO: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SPR_STATUS_SI_IO'
      'SET '
      '    NAME = :NAME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SPR_STATUS_SI_IO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SPR_STATUS_SI_IO('
      '    ID,'
      '    NAME'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SPR_STATUS_SI_IO.ID,'
      '    SPR_STATUS_SI_IO.NAME'
      'FROM'
      '    SPR_STATUS_SI_IO SPR_STATUS_SI_IO'
      ''
      ' WHERE '
      '        SPR_STATUS_SI_IO.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SPR_STATUS_SI_IO.ID,'
      '    SPR_STATUS_SI_IO.NAME'
      'FROM'
      '    SPR_STATUS_SI_IO SPR_STATUS_SI_IO')
    Transaction = tn_read_3
    Database = Base3
    UpdateTransaction = tn_write_3
    Left = 72
    Top = 448
  end
  object DDriver_SPR_STATUS_SI_IO: TDataSetDriverEh
    ProviderDataSet = DSet_SPR_STATUS_SI_IO
    Left = 248
    Top = 448
  end
end
