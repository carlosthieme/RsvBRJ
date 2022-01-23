unit Makedb;

{Table Scanner V2.02 [by demian@bhnet.com.br]}
{Code generated on Sábado, Noviembre 25, 2000 at 08:22 PM}

{$T-}

Interface

Uses Classes,SysUtils,Forms,Controls,DB,DBTables,DBIProcs,DBITypes,DBIErrs;

Type
  TCBInfo = function(const iPosition,iMax: integer; const sTable: string): boolean;

procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);

Implementation

Type
  Stored_Tables = (Usuarios_db,Clientes_db,Correlativos_db,Mesas_db,
                   Movimientos_db,Pagos_db,Precios_db,Caja_db);
  TFieldsDesc   = array[0..MaxInt div SizeOf(FLDDesc)-1] of FLDDesc;
  TIndexesDesc  = array[0..MaxInt div SizeOf(IDXDesc)-1] of IDXDesc;
  TIndexesOp    = array[0..MaxInt div SizeOf(CROpType)-1] of CROpType;
  
Var
  szDirectory : DBIPATH;
  LangDrv     : string;
  OptParams   : FLDDesc;
  TableDesc   : pCRTblDesc;
  iField      : integer;
  FieldsDesc  : ^TFieldsDesc;
  iIndex      : integer;
  IndexesDesc : ^TIndexesDesc;
  IndexesOp   : ^TIndexesOp;
  
{______________________________________________________________________________}
function AnsiName(const NativeStr: PChar): string;
begin
  NativeToAnsi(Session.Locale,NativeStr,result);
end;

{______________________________________________________________________________}
procedure DeleteFiles(sMask: string);
var
  SearchRec: TSearchRec;
begin
  if FindFirst(sMask,faAnyFile,SearchRec) = 0 then begin
    sMask := ExtractFilePath(sMask);
    SysUtils.DeleteFile(sMask+SearchRec.Name);
    while FindNext(SearchRec) = 0 do
      SysUtils.DeleteFile(sMask+SearchRec.Name);
    FindClose(SearchRec);
  end;
end;

{______________________________________________________________________________}
procedure DeleteAuxFiles;
var
  sFileName: string;
  f: file of byte;
  b: byte;
begin
  sFileName := AnsiName(szDirectory)+AnsiName(TableDesc^.szTblName);
  if StrComp(TableDesc^.szTblType,szParadox) = 0 then begin
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.PX'));
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.VAL'));
    DeleteFiles(ChangeFileExt(sFileName,'.X*'));
    DeleteFiles(ChangeFileExt(sFileName,'.Y*'));
    end
  else begin
    assignFile(f,ChangeFileExt(sFileName,'.DBF'));
    reset(f);
    try
      seek(f,28);
      b := 0;
      write(f,b);
      SysUtils.DeleteFile(ChangeFileExt(sFileName,'.MDX'));
    finally
      closefile(f);
    end;
  end;
end;

{______________________________________________________________________________}
procedure DefField(const sName: string;
                   const iAFldType,iASubType,iAUnits1,iAUnits2: integer);
begin
  with FieldsDesc^[iField] do begin
    StrPCopy(szName,sName);
    iFldNum  := iField;
    iFldType := iAFldType;
    iSubType := iASubType;
    iUnits1  := iAUnits1;
    iUnits2  := iAUnits2;
  end;
  Inc(iField);
end;

{______________________________________________________________________________}
procedure DefIndex(const sName,sTagName,sFormat,sKeyExp,sKeyCond: string;
                   const aFields: array of integer;
                   const iAIndexID,iAFldsInKey,iAKeyLen,
                         iAKeyExptype,iABlockSize,iARestrNum,iIDXFlags: integer);
var
  i: integer;
begin
  IndexesOp^[iIndex] := crAdd;
  with IndexesDesc^[iIndex] do begin
    StrPCopy(szName,sName);
    iIndexId := iAIndexId;
    StrPCopy(szTagName,sTagName);
    StrPCopy(szFormat,sFormat);
    StrPCopy(szKeyExp,sKeyExp);
    StrPCopy(szKeyCond,sKeyCond);
    iFldsInkey  := iAFldsInkey;
    iKeyLen     := iAKeyLen;
    iKeyExpType := iAKeyExpType;
    iBlocksize  := iABlocksize;
    iRestrNum   := iARestrNum;
    bPrimary         := (iIDXFlags and (1 shl 1)) <> 0;
    bUnique          := (iIDXFlags and (1 shl 2)) <> 0;
    bDescending      := (iIDXFlags and (1 shl 3)) <> 0;
    bMaintained      := (iIDXFlags and (1 shl 4)) <> 0;
    bSubset          := (iIDXFlags and (1 shl 5)) <> 0;
    bExpIdx          := (iIDXFlags and (1 shl 6)) <> 0;
    bCaseInsensitive := (iIDXFlags and (1 shl 7)) <> 0;
    bOutofDate       := false;
    FillChar(aiKeyFld,SizeOf(aiKeyFld),#0);
    for i := Low(aFields) to High(aFields) do
      aiKeyFld[i] := aFields[i];
  end;
  Inc(iIndex);
end;

{______________________________________________________________________________}
procedure DefTable(const sName,sType,sPassword,sLangDriver: string;
                   const iAFldCount,iAIDXCount,iAValChkCount,iARintCount: integer);
begin
  {Get memory - Table}
  TableDesc := AllocMem(SizeOf(CRTblDesc));
  {Get memory - Fields}
  FieldsDesc := AllocMem(iAFldCount*SizeOf(FLDDesc));
  {Get memory - Indexes}
  IndexesDesc := AllocMem(iAIDXCount*SizeOf(IDXDesc));
  IndexesOp := AllocMem(iAIDXCount*SizeOf(CROpType));
  {Fill records}
  with TableDesc^ do begin
    {Fill record - Table}
    AnsiToNative(Session.Locale,sName,szTblName,length(sName));
    StrPCopy(szTblType,sType);
    bProtected := (sPassword <> '');
    if bProtected then begin
      StrPCopy(szPassword,sPassword);
      Session.AddPassword(sPassword);
    end;
    bPack := true;
    {Fill record - Language Driver}
    iOptParams := 1;
    FillChar(OptParams,SizeOf(FLDDESC),#0);
    with OptParams do begin
      StrPCopy(szName,szCFGDRVLANGDRIVER);
      iOffset := 0;
      iLen := Length(sLangDriver)+1;
    end;
    pFldOptParams := @OptParams;
    LangDrv := sLangDriver;
    pOptData := @LangDrv[1];
    {Fill record - Fields}
    iFldCount := iAFldCount;
    pFldDesc := @FieldsDesc^;
    {Fill record - Indexes}
    iIDXCount := iAIDXCount;
    pIDXDesc := @IndexesDesc^;
    pecrIDXOp := @IndexesOp^;
  end;
end;

{______________________________________________________________________________}
procedure StoredUsuarios_db;
begin
  DefTable('Usuarios.DB','PARADOX','','DBWINUS0',8,1,0,0);
  DefField('Identifica',fldZSTRING,0,30,0);
  DefField('Clave',fldZSTRING,0,10,0);
  DefField('Nombre',fldZSTRING,0,60,0);
  DefField('Cajero',fldBOOL,0,1,0);
  DefField('Vendedor',fldBOOL,0,1,0);
  DefField('CajaVenta',fldBOOL,0,1,0);
  DefField('Supervisor',fldBOOL,0,1,0);
  DefField('Correlativos',fldBOOL,0,1,0);
  DefIndex('','','','','',[1],0,1,30,0,2048,1,22);
end;

{______________________________________________________________________________}
procedure StoredClientes_db;
begin
  DefTable('Clientes.DB','PARADOX','','DBWINUS0',4,1,0,0);
  DefField('Apellidos',fldZSTRING,0,60,0);
  DefField('Nombres',fldZSTRING,0,60,0);
  DefField('Telefono',fldZSTRING,0,20,0);
  DefField('Fechaingreso',fldDATE,0,1,0);
  DefIndex('','','','','',[1,2,3],0,3,140,0,2048,1,22);
end;

{______________________________________________________________________________}
procedure StoredCorrelativos_db;
begin
  DefTable('Correlativos.DB','PARADOX','','DBWINUS0',4,1,0,0);
  DefField('TERMINAL',fldZSTRING,0,30,0);
  DefField('BOLETA',fldFLOAT,0,1,0);
  DefField('RESERVA',fldFLOAT,0,1,0);
  DefField('FECHATRABAJO',fldDATE,0,1,0);
  DefIndex('','','','','',[1],0,1,30,0,2048,1,22);
end;

{______________________________________________________________________________}
procedure StoredMesas_db;
begin
  DefTable('Mesas.db','PARADOX','','DBWINUS0',5,3,0,0);
  DefField('Numesa',fldINT16,0,1,0);
  DefField('Sector',fldZSTRING,0,30,0);
  DefField('Capmin',fldINT16,0,1,0);
  DefField('Capmax',fldINT16,0,1,0);
  DefField('Estado',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,2,0,2048,1,22);
  DefIndex('SectorMesa','','','','',[2],257,1,30,0,2048,2,144);
  DefIndex('EstadoMesa','','','','',[5],256,1,30,0,2048,3,144);
end;

{______________________________________________________________________________}
procedure StoredMovimientos_db;
begin
  DefTable('Movimientos.DB','PARADOX','','DBWINUS0',24,6,0,0);
  DefField('Nureserva',fldFLOAT,0,1,0);
  DefField('Nuboleta',fldFLOAT,0,1,0);
  DefField('Fechareserva',fldDATE,0,1,0);
  DefField('Tiporeserva',fldZSTRING,0,60,0);
  DefField('Apellido',fldZSTRING,0,60,0);
  DefField('Nombres',fldZSTRING,0,60,0);
  DefField('Adultoscena',fldINT16,0,1,0);
  DefField('Adultostrad',fldINT16,0,1,0);
  DefField('Adultoscup',fldINT16,0,1,0);
  DefField('Ninos',fldINT16,0,1,0);
  DefField('Mesappal',fldINT16,0,1,0);
  DefField('Adic1',fldINT16,0,1,0);
  DefField('Adic2',fldINT16,0,1,0);
  DefField('Adic3',fldINT16,0,1,0);
  DefField('Adic4',fldINT16,0,1,0);
  DefField('Adic5',fldINT16,0,1,0);
  DefField('Adic6',fldINT16,0,1,0);
  DefField('Adic7',fldINT16,0,1,0);
  DefField('Adic8',fldINT16,0,1,0);
  DefField('Adic9',fldINT16,0,1,0);
  DefField('Adic10',fldINT16,0,1,0);
  DefField('Estadoreserva',fldZSTRING,0,30,0);
  DefField('Valorpagado',fldFLOAT,0,1,0);
  DefField('Sector',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,8,0,2048,1,22);
  DefIndex('SectorMov','','','','',[24],259,1,30,0,2048,2,144);
  DefIndex('FechaMov','','','','',[3],260,1,4,0,2048,3,144);
  DefIndex('MesaMov','','','','',[11],258,1,2,0,2048,4,144);
  DefIndex('ApellidoMov','','','','',[5],257,1,60,0,2048,5,144);
  DefIndex('BoletaMov','','','','',[2],256,1,8,0,2048,6,144);
end;

{______________________________________________________________________________}
procedure StoredPagos_db;
begin
  DefTable('Pagos.DB','PARADOX','','DBWINUS0',7,0,0,0);
  DefField('NumRes',fldFLOAT,0,1,0);
  DefField('FormaPago',fldZSTRING,0,30,0);
  DefField('Banco',fldZSTRING,0,60,0);
  DefField('Cuenta',fldZSTRING,0,30,0);
  DefField('Docto',fldZSTRING,0,30,0);
  DefField('Titular',fldZSTRING,0,60,0);
  DefField('Vencimiento',fldDATE,0,1,0);
end;

{______________________________________________________________________________}
procedure StoredPrecios_db;
begin
  DefTable('Precios.DB','PARADOX','','DBWINUS0',4,0,0,0);
  DefField('AdultosCena',fldFLOAT,0,1,0);
  DefField('AdultosTrad',fldFLOAT,0,1,0);
  DefField('AdultosDisco',fldFLOAT,0,1,0);
  DefField('Ninos',fldFLOAT,0,1,0);
end;

{______________________________________________________________________________}
procedure StoredCaja_db;
begin
  DefTable('Caja.DB','PARADOX','','DBWINUS0',9,1,0,0);
  DefField('Terminal',fldZSTRING,0,30,0);
  DefField('Inicial',fldFLOAT,0,1,0);
  DefField('Final',fldFLOAT,0,1,0);
  DefField('FechaTrabajo',fldDATE,0,1,0);
  DefField('Estado',fldZSTRING,0,30,0);
  DefField('Fondo',fldFLOAT,0,1,0);
  DefField('Vendido',fldFLOAT,0,1,0);
  DefField('Boletas',fldINT16,0,1,0);
  DefField('UserOpen',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,30,0,2048,1,22);
end;

{______________________________________________________________________________}
procedure ReadStoredTable(iTable: Stored_Tables);
begin
  iField  := 0;
  iIndex  := 0;
  case iTable of
    Usuarios_db    : StoredUsuarios_db;
    Clientes_db    : StoredClientes_db;
    Correlativos_db: StoredCorrelativos_db;
    Mesas_db       : StoredMesas_db;
    Movimientos_db : StoredMovimientos_db;
    Pagos_db       : StoredPagos_db;
    Precios_db     : StoredPrecios_db;
    Caja_db        : StoredCaja_db;
  end;
end;

{______________________________________________________________________________}
procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);
var
  i: integer;
  DatasetList: TList;
  iTables: Stored_Tables;
begin
  if Assigned(CBInfo) and not CBInfo(0,Ord(High(iTables))+1,'') then
    Exit;
  Screen.Cursor := crHourGlass;
  DatasetList := TList.Create;
  try
    for i := Session.DatabaseCount-1 downto 0 do
      with Session.Databases[i] do
      while DatasetCount > 0 do begin
        DatasetList.Add(Datasets[0]);
        with Datasets[0] do begin
          DisableControls;
          Close;
        end;
      end;
    dbDatabase.Connected := true;
    Check(DbiGetDirectory(dbDatabase.Handle,False,szDirectory));
    {$IFNDEF WIN32}
    if szDirectory[StrLen(szDirectory)-1] <> '\' then
      szDirectory[StrLen(szDirectory)] := '\';
    {$ENDIF}
    for iTables := Low(iTables) to High(iTables) do try
      ReadStoredTable(iTables);
      if Assigned(CBInfo) and not CBInfo(Ord(iTables)+1,Ord(High(iTables))+1,AnsiName(TableDesc^.szTblName)) then
        Exit;
      if DBICreateTable(dbDatabase.Handle,false,TableDesc^) = DBIERR_FILEEXISTS then begin
        i := TableDesc^.iFldCount;
        try
          TableDesc^.iFldCount := 0;
          DeleteAuxFiles;
          Check(DBIDoRestructure(dbDatabase.Handle,1,@TableDesc^,nil,nil,nil,false));
        finally;
          TableDesc^.iFldCount := i;
        end;
      end;
    finally;
      FreeMem(FieldsDesc,TableDesc^.iFldCount*SizeOf(FLDDesc)); FieldsDesc := nil;
      FreeMem(IndexesOp,TableDesc^.iIDXCount*SizeOf(CROpType)); IndexesOp := nil;
      FreeMem(IndexesDesc,TableDesc^.iIDXCount*SizeOf(IDXDesc)); IndexesDesc := nil;
      FreeMem(TableDesc,SizeOf(CRTblDesc)); TableDesc := nil;
    end;
  finally
    for i := DatasetList.Count-1 downto 0 do
      with TDBDataset(DatasetList[i]) do try
        Open;
        EnableControls;
      except
      end;
    DatasetList.Free;
    Screen.Cursor := crDefault;
  end;
end;

end.
