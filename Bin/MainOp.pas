unit MainOp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, FileCtrl,
  Grids, DBGrids, ExtCtrls, StdCtrls, Spin, Buttons, ComCtrls, Db, DBTables, Registry,
  Backup;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    PCenaAd: TPanel;
    PCenaNi: TPanel;
    PDisco: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    SpinAdCena: TSpinEdit;
    SpinAdTrad: TSpinEdit;
    SpinAdDisco: TSpinEdit;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Panel20: TPanel;
    SpinNenes: TSpinEdit;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel21: TPanel;
    Panel41: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    btnRancho: TSpeedButton;
    btnTerraza: TSpeedButton;
    btnTradSur: TSpeedButton;
    btnCupula: TSpeedButton;
    btnComedor: TSpeedButton;
    btnTradNorte: TSpeedButton;
    btnPer1: TSpeedButton;
    btnPer2: TSpeedButton;
    btnPer3: TSpeedButton;
    StatusBar1: TStatusBar;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Bevel1: TBevel;
    btnBuscaReserva: TSpeedButton;
    btnRespaldo: TSpeedButton;
    btnReimprimir: TSpeedButton;
    btnCambiaCorrelativos: TSpeedButton;
    btnLimpiar: TSpeedButton;
    btnFinaliza: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Image1: TImage;
    tPagos: TTable;
    DataSource1: TDataSource;
    tPrecios: TTable;
    SourcePrecios: TDataSource;
    tClientes: TTable;
    SourceClientes: TDataSource;
    tMovs: TTable;
    SourceMovs: TDataSource;
    tMesas: TTable;
    SourceMesas: TDataSource;
    tCorre: TTable;
    SourceCorre: TDataSource;
    Grid: TDBGrid;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Timer1: TTimer;
    PFPago: TPanel;
    btnEfectivo: TSpeedButton;
    btnChequePerso: TSpeedButton;
    btnTarjeta: TSpeedButton;
    PCheque: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Label5: TLabel;
    SelFecha: TDateTimePicker;
    SpeedButton9: TSpeedButton;
    PTarjeta: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnCierraTarjeta: TSpeedButton;
    Edit7: TEdit;
    ComboBox2: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    SelFecha2: TDateTimePicker;
    tCaja: TTable;
    SourceCaja: TDataSource;
    tUser: TTable;
    SourceUser: TDataSource;
    SpeedButton10: TSpeedButton;
    PBusqueda: TPanel;
    Grid2: TDBGrid;
    Edit10: TEdit;
    btnAgregaPersonas: TSpeedButton;
    btnAgregaMesas: TSpeedButton;
    Respaldo: TBackupFile;
    ListBox1: TListBox;
    ProgressBar1: TProgressBar;
    SpeedButton1: TSpeedButton;
    PBuscaRes: TPanel;
    Grid3: TDBGrid;
    Panel26: TPanel;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Edit12: TEdit;
    Label13: TLabel;
    Edit13: TEdit;
    Label14: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label15: TLabel;
    SelFechaMov: TDateTimePicker;
    Label16: TLabel;
    SpeedButton2: TSpeedButton;
    tBoletas: TTable;
    SourceBoletas: TDataSource;
    Panel30: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    SpeedButton3: TSpeedButton;
    Label20: TLabel;
    SpeedButton4: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Edit16: TEdit;
    Panel31: TPanel;
    Grid4: TDBGrid;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpinAdCenaChange(Sender: TObject);
    procedure SpinAdTradChange(Sender: TObject);
    procedure SpinAdDiscoChange(Sender: TObject);
    procedure SpinNenesChange(Sender: TObject);
    procedure btnRanchoClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure btnCupulaClick(Sender: TObject);
    procedure btnTerrazaClick(Sender: TObject);
    procedure btnComedorClick(Sender: TObject);
    procedure btnTradSurClick(Sender: TObject);
    procedure btnTradNorteClick(Sender: TObject);
    procedure btnPer1Click(Sender: TObject);
    procedure btnPer2Click(Sender: TObject);
    procedure btnPer3Click(Sender: TObject);
    procedure btnFinalizaClick(Sender: TObject);
    procedure btnEfectivoClick(Sender: TObject);
    procedure btnChequePersoClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnTarjetaClick(Sender: TObject);
    procedure btnCierraTarjetaClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Grid2DblClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnRespaldoClick(Sender: TObject);
    procedure RespaldoError(Sender: TObject; const Error: Integer; ErrString: String);
    procedure RespaldoNeedDisk(Sender: TObject; DiskID: Word;  var Continue: Boolean);
    procedure RespaldoProgress(Sender: TObject; Filename: String; Percent: TPercentage; var Continue: Boolean);
    procedure btnCambiaCorrelativosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnBuscaReservaClick(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SelFechaMovChange(Sender: TObject);
    procedure btnAgregaPersonasClick(Sender: TObject);
    procedure btnReimprimirClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnAgregaMesasClick(Sender: TObject);
    procedure Grid4DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    Procedure SeleccionaEntradaCena;
    Procedure SeleccionaEntradaCupula;
    Procedure SeleccionaEntradaTerraza;
    Procedure SeleccionaEntradaTradicional;
    Procedure CalculaPersonas(Recibe : Integer);
    Procedure AsignaMesas;
    Procedure NumerosCorrelativosBoletas;
    Procedure NumerosCorrelativosTickets;
    Procedure AumentaTickets;
    Procedure AumentaBoletas;
//    Procedure GrabaTelefonica;
    Procedure GrabaMovimientos;
    Function  ImprimeBoletas(Recibe : Real; RecibePer : String) : Boolean;
    Function  ImprimeTickets(Recibe : Integer; RecibePer : String) : Boolean;
    Procedure LimpiaPantalla;
    Procedure LimpiaScreenFono;
    Procedure ImprimeTicketsDos;
    Procedure ImprimeBoletasDos;
    Procedure AumentaBoletasVirtual;
    Procedure GrabaCorrelativosBoletas;
    Procedure ReImprimeTickets;
    Function  GetFiltro(Recibe : String) : String;
  public
    { Public declarations }
  end;

Type
  Directorios = Record
    TermType    : String;
    TermName    : String;
    BaseDatos   : String;
    Ejecutables : String;
    Respaldo1   : String;
    Respaldo2   : String;
    Respaldo3   : String;
    Boletas1    : String;
    Boletas2    : String;
    Boletas3    : String;
    Tickets1    : String;
    Tickets2    : String;
    Tickets3    : String;
    Informes    : String;
    Terminales  : Integer;
    ArchiLog    : String;
    ArchiJour   : String;
  End;


 Const
  AWKey     : String = 'Software\AWC';
  AWSubKey1 : String = 'Software\AWC\BaseDatos';
  AWSubKey2 : String = 'Software\AWC\Programas';
  AWSubKey3 : String = 'Software\AWC\Respaldo';
  AWSubKey4 : String = 'Software\AWC\Impresion';
  AWSubKey5 : String = 'Software\AWC\Parametros';
  AWEMPRESA : String = 'Restorán Las Brujas Ltda.';
  AWSERIAL  : String = 'AN-3169jw-4zx0-23l09-BH00F0';

var
  MainForm: TMainForm;
  // Variables Mias

  R : TRegistry;
  Perso : Integer;
  Dir : Directorios;
  FechaTrabajo : TDateTime;
  PrintBol, PrintTick : Boolean;
  MesaSelect, Personas, Accion, CMin, CMax : Integer;
  AgregaMesaRes, NuevaMesa, SectorSel, Filtro : String;
  OldReserva, UserOpen, BoletaInicial, FondoCaja : String;
  TAdCena, TAdTrad, TAdDisco, TNenes, TotalGeneral : Real;
  NumTickVirtual, NumeroVirtual, ValorBoleta, AdCena, AdTrad, AdDisco, Nenes : Real;
  TotalPersonas, PersonasCena, PersonasTrad, PersonasCup, RestaPersonasCena, RestaPersonasTrad, RestaPersonasCup : Integer;
implementation

uses Clave;

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Height := 608;
  MainForm.Width  := 815;
  R := TRegistry.Create;
  With R Do
    Begin
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey(AWKey, true);
      Dir.TermName := ReadString('ESTACION');
      CloseKey;
      OpenKey(AWKey, true);
      Dir.TermType := ReadString('FUNCION');
      CloseKey;
      OpenKey(AWSubKey1, true);
      Dir.BaseDatos := ReadString('Dir_Data');
      CloseKey;
      // Programas
      OpenKey(AWSubKey2, true);
      Dir.Ejecutables := ReadString('Dir_Prog');
      CloseKey;
      // Respaldo
      OpenKey(AWSubKey3, true);
      Dir.Respaldo1 := ReadString('Dir_Respa_1');
      Dir.Respaldo2 := ReadString('Dir_Respa_2');
      Dir.Respaldo3 := ReadString('Dir_Respa_3');
      CloseKey;
      // Impresion
      OpenKey(AWSubKey4, true);
      Dir.Boletas1 := ReadString('Boletas_1');
      Dir.Boletas2 := ReadString('Boletas_2');
      Dir.Tickets1 := ReadString('Tickets_1');
      Dir.Tickets2 := ReadString('Tickets_2');
      Dir.Boletas3 := ReadString('Backup_1');
      Dir.Tickets3 := ReadString('Backup_2');
      Dir.Informes := ReadString('Informes');
      CloseKey;
      // Parametros
      OpenKey(AWSubKey5, true);
      Dir.Terminales := ReadInteger('Terminales');
      Dir.ArchiLog   := ReadString('Log_File');
      Dir.ArchiJour  :=  ReadString('Journal');
      CloseKey;
    End;

   // Asignacion de Ruta a Tablas
   tClientes.TableName := Dir.BaseDatos + '\Clientes.Db';
   tCorre.TableName    := Dir.BaseDatos + '\Correlativos.Db';
   tMesas.TableName    := Dir.BaseDatos + '\Mesas.Db';
   tMovs.TableName     := Dir.BaseDatos + '\Movimientos.Db';
   tPrecios.TableName  := Dir.BaseDatos + '\Precios.Db';
   tPagos.TableName    := Dir.BaseDatos + '\Pagos.Db';
   tCaja.TableName     := Dir.BaseDatos + '\Caja.Db';
   tUser.TableName     := Dir.BaseDatos + '\Usuarios.Db';
   tBoletas.TableName  := Dir.BaseDatos + '\Boletas.Db';
   // Asignacion De Indices
   tClientes.IndexFieldNames := 'Apellidos';
   tCorre.IndexFieldNames    := 'Terminal';
   tMesas.IndexFieldNames    := 'NuMesa';
   tMovs.IndexFieldNames     := 'NuReserva';
   tCaja.IndexFieldNames     := 'Terminal';
   tUser.IndexFieldNames     := 'Identifica';

   tPrecios.Open; tPrecios.First;
   AdCena  := tPrecios.Fields[0].Value;  AdTrad  := tPrecios.Fields[1].Value;
   AdDisco := tPrecios.Fields[2].Value;  Nenes   := tPrecios.Fields[3].Value;

   PCenaAd.Caption := Format('%10.0m', [AdCena]);
   PCenaNi.Caption := Format('%10.0m', [Nenes]);
   PDisco.Caption  := Format('%10.0m', [AdDisco]);
   tPrecios.Close;


   TotalPersonas := 0;
   PersonasCena := 0; RestaPersonasCena := 0;
   PersonasTrad := 0; RestaPersonasTrad := 0;
   PersonasCup  := 0; RestaPersonasCup  := 0;
   // Formato de Columnas de la DBGrid
   Grid.DataSource := SourceMesas;
   Grid.Columns.Add;
   Grid.Columns.Add;
   Grid.Columns.Add;
   Grid.Columns.Add;
   Grid.Columns[0].FieldName := 'NuMesa';
   Grid.Columns[1].FieldName := 'CapMin';
   Grid.Columns[2].FieldName := 'CapMax';
   Grid.Columns[3].FieldName := 'Estado';
   Grid.Columns[0].Title.Caption := 'Nº Mesa';
   Grid.Columns[1].Title.Caption := 'Min.';
   Grid.Columns[2].Title.Caption := 'Max.';
   Grid.Columns[3].Title.Caption := 'Estado';

   Grid.Columns[0].Width := 50;
   Grid.Columns[1].Width := 50;
   Grid.Columns[2].Width := 50;
   Grid.Columns[3].Width := 100;

  If (Dir.TermType = 'CAJA-VENTA') Or (Dir.TermType = 'VENTA')Then
    Begin
     tCorre.Open; tCorre.SetKey;
      If {Not} (tCorre.FindKey([Dir.TermName])) Then
        Begin
          MessageBox(Handle, '¡¡¡ TERMINAL NO DEFINIDO. SE DETINE CARGA DEL SISTEMA !!', 'AVISO DEL SISTEMA', mb_OK or mb_IconStop or mb_DefButton1);
          tCorre.Close;
          HALT;
        End
      Else
        Begin
          If (Dir.TermType = 'CAJA-VENTA') Then
            Begin
              tCaja.Open; tCaja.Setkey;
              If {Not} (tCaja.FindKey([Dir.TermName])) Then
                Begin
                  MessageBox(Handle, '¡¡¡ TERMINAL NO DEFINIDO. SE DETINE CARGA DEL SISTEMA !!', 'AVISO DEL SISTEMA', mb_OK or mb_IconStop or mb_DefButton1);
                  tCaja.Close;
                  HALT;
               End
              Else
                Begin
                  If (tCaja.Fields[4].Value = 'CERRADA') Then
                    Begin
                      UserOpen := InputBox('Apertura de Caja', 'Ingrese Identificacion', '');
                      tUser.Open; tUser.SetKey;
                      If Not tUser.FindKey([UserOpen]) Then
                        Begin
                          MessageBox(Handle, '¡¡¡ USUARIO NO EXISTE. SE DETINE CARGA DEL SISTEMA !!', 'AVISO DEL SISTEMA', mb_OK or mb_IconStop or mb_DefButton1);
                          tUser.Close;
                          HALT;
                        End
                      Else
                        Begin
                          If (tUser.Fields[5].Value = True) Then
                            Begin
                              BoletaInicial := InputBox('Apertura de Caja', 'Boleta Incial', '0');
                              FondoCaja     := InputBox('Apertura de Caja', 'Fondo Incial', '0');
                              tCaja.Edit;
                              tCaja.Fields[1].Value := StrToFloat(BoletaInicial);
                              tCaja.Fields[3].Value := Now;
                              tCaja.Fields[4].Value := 'ABIERTA';
                              tCaja.Fields[5].Value := StrToFloat(FondoCaja);
                              tCaja.Fields[8].Value := UserOpen;
                              tCaja.Post;
                              tCorre.Open; tCaja.SetKey;
                              If (tCorre.FindKey([Dir.TermName])) Then
                                Begin
                                  tCorre.Edit;
                                  tCorre.Fields[1].Value := StrToFloat(BoletaInicial);
                                  tCorre.Fields[3].Value := Now;
                                  tCorre.Post;
                               End;
                            End
                          Else
                            Begin
                              MessageBox(Handle, '¡¡¡ USUARIO NO AUTORIZADO. SE DETINE CARGA DEL SISTEMA !!', 'AVISO DEL SISTEMA', mb_OK or mb_IconStop or mb_DefButton1);
                              tUser.Close;
                              HALT;
                            End;
                        End
                    End;
                End;
              tCaja.Close;
            End;
        End;
    End
  Else
    Begin
      MessageBox(Handle, '¡¡¡ TERMINAL SOLO DE VENTAS. SE DETINE CARGA DEL SISTEMA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
      HALT;
    End;
  SelFecha.Date := Now;
  NumerosCorrelativosBoletas;
  NumerosCorrelativosTickets;
end;


procedure TMainForm.SpinAdCenaChange(Sender: TObject);
begin

  btnrancho.Enabled:=true;
  btnper3.Enabled:=true;
  TAdCena := AdCena * SpinAdCena.Value;
  Panel21.Caption := Format('%10.0m', [TAdCena]);
  PersonasCena  := SpinAdCena.Value;
  TotalPersonas := SpinAdCena.Value + SpinAdTrad.Value + SpinAdDisco.Value + SpinNenes.Value;
  TotalGeneral  := TAdCena + TAdtrad + TAdDisco + TNenes;
  Panel38.Caption := IntToStr(TotalPersonas);
  Panel40.Caption := Format('%10.0m', [TotalGeneral]);
  if (SpinAdCena.Value=0)and (SpinNenes.Value=0)then
  begin
  btnrancho.Enabled:=FALSE;
  btnper3.Enabled:=FALSE;

  end;
end;

procedure TMainForm.SpinAdTradChange(Sender: TObject);
begin
BTNCOMEDOR.Enabled:=TRUE;
BTNTRADSUR.Enabled:=TRUE;
BTNTRADNORTE.Enabled:=TRUE;
BTNPER1.Enabled:=TRUE;
BTNPER2.Enabled:=TRUE;
  TAdTrad := AdTrad * SpinAdTrad.Value;
  Panel41.Caption := Format('%10.0m', [TAdTrad]);
  PersonasTrad  := SpinAdTrad.Value;
  TotalPersonas := SpinAdCena.Value + SpinAdTrad.Value + SpinAdDisco.Value + SpinNenes.Value;
  TotalGeneral  := TAdCena + TAdtrad + TAdDisco + TNenes;
  Panel38.Caption := IntToStr(TotalPersonas);
  Panel40.Caption := Format('%10.0m', [TotalGeneral]);
  IF Spinadtrad.Value=0 then
  begin
BTNCOMEDOR.Enabled:=false;
BTNTRADSUR.Enabled:=false;
BTNTRADNORTE.Enabled:=false;
BTNPER1.Enabled:=false;
BTNPER2.Enabled:=false;
  end;
  end;

procedure TMainForm.SpinAdDiscoChange(Sender: TObject);
begin
btncupula.Enabled:=true;
btnterraza.Enabled:=true;
  TAdDisco := AdDisco * SpinAdDisco.Value;
  Panel42.Caption := Format('%10.0m', [TAdDisco]);
  PersonasCup   := SpinAdDisco.Value;
  TotalPersonas := SpinAdCena.Value + SpinAdTrad.Value + SpinAdDisco.Value + SpinNenes.Value;
  TotalGeneral  := TAdCena + TAdtrad + TAdDisco + TNenes;
  Panel38.Caption := IntToStr(TotalPersonas);
  Panel40.Caption := Format('%10.0m', [TotalGeneral]);
  if  SpinAdDisco.Value=0 then
  begin
btncupula.Enabled:=false;
btnterraza.Enabled:=false;

  end;
  end;

procedure TMainForm.SpinNenesChange(Sender: TObject);
begin
  btnrancho.Enabled:=true;
  btnper3.Enabled:=true;
  TNenes := Nenes * SpinNenes.Value;
  Panel43.Caption := Format('%10.0m', [TNenes]);
  PersonasCena  := PersonasCena + SpinAdCena.Value;
  TotalPersonas := SpinAdCena.Value + SpinAdTrad.Value + SpinAdDisco.Value + SpinNenes.Value;
  TotalGeneral  := TAdCena + TAdtrad + TAdDisco + TNenes;
  Panel38.Caption := IntToStr(TotalPersonas);
  Panel40.Caption := Format('%10.0m', [TotalGeneral]);
  if (SpinAdCena.Value=0)and (SpinNenes.Value=0)then
  begin
  btnrancho.Enabled:=FALSE;
  btnper3.Enabled:=FALSE;

  end;
  
end;

procedure TMainForm.btnRanchoClick(Sender: TObject);
Var
  Filtro : String;
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''RANCHO''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible  := True;
  tMesas.Filter := Filtro;
  tMesas.Open;
  SectorSel := 'RANCHO';
  SeleccionaEntradaCena;
End;

procedure TMainForm.btnCupulaClick(Sender: TObject);
begin
  tMesas.Open;
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''CUPULA''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible := True;
  tMesas.Filter   := Filtro;
  tMesas.Open;
  SectorSel := 'CUPULA';
  SeleccionaEntradaCupula;

End;

procedure TMainForm.btnTerrazaClick(Sender: TObject);
begin
  tMesas.Open;
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''TERRAZA''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible := True;
  tMesas.Filter   := Filtro;
  tMesas.Open;
  SectorSel := 'TERRAZA';
  SeleccionaEntradaTerraza;
end;

procedure TMainForm.btnComedorClick(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''COMEDOR''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible  := True;
  tMesas.Filter := Filtro;
  tMesas.Open;
  SectorSel := 'COMEDOR';
  SeleccionaEntradaTradicional;
end;

procedure TMainForm.btnTradSurClick(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''TRAD.SUR''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible  := True;
  tMesas.Filter := Filtro;
  tMesas.Open;
  SectorSel := 'TRAD. SUR';
  SeleccionaEntradaTradicional;
end;

procedure TMainForm.btnTradNorteClick(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''TRAD.NORTE''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible := True;
  tMesas.Filter   := Filtro;
  tMesas.Open;
  SectorSel := 'TRAD. NORTE';
  SeleccionaEntradaTradicional;
end;

procedure TMainForm.btnPer1Click(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''PERGOLA 1''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible := True;
  tMesas.Filter   := Filtro;
  tMesas.Open;
  SectorSel := 'PERGOLA 1';
  SeleccionaEntradaTradicional;
end;

procedure TMainForm.btnPer2Click(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''PERGOLA 2''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible  := True;
  tMesas.Filter := Filtro;
  tMesas.Open;
  SectorSel := 'PERGOLA 2';
  SeleccionaEntradaTradicional;
end;

procedure TMainForm.btnPer3Click(Sender: TObject);
begin
  Filtro := 'Sector = ';
  Filtro := Filtro +  '''PERGOLA 3''';
//  Filtro := Filtro + ' And ';
//  Filtro := Filtro + 'ESTADO = ';
//  Filtro := Filtro + '''DISPONIBLE''';
  Grid.Visible := True;
  tMesas.Filter   := Filtro;
  tMesas.Open;
  SectorSel := 'PERGOLA 3';
  SeleccionaEntradaCena;
end;

Procedure TmainForm.SeleccionaEntradaCena;
Begin
  If (SpinAdCena.Value <= 0) Then
    Begin
      MessageBox(Handle, '¡¡¡ POR FAVOR INGRESE EL NUMERO DE PERSONAS A CENAR !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdCena.SetFocus;
    End
  Else
    Begin
      // Desabilita Botones de Sectores No Relacionados
      btnCupula.Enabled  := False;  btnTerraza.Enabled := False;    btnComedor.Enabled := False;
      btnTradSur.Enabled := False;  btnTradNorte.Enabled := False;  btnPer1.Enabled    := False;
      btnPer2.Enabled := False;
      SpinAdTrad.Enabled  := False;
      SpinAdDisco.Enabled := False;
      PersonasTrad  := PersonasTrad - SpinAdTrad.Value;
      PersonasCup   := PersonasCup - SpinAdDisco.Value;
      TotalGeneral  := TotalGeneral - TAdTrad - TAdDisco;
      TAdTrad := 0; TAdDisco :=0;
      TotalPersonas := TotalPersonas - SpinAdTrad.Value - SpinAdDisco.Value;
      SpinAdtrad.Value := 0; SpinAdDisco.Value := 0;
      Panel41.Caption := '';
      Panel42.Caption := '';
      Panel38.Caption := IntToStr(TotalPersonas);
      Panel40.Caption := Format('%10.0m', [TotalGeneral]);
    End;
End;

Procedure TMainForm.SeleccionaEntradaCupula;
Begin
  If Grid.Visible = True Then Grid.Visible := False;
  If (SpinAdDisco.Value <= 0) Then
    Begin
      MessageBox(Handle, '¡¡¡ POR FAVOR INGRESE EL NUMERO DE PERSONAS A LA DISCOTHEQUE !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdDisco.SetFocus;
    End
  Else
    Begin
      // Desabilita Botones de Sectores No Relacionados
      btnRancho.Enabled    := False; btnTerraza.Enabled := False; btnComedor.Enabled := False; btnTradSur.Enabled := False;
      btnTradNorte.Enabled := False; btnPer1.Enabled    := False; btnPer2.Enabled    := False; btnPer3.Enabled    := False;
      SpinAdCena.Enabled   := False; SpinAdTrad.Enabled := False; SpinNenes.Enabled  := False;
//      Panel7.Caption := '50';
      PersonasCena  := PersonasCena - SpinAdCena.Value - SpinNenes.Value;;
      PersonasTrad  := PersonasTrad - SpinAdTrad.Value;
      TotalPersonas := TotalPersonas - SpinAdTrad.Value - SpinAdCena.Value - SpinNenes.Value;
      SpinAdTrad.Value := 0; SpinAdCena.Value := 0; SpinNenes.Value := 0;
      TotalGeneral  := TotalGeneral - TAdTrad - TAdCena - TNenes;
      TAdTrad := 0; TAdCena := 0; TNenes := 0;
      Panel21.Caption := '';  Panel41.Caption := ''; Panel43.Caption := '';
      Panel38.Caption := IntToStr(TotalPersonas);
      Panel40.Caption := Format('%10.0m', [TotalGeneral]);
    End;
  CalculaPersonas(50);
End;

Procedure TMainForm.SeleccionaEntradaTerraza;
Begin
  If Grid.Visible = True Then Grid.Visible := False;
  If (SpinAdDisco.Value <= 0) Then
    Begin
      MessageBox(Handle, '¡¡¡ POR FAVOR INGRESE EL NUMERO DE PERSONAS A LA DISCOTHEQUE !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdDisco.SetFocus;
    End
  Else
    Begin
      // Desabilita Botones de Sectores No Relacionados
      btnRancho.Enabled    := False; btnTerraza.Enabled := False; btnComedor.Enabled := False; btnTradSur.Enabled := False;
      btnTradNorte.Enabled := False; btnPer1.Enabled    := False; btnPer2.Enabled    := False; btnPer3.Enabled    := False;
      SpinAdCena.Enabled   := False; SpinAdTrad.Enabled := False; SpinNenes.Enabled  := False;
//      Panel7.Caption := '51';
      PersonasCena  := PersonasCena - SpinAdCena.Value - SpinNenes.Value;;
      PersonasTrad  := PersonasTrad - SpinAdTrad.Value;
      TotalPersonas := TotalPersonas - SpinAdTrad.Value - SpinAdCena.Value - SpinNenes.Value;
      SpinAdTrad.Value := 0; SpinAdCena.Value := 0; SpinNenes.Value := 0;
      TotalGeneral  := TotalGeneral - TAdTrad - TAdCena - TNenes;
      TAdTrad := 0; TAdCena := 0; TNenes := 0;
      Panel21.Caption := '';  Panel41.Caption := ''; Panel43.Caption := '';
      Panel38.Caption := IntToStr(TotalPersonas);
      Panel40.Caption := Format('%10.0m', [TotalGeneral]);
    End;
  CalculaPersonas(51);
End;


Procedure TMainForm.SeleccionaEntradaTradicional;
Begin
  If (SpinAdTrad.Value <=0) Then
    Begin
      MessageBox(Handle, '¡¡¡ POR FAVOR INGRESE EL NUMERO DE PERSONAS AL SECTOR TRADICIONAL !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdDisco.SetFocus;
    End
  Else
    Begin
      // Desabilita Botones de Sectores No Relacionados
      btnRancho.Enabled  := False; btnCupula.Enabled := False; btnTerraza.Enabled := False; btnPer3.Enabled := False;
      SpinAdCena.Enabled := False; SpinAdDisco.Enabled := False; SpinNenes.Enabled  := False;
      PersonasCena  := PersonasCena - SpinAdCena.Value - SpinNenes.Value;;
      PersonasCup   := PersonasCup - SpinAdDisco.Value;
      TotalPersonas := TotalPersonas - SpinAdCena.Value - SpinNenes.Value - SpinAdDisco.Value;;
      SpinAdCena.Value := 0; SpinNenes.Value := 0; SpinAdDisco.Value := 0;
      TotalGeneral  := TotalGeneral - TAdCena - TNenes - TAdDisco;
      TAdCena := 0; TNenes := 0; TAdDisco := 0;
      Panel21.Caption := ''; Panel42.Caption := ''; Panel43.Caption := '';
      Panel38.Caption := IntToStr(TotalPersonas);
      Panel40.Caption := Format('%10.0m', [TotalGeneral]);
    End;
End;

procedure TMainForm.GridDblClick(Sender: TObject);
Begin
  CalculaPersonas(tMesas.Fields[0].Value);
End;

Procedure TMainForm.CalculaPersonas(Recibe : Integer);
Begin
  tMesas.Open;
  tMesas.SetKey;
  tMesas.FindKey([Recibe]);
  CMin := tMesas.Fields[2].Value;
  CMax := tMesas.Fields[3].Value;
  // CAPACIDAD IDONEA
  If (TotalPersonas >= CMin) And (TotalPersonas <= CMax) Then
    Begin
      AsignaMesas;
      Grid.Visible := False;
    End
  Else
  // CAPACIDAD INSUFIECIENTE
  If (TotalPersonas < CMin) Then
    Begin
      If MessageBox(Handle, 'Nº PERSONAS INSUFICIENTE, ¿ FUERZA LA SELECCION ?', 'AVISO DEL SISTEMA', mb_YesNo or mb_IconQuestion or mb_DefButton1) = IdYes Then
        Begin
          AsignaMesas;
          Grid.Visible := False;
        End
      Else
        Begin
          Grid.SetFocus;
        End;
    End
  Else
  // CAPACIDAD EXCEDIDA
  If (TotalPersonas > CMax) Then
    Begin
      If MessageBox(Handle, 'Nº PERSONAS EXCESIVO ¿ ELIGE MESAS ADICIONALES ?', 'AVISO DEL SISTEMA', mb_YesNo or mb_IconQuestion or mb_DefButton1) = IdYes Then
        Begin
          AsignaMesas;
          Grid.SetFocus;
        End
      Else
        Begin
          If MessageBox(Handle, '¿ FUERZA LA SELECCION ACTUAL ?', 'AVISO DEL SISTEMA', mb_YesNo or mb_IconQuestion or mb_DefButton1) = IdYes Then
            Begin
              AsignaMesas;
              Grid.Visible := False;
            End
          Else
            Grid.Visible := False;
        End;
    End;
End;

Procedure TMainForm.AsignaMesas;
Begin
  If Panel7.Caption = '' Then
    Begin
      Panel7.Caption := tMesas.Fields[0].AsString;
      TotalPersonas := TotalPersonas - CMax;
      If tMesas.Fields[4].Value = 'DISPONIBLE' Then
        Begin
          If (tMesas.Fields[0].Value <> 50) Or (tMesas.Fields[0].Value <> 51)Then
            Begin
              tMesas.Edit;
              tMesas.Fields[4].Value := 'PROCESO';
              tMesas.Post;
            End;
        End
      Else
        Begin
          MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
          Grid.SetFocus;
        End;
    End
  Else
    Begin
      If Panel9.Caption = '' Then
        Begin
          Panel9.Caption := tMesas.Fields[0].AsString;
          TotalPersonas := TotalPersonas - CMax;
          If tMesas.Fields[4].Value = 'DISPONIBLE' Then
            Begin
              tMesas.Edit;
              tMesas.Fields[4].Value := 'PROCESO';
              tMesas.Post;
            End
          Else
            Begin
              MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
              Grid.Visible := True;
              Grid.SetFocus;
           End;
        End
     Else
       Begin
         If Panel10.Caption = '' Then
           Begin
             Panel10.Caption := tMesas.Fields[0].AsString;
             TotalPersonas := TotalPersonas - CMax;
             If tMesas.Fields[4].Value = 'DISPONIBLE' Then
               Begin
                 tMesas.Edit;
                 tMesas.Fields[4].Value := 'PROCESO';
                 tMesas.Post;
               End
             Else
               Begin
                 MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                 Grid.SetFocus;
               End;
           End
         Else
           Begin
             If Panel16.Caption = '' Then
               Begin
                 Panel16.Caption := tMesas.Fields[0].AsString;
                 TotalPersonas := TotalPersonas - CMax;
                 If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                   Begin
                     tMesas.Edit;
                     tMesas.Fields[4].Value := 'PROCESO';
                     tMesas.Post;
                   End
                 Else
                   Begin
                     MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                     Grid.SetFocus;
                   End;
               End
             Else
               Begin
                 If Panel17.Caption = '' Then
                   Begin
                     Panel17.Caption := tMesas.Fields[0].AsString;
                     TotalPersonas := TotalPersonas - CMax;
                     If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                       Begin
                         tMesas.Edit;
                         tMesas.Fields[4].Value := 'PROCESO';
                         tMesas.Post;
                       End
                     Else
                       Begin
                         MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                         Grid.SetFocus;
                       End;
                   End
                 Else
                   Begin
                     If Panel18.Caption = '' Then
                       Begin
                         Panel18.Caption := tMesas.Fields[0].AsString;
                         TotalPersonas := TotalPersonas - CMax;
                         If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                           Begin
                             tMesas.Edit;
                             tMesas.Fields[4].Value := 'PROCESO';
                             tMesas.Post;
                           End
                         Else
                           Begin
                             MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                             Grid.SetFocus;
                           End;
                       End
                     Else
                       Begin
                         If Panel19.Caption = '' Then
                           Begin
                             Panel19.Caption := tMesas.Fields[0].AsString;
                             TotalPersonas := TotalPersonas - CMax;
                             If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                               Begin
                                 tMesas.Edit;
                                 tMesas.Fields[4].Value := 'PROCESO';
                                 tMesas.Post;
                               End
                             Else
                               Begin
                                 MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                                 Grid.SetFocus;
                               End;
                           End
                         Else
                           Begin
                             If Panel22.Caption = '' Then
                               Begin
                                 Panel22.Caption := tMesas.Fields[0].AsString;
                                 TotalPersonas := TotalPersonas - CMax;
                                 If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                                   Begin
                                     tMesas.Edit;
                                     tMesas.Fields[4].Value := 'PROCESO';
                                     tMesas.Post;
                                   End
                                 Else
                                   Begin
                                     MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                                     Grid.SetFocus;
                                   End;
                               End
                             Else
                               Begin
                                 If Panel23.Caption = '' Then
                                   Begin
                                     Panel23.Caption := tMesas.Fields[0].AsString;
                                     TotalPersonas := TotalPersonas - CMax;
                                     If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                                       Begin
                                         tMesas.Edit;
                                         tMesas.Fields[4].Value := 'PROCESO';
                                         tMesas.Post;
                                       End
                                     Else
                                       Begin
                                         MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                                         Grid.SetFocus;
                                       End;
                                   End
                                 Else
                                   Begin
                                     If Panel24.Caption = '' Then
                                       Begin
                                         Panel24.Caption := tMesas.Fields[0].AsString;
                                         TotalPersonas := TotalPersonas - CMax;
                                         If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                                           Begin
                                             tMesas.Edit;
                                             tMesas.Fields[4].Value := 'PROCESO';
                                             tMesas.Post;
                                           End
                                         Else
                                           Begin
                                             MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                                             Grid.SetFocus;
                                           End;
                                       End
                                     Else
                                       Begin
                                         If Panel25.Caption = '' Then
                                           Begin
                                             Panel25.Caption := tMesas.Fields[0].AsString;
                                             TotalPersonas := TotalPersonas - CMax;
                                             If tMesas.Fields[4].Value = 'DISPONIBLE' Then
                                               Begin
                                                 tMesas.Edit;
                                                 tMesas.Fields[4].Value := 'PROCESO';
                                                 tMesas.Post;
                                               End
                                             Else
                                               Begin
                                                 MessageBox(Handle, '¡¡ NO DISPONIBLE, ELIJA OTRA !!', 'AVISO DEL SISTEMA', mb_Ok or mb_IconStop or mb_DefButton1);
                                                 Grid.SetFocus;
                                               End;
                                           End
                                         Else
                                           Begin

                                           End;
                                       End;
                                   End;
                               End;
                           End;
                       End;
                   End;
               End;
           End;
       End;
    End;
End;


{************************** Cierre de la Aplicacion ***************************************}
procedure TMainForm.SpeedButton21Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.btnFinalizaClick(Sender: TObject);
var
a:integer;
begin

a:=1;
  If (Edit1.Text = '') Or (Edit2.Text = '') or (Edit3.Text = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR DATOS DEL CLIENTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      Edit1.SetFocus;
       a:=0;
    End;
  If (SpinAdCena.Value = 0) And (SpinAdTrad.Value = 0) And (SpinAdDisco.Value = 0) And (SpinNenes.Value = 0) Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR UNA CANTIDAD DE PERSONAS !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdCena.SetFocus;
      a:=0;
    End;
  If (Panel7.Caption = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE ELEGIR AL MENOS UNA MESA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      a:=0;
    End;

//***********************************
  tMesas.Filter := '';
  If (Panel7.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel7.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel9.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel9.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel10.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel10.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel16.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel16.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel17.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel17.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel18.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel18.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel19.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel19.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel22.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel22.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel23.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel23.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel24.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel24.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
  If (Panel25.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel25.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'RESERVADA'; tMesas.Post; End;
//***********************************
  If (Panel7.Caption = '50') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel7.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel7.Caption = '51') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel7.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;


  If (Dir.TermType = 'CAJA-VENTA')and(a=1) Then
    Begin
      // Si es Caja llame al programa de pago
      PFPago.Visible := True;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
        // Llama al Programa Emisor de Vales para la Caja de Venta
      End;
end;

Procedure TMainForm.LimpiaPantalla;
Begin
  Edit1.Text := ''; Edit2.Text := ''; Edit3.Text := '';
  SpinAdCena.Value := 0;  SpinAdDisco.Value:= 0;  SpinAdTrad.Value := 0;  SpinNenes.Value  := 0;
  Panel21.Caption  := ''; Panel41.Caption  := ''; Panel42.Caption  := ''; Panel43.Caption  := '';
  Panel38.Caption  := ''; Panel7.Caption   := ''; Panel9.Caption   := ''; Panel10.Caption  := '';
  Panel16.Caption  := ''; Panel17.Caption  := ''; Panel18.Caption  := ''; Panel19.Caption  := '';
  Panel22.Caption  := ''; Panel23.Caption  := ''; Panel24.Caption  := ''; Panel25.Caption  := '';
  Panel40.Caption  := ''; Panel3.Caption   := ''; Panel5.Caption   := '';
  Perso := 0;
//  AdCena  := 0; AdTrad  := 0; AdDisco  := 0; Nenes  := 0;
  TAdCena := 0; TAdTrad := 0; TAdDisco := 0; TNenes := 0; TotalGeneral := 0;
  TotalPersonas := 0; PersonasCena := 0; PersonasTrad  := 0;
  PersonasCup   := 0; RestaPersonasCena := 0; RestaPersonasTrad := 0; RestaPersonasCup  := 0;
  SpinAdCena.Enabled := True; SpinAdTrad.Enabled := True; SpinAdDisco.Enabled := True; SpinNenes.Enabled := True;
  btnRancho.Enabled := True;  btnCupula.Enabled := True;
  btnTerraza.Enabled := True; btnComedor.Enabled := True; btnTradSur.Enabled := True; btnTradNorte.Enabled := True;
  btnPer1.enabled := True; btnPer2.Enabled := True; btnPer3.Enabled := True;
  NumerosCorrelativosBoletas;
  NumerosCorrelativosTickets;
End;

Procedure TMainForm.LimpiaScreenFono;
Begin
  Edit1.Text := ''; Edit2.Text := ''; Edit3.Text := '';
  SpinAdCena.Value := 0;  SpinAdDisco.Value:= 0;  SpinAdTrad.Value := 0;  SpinNenes.Value  := 0;
  Panel21.Caption  := ''; Panel41.Caption  := ''; Panel42.Caption  := ''; Panel43.Caption  := '';
  Panel38.Caption  := ''; Panel7.Caption   := ''; Panel9.Caption   := ''; Panel10.Caption  := '';
  Panel16.Caption  := ''; Panel17.Caption  := ''; Panel18.Caption  := ''; Panel19.Caption  := '';
  Panel22.Caption  := ''; Panel23.Caption  := ''; Panel24.Caption  := ''; Panel25.Caption  := '';
  Panel40.Caption  := ''; Panel3.Caption   := ''; Panel5.Caption   := '';
  Perso := 0;
//  AdCena  := 0; AdTrad  := 0; AdDisco  := 0; Nenes  := 0;
  TAdCena := 0; TAdTrad := 0; TAdDisco := 0; TNenes := 0; TotalGeneral := 0;
  TotalPersonas := 0; PersonasCena := 0; PersonasTrad  := 0;
  PersonasCup   := 0; RestaPersonasCena := 0; RestaPersonasTrad := 0; RestaPersonasCup  := 0;
  SpinAdCena.Enabled := True; SpinAdTrad.Enabled := True; SpinAdDisco.Enabled := True; SpinNenes.Enabled := True;
  btnRancho.Enabled := True;  btnCupula.Enabled := True;
  btnTerraza.Enabled := True; btnComedor.Enabled := True; btnTradSur.Enabled := True; btnTradNorte.Enabled := True;
  btnPer1.enabled := True; btnPer2.Enabled := True; btnPer3.Enabled := True;
  NumerosCorrelativosTickets;
End;
//*************
Procedure TMainForm.NumerosCorrelativosTickets;
Begin
  tCorre.Open; tCorre.SetKey;
  If tCorre.FindKey([Dir.TermName]) Then
    Begin
//          Panel3.Caption := tCorre.Fields[2].AsString;
//      FechaTrabajo := tCorre.Fields[3].Value
   End;
      Panel3.Caption := tCorre.Fields[2].AsString;
      FechaTrabajo := tCorre.Fields[3].Value;
   tCorre.Close;
End;

Procedure TMainForm.AumentaTickets;
Begin
  tCorre.Open; tCorre.SetKey;
  If tCorre.FindKey([Dir.TermName]) Then
    Begin
//      tCorre.Edit;
//      tCorre.Fields[2].Value := tCorre.Fields[2].Value + 1;
//      tCorre.Post;
    End;
      tCorre.Edit;
      tCorre.Fields[2].Value := tCorre.Fields[2].Value + 1;
      panel3.caption:=floattostr(tcorre.fields[2].value);
      tCorre.Post;
  tCorre.Close;
End;
//***************
Procedure TMainForm.NumerosCorrelativosBoletas;
Begin
  tCorre.Open;
  tCorre.SetKey;
  If tCorre.FindKey([Dir.TermName]) Then
    Begin
//Panel5.Caption := tCorre.Fields[1].AsString;
//FechaTrabajo   := tCorre.Fields[3].Value;
    End;
Panel5.Caption := tCorre.Fields[1].AsString;
FechaTrabajo   := tCorre.Fields[3].Value;
  tCorre.Close;
End;

Procedure TMainForm.AumentaBoletas;
Begin
  tCorre.Open; tCorre.SetKey;
  If tCorre.FindKey([Dir.TermName]) Then
    Begin
//      tCorre.Edit;
//      tCorre.Fields[1].Value := tCorre.Fields[1].Value + 1;
//      tCorre.Post;
    End;
          tCorre.Edit;
      tCorre.Fields[1].Value := tCorre.Fields[1].Value + 1;
      tCorre.Post;
  tCorre.Close;
End;

Procedure TMainForm.AumentaBoletasVirtual;
Begin
  NumeroVirtual := NumeroVirtual + 1;
End;

{Procedure TMainForm.GrabaTelefonica;
Begin
  tClientes.Open;
  tClientes.SetKey;
  If Not tClientes.FindKey([Edit2.Text, Edit1.Text, Edit3.Text]) Then
    Begin
      tClientes.Append;
      tClientes.Fields[0].Value := Edit2.Text;
      tClientes.Fields[1].Value := Edit1.Text;
      tClientes.Fields[2].Value := Edit3.Text;
      tClientes.Fields[3].Value := FechaTrabajo;
      tClientes.Post;
    End
  Else
    tClientes.Close;
  // Grabacion de Movimientos
  tMovs.Open;
  tMovs.Append;
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      tMovs.Fields[0].Value := StrToFloat(Panel3.Caption);
      tMovs.Fields[1].Value := StrToFloat(Panel5.Caption);
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
        tMovs.Fields[0].Value := StrToFloat(Panel3.Caption);
      End;
  tMovs.Fields[2].Value := FechaTrabajo;
  tMovs.Fields[3].Value := 'FONO';
  tMovs.Fields[4].Value := Edit2.Text;
  tMovs.Fields[5].Value := Edit1.Text;
  tMovs.Fields[6].Value := SpinAdCena.Value;
  tMovs.Fields[7].Value := SpinAdTrad.Value;
  tMovs.Fields[8].Value := SpinAdDisco.Value;
  tMovs.Fields[9].Value := SpinNenes.Value;
  tMovs.Fields[10].Value := StrToInt(Panel7.Caption);
  If (Panel9.Caption <>  '')  Then tMovs.Fields[11].Value := StrToInt(Panel9.Caption);
  If (Panel10.Caption <>  '') Then tMovs.Fields[12].Value := StrToInt(Panel10.Caption);
  If (Panel16.Caption <>  '') Then tMovs.Fields[13].Value := StrToInt(Panel16.Caption);
  If (Panel17.Caption <>  '') Then tMovs.Fields[14].Value := StrToInt(Panel17.Caption);
  If (Panel18.Caption <>  '') Then tMovs.Fields[15].Value := StrToInt(Panel18.Caption);
  If (Panel19.Caption <>  '') Then tMovs.Fields[16].Value := StrToInt(Panel19.Caption);
  If (Panel22.Caption <>  '') Then tMovs.Fields[17].Value := StrToInt(Panel22.Caption);
  If (Panel23.Caption <>  '') Then tMovs.Fields[18].Value := StrToInt(Panel23.Caption);
  If (Panel24.Caption <>  '') Then tMovs.Fields[19].Value := StrToInt(Panel24.Caption);
  If (Panel25.Caption <>  '') Then tMovs.Fields[20].Value := StrToInt(Panel25.Caption);
  tMovs.Fields[21].Value := 'TELEFONICA';
  tMovs.Fields[22].Value := TotalGeneral;
  tMovs.Fields[23].Value := SectorSel;
  tMovs.Post;
  tMovs.Close;
End;
 }
Procedure TMainForm.GrabaMovimientos;
var
dir:string;
f:textfile;
Begin
  If Panel7.Caption = '50' Then
    Begin

      tMesas.SetKey;
      tMesas.FindKey([StrToInt(Panel7.Caption)]);
      tMesas.Edit;
      tMesas.Fields[3].Value := tMesas.Fields[3].Value  - SpinAdDisco.Value;
      tMesas.Post;
    End
  Else
    If Panel7.Caption = '51' Then
      Begin
        tMesas.SetKey;
        tMesas.FindKey([StrToInt(Panel7.Caption)]);
        tMesas.Edit;
        tMesas.Fields[3].Value := tMesas.Fields[3].Value  - SpinAdDisco.Value;
        tMesas.Post;
      End;
  tClientes.Open;
  tClientes.SetKey;
  If Not tClientes.FindKey([Edit2.Text, Edit1.Text, Edit3.Text]) Then
    Begin
      tClientes.Append;
      tClientes.Fields[0].Value := Edit2.Text;
      tClientes.Fields[1].Value := Edit1.Text;
      tClientes.Fields[2].Value := Edit3.Text;
      tClientes.Fields[3].Value := FechaTrabajo;
      tClientes.Post;
    End
  Else
    tClientes.Close;
  // Grabacion de Movimientos
  getdir(0,dir);
  if not fileexists(dir+'\movimientos.txt') then
        begin
                assignfile(f,dir+'\movimientos.txt');
                rewrite(f);
                closefile(f);
        end;
  assignfile(f,dir+'\movimientos.txt');
  append(f);
  //tMovs.Open;
//  tMovs.Append;
//  If (Dir.TermType = 'CAJA-VENTA') Then
//    Begin
      write(f,Panel3.Caption+',');
      write(f,Panel5.Caption+',');
//      tMovs.Fields[0].Value := StrToFloat(Panel3.Caption);
//      tMovs.Fields[1].Value := StrToFloat(Panel5.Caption);
//    End
//  Else
//    If (Dir.TermType = 'VENTA') Then
//      Begin
//        tMovs.Fields[0].Value := StrToFloat(Panel3.Caption);
        write(f,Panel3.Caption+',');

//      End;
write(f,datetostr(FechaTrabajo)+',');
write(f,'LOCAL'+',');
write(f,edit2.text+',');
write(f,edit1.text+',');
write(f,inttostr(spinadcena.value)+',');
write(f,inttostr(spinadtrad.value)+',');
write(f,inttostr(SpinAdDisco.Value)+',');
write(f,inttostr(SpinNenes.Value)+',');
write(f,panel7.caption+',');

 // tMovs.Fields[2].Value := FechaTrabajo;
//  tMovs.Fields[3].Value := 'LOCAL';
//  tMovs.Fields[4].Value := Edit2.Text;
//  tMovs.Fields[5].Value := Edit1.Text;
//  tMovs.Fields[6].Value := SpinAdCena.Value;
//  tMovs.Fields[7].Value := SpinAdTrad.Value;
//  tMovs.Fields[8].Value := SpinAdDisco.Value;
//  tMovs.Fields[9].Value := SpinNenes.Value;
//  tMovs.Fields[10].Value := StrToInt(Panel7.Caption);
  If (Panel9.Caption <>  '')  Then
write(f,panel9.caption+',');
//  tMovs.Fields[11].Value := StrToInt(Panel9.Caption);
  If (Panel10.Caption <>  '') Then
write(f,panel10.caption+',');
//  tMovs.Fields[12].Value := StrToInt(Panel10.Caption);
  If (Panel16.Caption <>  '') Then
write(f,panel16.caption+',');
//  tMovs.Fields[13].Value := StrToInt(Panel16.Caption);
  If (Panel17.Caption <>  '') Then
  //tMovs.Fields[14].Value := StrToInt(Panel17.Caption);
  write(f,panel17.caption+',');
  If (Panel18.Caption <>  '') Then
  //tMovs.Fields[15].Value := StrToInt(Panel18.Caption);
  write(f,panel18.caption+',');
  If (Panel19.Caption <>  '') Then
//  tMovs.Fields[16].Value := StrToInt(Panel19.Caption);
  write(f,panel19.caption+',');
  If (Panel22.Caption <>  '') Then
  write(f,panel22.caption+',');
//  tMovs.Fields[17].Value := StrToInt(Panel22.Caption);
  If (Panel23.Caption <>  '') Then
  //tMovs.Fields[18].Value := StrToInt(Panel23.Caption);
  write(f,panel23.caption+',');
  If (Panel24.Caption <>  '') Then
//  tMovs.Fields[19].Value := StrToInt(Panel24.Caption);
  write(f,panel24.caption+',');
  If (Panel25.Caption <>  '') Then
//  tMovs.Fields[20].Value := StrToInt(Panel25.Caption);
  write(f,panel25.caption+',');
  write(f,'PAGADA'+',');
//  tMovs.Fields[21].Value := 'PAGADA';
write(f,floattostr(totalgeneral)+',');
//  tMovs.Fields[22].Value := TotalGeneral;
write(f,sectorsel+',');
//  tMovs.Fields[23].Value := SectorSel;
  If OldReserva <> '' Then
    Begin
      tMovs.Fields[24].Value := OldReserva;
    End;
//  tMovs.Post;
//  tMovs.Close;
//  tMovs.Open;
  // Link en Reserva Madre
{  If OldReserva <> '' Then
    Begin
      tMovs.SetKey;
      tMovs.FindKey([StrToFloat(OldReserva)]);
      tMovs.Edit;
      If (tMovs.Fields[24].Value = '') Then tMovs.Fields[24].Value := Panel3.Caption Else
      If (tMovs.Fields[25].Value = '') Then tMovs.Fields[25].Value := Panel3.Caption Else
      If (tMovs.Fields[26].Value = '') Then tMovs.Fields[26].Value := Panel3.Caption Else
      If (tMovs.Fields[27].Value = '') Then tMovs.Fields[27].Value := Panel3.Caption Else
      If (tMovs.Fields[28].Value = '') Then tMovs.Fields[28].Value := Panel3.Caption;
      tMovs.Post;
      OldReserva := '';
    End;
  tMovs.Close;}
writeln(f,'');
closefile(f);
End;

Procedure TMainForm.ImprimeBoletasDos;
Var I : Integer;
Begin
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      If (SectorSel = 'RANCHO') Or (SectorSel = 'PERGOLA 3') Then
        Begin

          Perso := SpinAdCena.Value;
          ValorBoleta := AdCena * 2;
          If ((Perso Mod 2) > 0) Then
            Begin
              For I := 1 To ((Perso - 1) Div 2) Do
                Begin
                  PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                  AumentaBoletas;
                  NumerosCorrelativosBoletas;
                End;
              ValorBoleta := AdCena;
              PrintBol  := ImprimeBoletas(ValorBoleta, '1');
              PrintTick := ImprimeTickets(1, ' ADULTO');
              AumentaBoletas;
              NumerosCorrelativosBoletas;
            End
          Else
            Begin
              For I := 1 To (Perso Div 2) Do
                Begin
                  PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                  AumentaBoletas;
                  NumerosCorrelativosBoletas;
                End;
            End;
          If (SpinNenes.Value > 0) Then
            Begin
              Perso := SpinNenes.Value;
              ValorBoleta := Nenes * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' NINOS');
                       AumentaBoletas;
                       NumerosCorrelativosBoletas;
                     End;
                   ValorBoleta := Nenes;
                   PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' NINOS');
                   AumentaBoletas;
                   NumerosCorrelativosBoletas;
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' NINOS');
                       AumentaBoletas;
                       NumerosCorrelativosBoletas;
                     End;
                End;
            End;
        End
      Else // Si no es Cena
        Begin
          If (SectorSel = 'CUPULA') Or (SectorSel = 'TERRAZA') Then
            Begin
              Perso := SpinAdDisco.Value;
              ValorBoleta := AdDisco * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                       AumentaBoletas;
                       NumerosCorrelativosBoletas;
                     End;
                   ValorBoleta := AdDisco;
                   PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                   AumentaBoletas;
                   NumerosCorrelativosBoletas;
                 End
               Else
                 Begin
                    For I := 1 To (Perso Div 2) Do
                      Begin
                        PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                        PrintTick := ImprimeTickets(2, ' ADULTOS');
                        AumentaBoletas;
                        NumerosCorrelativosBoletas;
                      End;
                 End;
            End
          Else
            Begin
              Perso := SpinAdTrad.Value;
              ValorBoleta := AdTrad * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                       AumentaBoletas;
                       NumerosCorrelativosBoletas;
                     End;
                   ValorBoleta := AdTrad;
                   PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                   AumentaBoletas;
                   NumerosCorrelativosBoletas;
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                       AumentaBoletas;
                       NumerosCorrelativosBoletas;
                     End;
                End;
            End;
        End;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
      For I := 1 To Perso Do
        Begin
//          PrintTick := ImprimeTickets(2);
        End;
      End;
  LimpiaPantalla;
End;

// ********* procedimiento retirado *************************************************************************************
Procedure TMainForm.ImprimeTicketsDos;
Var I : Integer;
Begin
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      If (SectorSel = 'RANCHO') Or (SectorSel = 'PERGOLA 3') Then
        Begin

          Perso := SpinAdCena.Value;
          ValorBoleta := AdCena * 2;
          If ((Perso Mod 2) > 0) Then
            Begin
              For I := 1 To ((Perso - 1) Div 2) Do
                Begin
                 // PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                 // AumentaBoletas;
                 // NumerosCorrelativosBoletas;
                End;
              //ValorBoleta := AdCena;
              //PrintBol  := ImprimeBoletas(ValorBoleta, '1');
              PrintTick := ImprimeTickets(1, ' ADULTO');
              //AumentaBoletas;
              //NumerosCorrelativosBoletas;
            End
          Else
            Begin
              For I := 1 To (Perso Div 2) Do
                Begin
                //  PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                 // AumentaBoletas;
                 // NumerosCorrelativosBoletas;
                End;
            End;
          If (SpinNenes.Value > 0) Then
            Begin
              Perso := SpinNenes.Value;
              ValorBoleta := Nenes * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                   //    PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' NINOS');
                    //   AumentaBoletas;
                      // NumerosCorrelativosBoletas;
                     End;
                  // ValorBoleta := Nenes;
                  // PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' NINOS');
                 //  AumentaBoletas;
                 //  NumerosCorrelativosBoletas;
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                   //    PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' NINOS');
                     //  AumentaBoletas;
                      // NumerosCorrelativosBoletas;
                     End;
                End;
            End;
        End
      Else // Si no es Cena
        Begin
          If (SectorSel = 'CUPULA') Or (SectorSel = 'TERRAZA') Then
            Begin
              Perso := SpinAdDisco.Value;
              ValorBoleta := AdDisco * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                      // PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                      // AumentaBoletas;
                      // NumerosCorrelativosBoletas;
                     End;
                  // ValorBoleta := AdDisco;
                 //  PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                   //AumentaBoletas;
                   //NumerosCorrelativosBoletas;
                 End
               Else
                 Begin
                    For I := 1 To (Perso Div 2) Do
                      Begin
                     //   PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                        PrintTick := ImprimeTickets(2, ' ADULTOS');
                      //  AumentaBoletas;
                      //  NumerosCorrelativosBoletas;
                      End;
                 End;
            End
          Else
            Begin
              Perso := SpinAdTrad.Value;
              ValorBoleta := AdTrad * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                      // PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                      // AumentaBoletas;
                      // NumerosCorrelativosBoletas;
                     End;
                  // ValorBoleta := AdTrad;
                  // PrintBol  := ImprimeBoletas(ValorBoleta, '1');
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                  // AumentaBoletas;
                  // NumerosCorrelativosBoletas;
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                      // PrintBol  := ImprimeBoletas(ValorBoleta, '2');
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                    //   AumentaBoletas;
                      // NumerosCorrelativosBoletas;
                     End;
                End;
            End;
        End;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
      For I := 1 To Perso Do
        Begin
//          PrintTick := ImprimeTickets(2);
        End;
      End;
  LimpiaPantalla;
End;
//************ Procedimiento Retirado *********************************************************************************}


Procedure TMainForm.GrabaCorrelativosBoletas;
Var I, J : Integer;
Begin
  J := 1;
  NumeroVirtual := StrToFloat(Panel5.Caption);
  tBoletas.Open;
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      If (SectorSel = 'RANCHO') Or (SectorSel = 'PERGOLA 3') Then
        Begin
          Perso := SpinAdCena.Value;
          ValorBoleta := AdCena * 2;
          If ((Perso Mod 2) > 0) Then
            Begin
              For I := 1 To ((Perso - 1) Div 2) Do
                Begin
                  tBoletas.Append;
                  tBoletas.Fields[0].Value := NumeroVirtual;
                  tBoletas.Fields[1].Value := Panel3.Caption;
                  tBoletas.Fields[2].Value := ValorBoleta;
                  tBoletas.Fields[3].Value := J;
                  tBoletas.Post;
                  AumentaBoletasVirtual;
                  Inc(J);
                End;
              ValorBoleta := AdCena;
              tBoletas.Append;
              tBoletas.Fields[0].Value := NumeroVirtual;
              tBoletas.Fields[1].Value := Panel3.Caption;
              tBoletas.Fields[2].Value := ValorBoleta;
              tBoletas.Fields[3].Value := J;
              tBoletas.Post;
              AumentaBoletasVirtual;
              Inc(J);
            End
          Else
            Begin
              For I := 1 To (Perso Div 2) Do
                Begin
                  tBoletas.Append;
                  tBoletas.Fields[0].Value := NumeroVirtual;
                  tBoletas.Fields[1].Value := Panel3.Caption;
                  tBoletas.Fields[2].Value := ValorBoleta;
                  tBoletas.Fields[3].Value := J;
                  tBoletas.Post;
                  AumentaBoletasVirtual;
                  Inc(J);
                End;
            End;
          If (SpinNenes.Value > 0) Then
            Begin
              Perso := SpinNenes.Value;
              ValorBoleta := Nenes * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       tBoletas.Append;
                       tBoletas.Fields[0].Value := NumeroVirtual;
                       tBoletas.Fields[1].Value := Panel3.Caption;
                       tBoletas.Fields[2].Value := ValorBoleta;
                       tBoletas.Fields[3].Value := J;
                       tBoletas.Post;
                       AumentaBoletasVirtual;
                       Inc(J);
                     End;
                   ValorBoleta := Nenes;
                   tBoletas.Append;
                   tBoletas.Fields[0].Value := NumeroVirtual;
                   tBoletas.Fields[1].Value := Panel3.Caption;
                   tBoletas.Fields[2].Value := ValorBoleta;
                   tBoletas.Fields[3].Value := J;
                   tBoletas.Post;
                   AumentaBoletasVirtual;
                   Inc(J);
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       tBoletas.Append;
                       tBoletas.Fields[0].Value := NumeroVirtual;
                       tBoletas.Fields[1].Value := Panel3.Caption;
                       tBoletas.Fields[2].Value := ValorBoleta;
                       tBoletas.Fields[3].Value := J;
                       tBoletas.Post;
                       AumentaBoletasVirtual;
                       Inc(J);
                     End;
                End;
            End;
        End
      Else // Si no es Cena
        Begin
          If (SectorSel = 'CUPULA') Or (SectorSel = 'TERRAZA') Then
            Begin
              Perso := SpinAdDisco.Value;
              ValorBoleta := AdDisco * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       tBoletas.Append;
                       tBoletas.Fields[0].Value := NumeroVirtual;
                       tBoletas.Fields[1].Value := Panel3.Caption;
                       tBoletas.Fields[2].Value := ValorBoleta;
                       tBoletas.Fields[3].Value := J;
                       tBoletas.Post;
                       AumentaBoletasVirtual;
                       Inc(J);
                     End;
                   ValorBoleta := AdDisco;
                   tBoletas.Append;
                   tBoletas.Fields[0].Value := NumeroVirtual;
                   tBoletas.Fields[1].Value := Panel3.Caption;
                   tBoletas.Fields[2].Value := ValorBoleta;
                   tBoletas.Fields[2].Value := J;
                   tBoletas.Post;
                   AumentaBoletasVirtual;
                   Inc(J);
                 End
               Else
                 Begin
                    For I := 1 To (Perso Div 2) Do
                      Begin
                        tBoletas.Append;
                        tBoletas.Fields[0].Value := NumeroVirtual;
                        tBoletas.Fields[1].Value := Panel3.Caption;
                        tBoletas.Fields[2].Value := ValorBoleta;
                        tBoletas.Fields[3].Value := J;
                        tBoletas.Post;
                        AumentaBoletasVirtual;
                        Inc(J);
                      End;
                 End;
            End
          Else
            Begin
              Perso := SpinAdTrad.Value;
              ValorBoleta := AdTrad * 2;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       tBoletas.Append;
                       tBoletas.Fields[0].Value := NumeroVirtual;
                       tBoletas.Fields[1].Value := Panel3.Caption;
                       tBoletas.Fields[2].Value := ValorBoleta;
                       tBoletas.Fields[3].Value := J;
                       tBoletas.Post;
                       AumentaBoletasVirtual;
                       Inc(J);
                     End;
                   ValorBoleta := AdTrad;
                   tBoletas.Append;
                   tBoletas.Fields[0].Value := NumeroVirtual;
                   tBoletas.Fields[1].Value := Panel3.Caption;
                   tBoletas.Fields[2].Value := ValorBoleta;
                   tBoletas.Fields[3].Value := J;
                   tBoletas.Post;
                   AumentaBoletasVirtual;
                   Inc(J);
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       tBoletas.Append;
                       tBoletas.Fields[0].Value := NumeroVirtual;
                       tBoletas.Fields[1].Value := Panel3.Caption;
                       tBoletas.Fields[2].Value := ValorBoleta;
                       tBoletas.Fields[3].Value := J;
                       tBoletas.Post;
                       AumentaBoletasVirtual;
                       Inc(J);
                     End;
                End;
            End;
        End;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
      For I := 1 To Perso Do
        Begin
//          PrintTick := ImprimeTickets(2);
        End;
      End;
End;


procedure TMainForm.btnEfectivoClick(Sender: TObject);
begin
  NumerosCorrelativosBoletas;
  NumerosCorrelativosTickets;
  GrabaMovimientos;
  tPagos.Open;
  tPagos.Append;
  tPagos.Fields[0].Value := StrToFloat(Panel3.Caption);
  tPagos.Fields[1].Value := 'EFECTIVO';
  tPagos.Post;
  tPagos.Close;
  PFPago.Visible := False;
  GrabaCorrelativosBoletas;
  ImprimeBoletasDos;
//  ImprimeTicketsDos;
aumentatickets;
btnrancho.Enabled:=false;
btnper3.Enabled:=false;
BTNCOMEDOR.Enabled:=false;
BTNTRADSUR.Enabled:=false;
BTNTRADNORTE.Enabled:=false;
BTNPER1.Enabled:=false;
BTNPER2.Enabled:=false;
btncupula.Enabled:=false;
btnterraza.Enabled:=false;

end;

procedure TMainForm.btnChequePersoClick(Sender: TObject);
begin
  NumerosCorrelativosTickets;
  NumerosCorrelativosBoletas;
  GrabaMovimientos;
  PFPago.Visible := False;
  SelFecha.Date := Now;
  tPagos.Open;
  tPagos.Append;
  tPagos.Fields[0].Value := StrToFloat(Panel3.Caption);
  tPagos.Fields[1].Value := 'CHEQUE';
  tPagos.Fields[2].Value := ComboBox1.Text;
  tPagos.Fields[3].Value := Edit5.Text;
  tPagos.Fields[4].Value := Edit4.Text;
  tPagos.Fields[5].Value := Edit6.Text;
  tPagos.Fields[6].Value := SelFecha.Date;
  tPagos.Post;
  tPagos.Close;
  PCheque.Visible := True;
  GrabaCorrelativosBoletas;
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  If (ComboBox1.Text = '') Or (Edit4.Text = '') Or (Edit5.Text = '') Or (Edit6.Text = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR DATOS DEL CLIENTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      ComboBox1.SetFocus;
    End
  Else
    Begin
      PCheque.Visible := False;
      ImprimeBoletasDos;
//      ImprimeTicketsDos;
    End;
end;

procedure TMainForm.btnTarjetaClick(Sender: TObject);
begin
  NumerosCorrelativosBoletas;
  NumerosCorrelativosTickets;
  GrabaMovimientos;
  PFPago.Visible   := False;
  tPagos.Open;
  tPagos.Append;
  tPagos.Fields[0].Value := StrToFloat(Panel3.Caption);
  tPagos.Fields[1].Value := 'TARJETA';
  tPagos.Fields[2].Value := ComboBox2.Text;
  tPagos.Fields[3].Value := Edit7.Text;
  tPagos.Fields[4].Value := Edit8.Text;
  tPagos.Fields[5].Value := Edit9.Text;
  tPagos.Fields[6].Value := SelFecha2.Date;
  tPagos.Post;
  tPagos.Close;
  PTarjeta.Visible := True;
  SelFecha.Date := Now;
  GrabaCorrelativosBoletas;
end;

procedure TMainForm.btnCierraTarjetaClick(Sender: TObject);
begin
  If (ComboBox2.Text = '') Or (Edit7.Text = '') Or (Edit8.Text = '') Or (Edit9.Text = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR DATOS DEL CLIENTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      ComboBox2.SetFocus;
    End
  Else
    Begin
      PTarjeta.Visible := False;
      ImprimeBoletasDos;
//      ImprimeTicketsDos;
    End;
end;


Function TMainForm.ImprimeBoletas(Recibe : Real; RecibePer : String) : Boolean;
Const
  Mesa    = '                           ';
  Detalle = '             Sector ';
  Personas= '             Personas : ';
  TV      = '                  ';
  Fecha   = '          ';
  NBol    = '               ';
  Linea   = '';
Var
  F : TextFile;
  Impresora : String;
  LinTotal, LinFecha, LinNumBol, LinGarMesa, FechaNow, DD, MM, YY : String;
begin
  If Dir.TermName = 'VENTAS1' Then Impresora := Dir.Boletas1;
  If Dir.TermName = 'VENTAS2' Then Impresora := Dir.Boletas2;
  FechaNow := DateToStr(Date);
  DD := FormatDateTime('dd', StrToDatetime(FechaNow));
  MM := FormatDateTime('mm', StrToDatetime(FechaNow));
  YY := FormatDateTime('yyyy', StrToDatetime(FechaNow));
  LinGarMesa:= Mesa + Panel7.Caption;
  LinTotal  := TV + FloatToStr(Recibe);
  LinFecha  := Fecha + DD + '      ' + MM + '      ' + YY;
  LinNumBol := NBol + Panel5.Caption;
  AssignFile(F, Impresora);
  ReWrite(F);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,LinGarMesa);
  WriteLn(F,Linea);
  WriteLn(F,Detalle + SectorSel);
  WriteLn(F,Personas + RecibePer);
  WriteLn(F,Panel3.Caption);
  WriteLn(F,LinTotal + '.-');
  WriteLn(F,Linea);
  WriteLn(F,LinFecha);
  WriteLn(F,Linea);
  WriteLn(F,LinNumBol);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  WriteLn(F,Linea);
  CloseFile(F);
  Result := True;
End;

Function TMainForm.ImprimeTickets(Recibe : Integer; RecibePer : String) : Boolean;
Var
  Impresora : String;
  F : TextFile;
Begin
  If Dir.TermName = 'VENTAS1' Then Impresora := Dir.Tickets1;
  If Dir.TermName = 'VENTAS2' Then Impresora := Dir.Tickets2;
  AssignFile(F, Impresora);
  ReWrite(F);
  WriteLn(F, '                              ');
  WriteLn(F, '                              ');
  WriteLn(F, '                              ');
  WriteLn(F, '               '+ #15);
  WriteLn(F, '               '+ #14 + SectorSel);
  WriteLn(F, '               '+ #14 + Edit1.Text + ' ' + Edit2.Text);
  WriteLn(F, '               '+ #15 + 'Telefono : ' + Edit3.Text);
  WriteLn(F, '               '+ #15 + 'Reserva  : ' + Panel3.Caption);
  WriteLn(F, '               '+ #15 + 'Total Personas : '+ Panel38.Caption);
  WriteLn(F, '               '+ #14 + 'Mesa Reservada : '+ Panel7.Caption);
  WriteLn(F, '               '+ #14 + 'Numero Boleta  : '+ Panel5.Caption);
  WriteLn(F, '               '+ #15 + 'Adicionales : ' + Panel9.Caption + ' ' + Panel10.Caption + ' ' + Panel16.Caption);
  WriteLn(F, '               '+ #15 + 'Adicionales : ' + Panel17.Caption + ' ' + Panel18.Caption + ' ' + Panel19.Caption);
  WriteLn(F, '               '+ #15 + 'Adicionales : ' + Panel22.Caption + ' ' + Panel23.Caption + ' ' + Panel24.Caption + ' ' + Panel25.Caption);
  WriteLn(F, '               '+ #15 + 'Valido para : '+ IntToStr(Recibe) + RecibePer);
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, '                                                                     ');
  WriteLn(F, #12);
  CloseFile(F);
  Result := True;
End;


procedure TMainForm.SpeedButton10Click(Sender: TObject);
begin
  tClientes.Open;
  PBusqueda.Visible := True;
  Grid2.DataSource := SourceClientes;
  Grid2.Columns.Add;
  Grid2.Columns.Add;
  Grid2.Columns.Add;
  Grid2.Columns[0].FieldName := 'Apellidos';
  Grid2.Columns[1].FieldName := 'Nombres';
  Grid2.Columns[2].FieldName := 'Telefono';
  Grid2.Columns[0].title.Caption := 'Apellidos';
  Grid2.Columns[1].title.Caption := 'Nombres';
  Grid2.Columns[2].title.Caption := 'Telefono';
  Grid2.Columns[0].Width := 95;
  Grid2.Columns[1].Width := 95;
  Grid2.Columns[2].Width := 60;
  Edit10.SetFocus;
end;

procedure TMainForm.Edit10Change(Sender: TObject);
begin
  With tClientes Do
    Begin
      SetKey;
      FieldByName('Apellidos').AsString := Edit10.Text;
      GotoNearest;
    End;
end;

procedure TMainForm.Grid2DblClick(Sender: TObject);
begin
  Edit1.Text := tClientes.Fields[1].AsString;
  Edit2.Text := tClientes.Fields[0].AsString;
  Edit3.Text := tClientes.Fields[2].AsString;
  PBusqueda.Visible := False;
  tClientes.Close;
end;

procedure TMainForm.btnLimpiarClick(Sender: TObject);
begin
//***********************************
  tMesas.Filter := '';
  If (Panel7.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel7.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel9.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel9.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel10.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel10.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel16.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel16.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel17.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel17.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel18.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel18.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel19.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel19.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel22.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel22.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel23.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel23.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel24.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel24.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
  If (Panel25.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel25.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'DISPONIBLE'; tMesas.Post; End;
//***********************************
  LimpiaPantalla;
end;

procedure TMainForm.btnRespaldoClick(Sender: TObject);
Var
  Res1, Res2, Res3 : String;
begin
  MessageBox(Handle, 'INICIO DE RESPALDO. ASEGURESE DE TENER'+ #13#10 + 'UN DISCO EN LA UNIDAD DE RESPALDO (A:)', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
  ProgressBar1.Visible := True;
  Res1 := Dir.Respaldo1 + '\Respaldo.Bck';
  Res2 := Dir.Respaldo2 + '\Respaldo.Bck';
  Res3 := Dir.Respaldo3 + '\Respaldo.Bck';
  Respaldo.Backup(ListBox1.Items, Res1);
  Respaldo.Backup(ListBox1.Items, Res2);
  Respaldo.Backup(ListBox1.Items, Res3);
  ProgressBar1.Visible := False;
end;

procedure TMainForm.RespaldoError(Sender: TObject; const Error: Integer; ErrString: String);
begin
  Case Error Of
    1 : Begin MessageBox(Handle, '¡¡ NO SE PUEDEN LEER LOS ARCHIVOS !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    2 : Begin MessageBox(Handle, '¡¡ SOBREESCRITURA DE ARCHIVO FALLIDA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    3 : Begin MessageBox(Handle, '¡¡ NO SE PUEDE LEER EL ARCHIVO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    4 : Begin MessageBox(Handle, '¡¡ NO SE PUEDE ESCRIBIR EL ARCHIVO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    5 : Begin MessageBox(Handle, '¡¡ TIPO DE ARCHIVO INVALIDO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    6 : Begin MessageBox(Handle, '¡¡ ERROR DE COMPRESION !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
    7 : Begin MessageBox(Handle, '¡¡ NO SE PUEDE CREAR ARCHIVO TEMPORAL !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1); End;
  End;

end;

procedure TMainForm.RespaldoNeedDisk(Sender: TObject; DiskID: Word;  var Continue: Boolean);
begin
  Continue := MessageDlg('POR FAVOR, INSERTE EL DISCO ' + inttostr(DiskID)+' Y PRESIONE OK PARA CONTINUAR',  mtInformation, mbOKCancel, 0) = mrOK;
End;

procedure TMainForm.RespaldoProgress(Sender: TObject; Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
  StatusBar1.Panels[0].Text := ExtractFileName(FileName);
  ProgressBar1.Position := Percent;
//  If CancelButton.Down Then Continue := False;

end;

procedure TMainForm.btnCambiaCorrelativosClick(Sender: TObject);
Var
  CorreBol, CorreTick : String;
begin
  ClaveForm.ShowModal;
  tUser.Open; tUser.SetKey;
  If Not tUser.FindKey([ClaveForm.Edit1.Text]) Then
    Begin
      MessageBox(Handle, '¡¡ USUARIO NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
    End
  Else
    Begin
      If (tUser.Fields[1].AsString = ClaveForm.Edit2.Text) Then
        If (tUser.Fields[7].Value  = True) Then
          Begin
            CorreBol  := InputBox('CAMBIO CORRELATIVOS', 'NUEVO CORRELATIVO BOLETAS', '');
            CorreTick := InputBox('CAMBIO CORRELATIVOS', 'NUEVO CORRELATIVO TICKET', '');
            tCorre.Open; tCorre.SetKey;
            If (tCorre.FindKey([Dir.TermName])) Then
              Begin
                tCorre.Edit;
                tCorre.Fields[1].Value := StrToFloat(CorreBol);
                tCorre.Fields[2].Value := StrToFloat(CorreTick);
                tCorre.Post;
                NumerosCorrelativosBoletas;
                NumerosCorrelativosTickets;
              End
            Else
              Begin
                MessageBox(Handle, '¡¡ TERMINAL NO ENCONTRADO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
              End;
          End
        Else
          Begin
            MessageBox(Handle, '¡¡ USUARIO NO AUTORIZADO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
          End
      Else
        Begin
          MessageBox(Handle, '¡¡ PASSWORD INCORRECTA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
        End;
    End;

end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  If (Edit1.Text = '') Or (Edit2.Text = '') or (Edit3.Text = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR DATOS DEL CLIENTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      Edit1.SetFocus;
    End;
  If (Panel7.Caption = '') Then
    Begin
      MessageBox(Handle, '¡¡ DEBE ELEGIR AL MENOS UNA MESA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
    End;
  If (SpinAdCena.Value = 0) And (SpinAdTrad.Value = 0) And (SpinAdDisco.Value = 0) And (SpinNenes.Value = 0) Then
    Begin
      MessageBox(Handle, '¡¡ DEBE INGRESAR UNA CANTIDAD DE PERSONAS !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
      SpinAdCena.SetFocus;
    End;

//***********************************
  tMesas.Filter := '';
  If (Panel7.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel7.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel9.Caption <> '')  Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel9.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel10.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel10.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel16.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel16.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel17.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel17.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel18.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel18.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel19.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel19.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel22.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel22.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel23.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel23.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel24.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel24.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
  If (Panel25.Caption <> '') Then Begin tMesas.SetKey; tMesas.FindKey([StrToInt(Panel25.Caption)]); tMesas.Edit; tMesas.Fields[4].Value := 'TELEFONICA'; tMesas.Post; End;
//***********************************
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      // Si es Caja llame al programa de pago
      //PFPago.Visible := True;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
        // Llama al Programa Emisor de Vales para la Caja de Venta
      End;
  NumerosCorrelativosTickets;
//  GrabaTelefonica;
  AumentaTickets;
  LimpiaScreenFono;
end;

procedure TMainForm.btnBuscaReservaClick(Sender: TObject);
begin
  PBuscaRes.Left := 8; PBuscaRes.Height := 388; PBuscaRes.Top := 160; PBuscaRes.Width := 549;
  PBuscaRes.Visible := True;
  tMovs.Open;
  Grid3.DataSource := SourceMovs;
  Grid3.Columns[0].FieldName  := 'NuReserva';     Grid3.Columns[1].FieldName  := 'NuBoleta';
  Grid3.Columns[2].FieldName  := 'FechaReserva';  Grid3.Columns[3].FieldName  := 'Sector';
  Grid3.Columns[4].FieldName  := 'TipoReserva';   Grid3.Columns[5].FieldName  := 'Apellido';
  Grid3.Columns[6].FieldName  := 'Nombres';       Grid3.Columns[7].FieldName  := 'AdultosCena';
  Grid3.Columns[8].FieldName  := 'AdultosTrad';   Grid3.Columns[9].FieldName  := 'AdultosCup';
  Grid3.Columns[10].FieldName  := 'Ninos';        Grid3.Columns[11].FieldName := 'MesaPPal';
  Grid3.Columns[12].FieldName := 'Adic1';         Grid3.Columns[13].FieldName := 'Adic2';
  Grid3.Columns[14].FieldName := 'Adic3';         Grid3.Columns[15].FieldName := 'Adic4';
  Grid3.Columns[16].FieldName := 'Adic5';         Grid3.Columns[17].FieldName := 'EstadoReserva';
  Grid3.Columns[18].FieldName := 'ValorPagado';
  Grid3.Columns[0].Title.Caption  := 'NºResva.';  Grid3.Columns[1].Title.Caption  := 'NºBoleta';
  Grid3.Columns[2].Title.Caption  := 'Fecha';     Grid3.Columns[3].Title.Caption  := 'Sector';
  Grid3.Columns[4].Title.Caption  := 'Tipo';      Grid3.Columns[5].Title.Caption  := 'Apellidos';
  Grid3.Columns[6].Title.Caption  := 'Nombres';   Grid3.Columns[7].Title.Caption  := 'Cn';
  Grid3.Columns[8].Title.Caption  := 'Tr';        Grid3.Columns[9].Title.Caption  := 'Cp.';
  Grid3.Columns[10].Title.Caption  := 'Nñ';       Grid3.Columns[11].Title.Caption := 'Mesa';
  Grid3.Columns[12].Title.Caption := 'Ad 1';      Grid3.Columns[13].Title.Caption := 'Ad 2';
  Grid3.Columns[14].Title.Caption := 'Ad 3';      Grid3.Columns[15].Title.Caption := 'Ad 4';
  Grid3.Columns[16].Title.Caption := 'Ad 5';      Grid3.Columns[17].Title.Caption := 'Situacion';
  Grid3.Columns[18].Title.Caption := 'Pagado';
  Grid3.Columns[0].Width  := 60;   Grid3.Columns[1].Width  := 60;  Grid3.Columns[2].Width  := 70;
  Grid3.Columns[3].Width  := 70;   Grid3.Columns[4].Width  := 70;  Grid3.Columns[5].Width  := 150;
  Grid3.Columns[6].Width  := 100;  Grid3.Columns[7].Width  := 20;  Grid3.Columns[8].Width  := 20;
  Grid3.Columns[9].Width  := 20;   Grid3.Columns[10].Width  := 20; Grid3.Columns[11].Width := 30;
  Grid3.Columns[12].Width := 30;   Grid3.Columns[13].Width := 30;  Grid3.Columns[14].Width := 30;
  Grid3.Columns[15].Width := 30;   Grid3.Columns[16].Width := 30;  Grid3.Columns[17].Width := 85;
  Grid3.Columns[18].Width := 70;
  Edit11.SetFocus;
end;

procedure TMainForm.Edit11Change(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexFieldNames := 'NuReserva';
      SetKey;
      FieldByName('NuReserva').Value := StrtoFloat(Edit11.Text);
      GotoNearest;
    End;
end;

procedure TMainForm.Edit12Change(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexName := 'BoletaMov';
      SetKey;
      FieldByName('NuBoleta').Value := StrtoFloat(Edit12.Text);
      GotoNearest;
    End;
end;

procedure TMainForm.Edit13Change(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexName := 'MesaMov';
      SetKey;
      FieldByName('MesaPpal').Value := StrToInt(Edit13.Text);
      GotoNearest;
    End;
end;

procedure TMainForm.Edit14Change(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexName := 'ApellidoMov';
      SetKey;
      FieldByName('Apellido').AsString := Edit14.Text;
      GotoNearest;
    End;
end;

procedure TMainForm.Edit15Change(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexName := 'SectorMov';
      SetKey;
      FieldByName('Sector').AsString := Edit15.Text;
      GotoNearest;
    End;
end;

procedure TMainForm.SelFechaMovChange(Sender: TObject);
begin
  With tMovs Do
    Begin
      IndexName := 'FechaMov';
      SetKey;
      FieldByName('FechaReserva').Value := SelFechaMov.Date;
      GotoNearest;
    End;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  tMovs.IndexFieldNames := 'NuReserva';
  tMovs.SetKey;
  PBuscaRes.Visible := False;
end;


procedure TMainForm.btnAgregaPersonasClick(Sender: TObject);
begin
  tMovs.Open;
  OldReserva := InputBox('AGREGAR PERSONAS A UNA RESERVA', 'NUMERO DE RESERVA A MODIFICAR', '');
  With tMovs Do
    Begin
      SetKey;
      If Not FindKey([StrToFloat(OldReserva)]) Then
        Begin
          MessageDlg('RESERVA NO EXISTE',  mtInformation, mbOKCancel, 0);
        End
      Else
        Begin
          tMesas.Open;
          tMesas.SetKey;
          tMesas.FindKey([tMovs.Fields[10].Value]);
          tMesas.Edit;
          tMesas.Fields[4].Value := 'DISPONIBLE';
          tMesas.Post;
          tMesas.Refresh;
        End;
    End;
end;

Procedure TMainForm.ReImprimeTickets;
Var
  I : Integer;
  Lugar : String;
Begin
  tMovs.Open;
  tMovs.IndexFieldNames := 'NuReserva';
  tMovs.SetKey;
  If Not (tMovs.FindKey([StrToFloat(Edit16.Text)])) Then
    Begin
      MessageBox(Handle, '¡¡ RESERVA NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
    End
  Else
  Begin
  Panel3.Caption := tMovs.Fields[0].AsString;
  SectorSel  := tMovs.Fields[23].Value;
  Edit1.Text := tMovs.Fields[5].Value;
  Edit2.Text := tMovs.Fields[4].Value;
  Panel38.Caption := IntToStr(tMovs.Fields[6].Value + tMovs.Fields[7].Value + tMovs.Fields[8].Value + tMovs.Fields[9].Value);
  Panel7.Caption  := tMovs.Fields[10].AsString;
  Panel9.Caption  := tMovs.Fields[11].AsString;
  Panel10.Caption  := tMovs.Fields[12].AsString;
  Panel16.Caption  := tMovs.Fields[13].AsString;
  Panel17.Caption  := tMovs.Fields[14].AsString;
  Panel18.Caption  := tMovs.Fields[15].AsString;
  Panel19.Caption  := tMovs.Fields[16].AsString;
  Panel22.Caption  := tMovs.Fields[17].AsString;
  Panel23.Caption  := tMovs.Fields[18].AsString;
  Panel24.Caption  := tMovs.Fields[19].AsString;
  Panel25.Caption  := tMovs.Fields[20].AsString;


  Lugar := tMovs.Fields[23].Value;
  If (Dir.TermType = 'CAJA-VENTA') Then
    Begin
      If (Lugar = 'RANCHO') Or (Lugar = 'PERGOLA 3') Then
        Begin
          Perso := SpinEdit1.Value;
          If ((Perso Mod 2) > 0) Then
            Begin
              For I := 1 To ((Perso - 1) Div 2) Do
                Begin
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                End;
              PrintTick := ImprimeTickets(1, ' ADULTO');
            End
          Else
            Begin
              For I := 1 To (Perso Div 2) Do
                Begin
                  PrintTick := ImprimeTickets(2, ' ADULTOS');
                End;
            End;
          If (SpinEdit2.Value > 0) Then
            Begin
              Perso := SpinEdit2.Value;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintTick := ImprimeTickets(2, ' NINOS');
                     End;
                   PrintTick := ImprimeTickets(1, ' NINO');
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       PrintTick := ImprimeTickets(2, ' NINOS');
                     End;
                End;
            End;
        End
      Else // Si no es Cena
        Begin
          If (Lugar = 'CUPULA') Or (Lugar = 'TERRAZA') Then
            Begin
              Perso := SpinEdit1.Value;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                     End;
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                 End
               Else
                 Begin
                    For I := 1 To (Perso Div 2) Do
                      Begin
                        PrintTick := ImprimeTickets(2, ' ADULTOS');
                      End;
                 End;
            End
          Else
            Begin
              Perso := SpinEdit1.Value;
              If ((Perso Mod 2) > 0) Then
                Begin
                   For I := 1 To ((Perso - 1) Div 2) Do
                     Begin
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                     End;
                   PrintTick := ImprimeTickets(1, ' ADULTO');
                End
              Else
                Begin
                   For I := 1 To (Perso Div 2) Do
                     Begin
                       PrintTick := ImprimeTickets(2, ' ADULTOS');
                     End;
                End;
            End;
        End;
    End
  Else
    If (Dir.TermType = 'VENTA') Then
      Begin
      For I := 1 To Perso Do
        Begin
          PrintTick :=ImprimeTickets(2, ' ADULTOS');
        End;
      End;
  End;
  tMovs.Close;
  LimpiaPantalla;
End;


procedure TMainForm.btnReimprimirClick(Sender: TObject);

begin
  GrabaCorrelativosBoletas;
  ImprimeTicketsDos;
//  ImprimeBoletasDos;
  //ClaveForm.ShowModal;
 // tUser.Open; tUser.SetKey;
 // If {Not} tUser.FindKey([ClaveForm.Edit1.Text]) Then
  //  Begin
  //    MessageBox(Handle, '¡¡ USUARIO NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
  //  End
 // Else
 //   Begin
 //     If (tUser.Fields[1].AsString = ClaveForm.Edit2.Text) Then
  //      If (tUser.Fields[8].Value  = True) Then
  //        Begin
         //   Panel30.Visible := True;
  //        End
  //      Else
  //        Begin
    //        MessageBox(Handle, '¡¡ USUARIO NO AUTORIZADO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
   //       End
   //   Else
   //     Begin
   //       MessageBox(Handle, '¡¡ PASSWORD INCORRECTA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
   //     End;
  //  End;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
  Panel30.Visible := False;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  ReImprimeTickets;
end;

procedure TMainForm.btnAgregaMesasClick(Sender: TObject);
begin
  ClaveForm.ShowModal;
  tUser.Open; tUser.SetKey;
  If Not tUser.FindKey([ClaveForm.Edit1.Text]) Then
    Begin
      MessageBox(Handle, '¡¡ USUARIO NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
    End
  Else
    Begin
      If (tUser.Fields[1].AsString = ClaveForm.Edit2.Text) Then
        If (tUser.Fields[8].Value  = True) Then
          Begin
            Grid4.DataSource := SourceMesas;
            Grid4.Columns.Add;
            Grid4.Columns.Add;
            Grid4.Columns.Add;
            Grid4.Columns.Add;
            Grid4.Columns[0].FieldName := 'NuMesa';
            Grid4.Columns[1].FieldName := 'CapMin';
            Grid4.Columns[2].FieldName := 'CapMax';
            Grid4.Columns[3].FieldName := 'Sector';
            Grid4.Columns[0].Title.Caption := 'Nº Mesa';
            Grid4.Columns[1].Title.Caption := 'Min.';
            Grid4.Columns[2].Title.Caption := 'Max.';
            Grid4.Columns[3].Title.Caption := 'Sector';
            Grid4.Columns[0].Width := 50;
            Grid4.Columns[1].Width := 30;
            Grid4.Columns[2].Width := 30;
            Grid4.Columns[3].Width := 150;
            AgregaMesaRes := InputBox('AGREGAR MESAS A RESERVA', 'INGRESE NUMERO RESERVA', '0');
            If AgregaMesaRes <> '0' Then
              Begin
                tMovs.Open;
                tMovs.IndexFieldNames := 'NuReserva';
                tMovs.SetKey;
                If Not (tMovs.FindKey([StrToFloat(AgregaMesaRes)])) Then
                  Begin
                    MessageBox(Handle, '¡¡ RESERVA NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
                  End
                Else
                  Begin
                    tMesas.Filter := GetFiltro(tMovs.Fields[23].Value);
                    Panel31.Visible := True;
                    tMesas.Open;
                    Grid4.DataSource := SourceMesas;
                  End;
              End
            Else
              Begin
                MessageBox(Handle, '¡¡ RESERVA NO EXISTE !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
              End;
          End
        Else
          Begin
            MessageBox(Handle, '¡¡ USUARIO NO AUTORIZADO !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
          End
      Else
        Begin
          MessageBox(Handle, '¡¡ PASSWORD INCORRECTA !!', 'AVISO', mb_Ok or mb_IconStop or mb_DefButton1);
        End;
    End;
end;

procedure TMainForm.Grid4DblClick(Sender: TObject);
begin
  tMovs.Open;
  tMovs.IndexFieldNames := 'NuReserva';
  tMovs.SetKey;
  If (tMovs.FindKey([StrToFloat(AgregaMesaRes)])) Then
    Begin
      tMovs.Edit;
      If tMovs.Fields[11].AsString = '' Then tMovs.Fields[11].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[12].AsString = '' Then tMovs.Fields[12].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[13].AsString = '' Then tMovs.Fields[13].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[14].AsString = '' Then tMovs.Fields[14].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[15].AsString = '' Then tMovs.Fields[15].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[16].AsString = '' Then tMovs.Fields[16].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[17].AsString = '' Then tMovs.Fields[17].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[18].AsString = '' Then tMovs.Fields[18].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[19].AsString = '' Then tMovs.Fields[19].Value := tMesas.Fields[0].Value Else
      If tMovs.Fields[20].AsString = '' Then tMovs.Fields[20].Value := tMesas.Fields[0].Value;
      tMovs.Post;
    End;
  tMesas.Edit;
  tMesas.Fields[4].Value := 'RESERVADA';
  tMesas.Post;
  tMovs.Close;
  tMesas.Close;
  Panel31.Visible := False;
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  Panel31.Visible := False;
end;

Function TMainForm.GetFiltro(Recibe : String) : String;
Var Filtro : String;
Begin
  Filtro := 'Sector = ';
  If Recibe = 'RANCHO'      Then Filtro := Filtro +  '''RANCHO''' Else
  If Recibe = 'TRAD. SUR'   Then Filtro := Filtro +  '''TRAD. SUR''' Else
  If Recibe = 'TRAD. NORTE' Then Filtro := Filtro +  '''TRAD. NORTE''' Else
  If Recibe = 'COMEDOR'     Then Filtro := Filtro +  '''COMEDOR''' Else
  If Recibe = 'CUPULA'      Then Filtro := Filtro +  '''CUPULA''' Else
  If Recibe = 'TERRAZA'     Then Filtro := Filtro +  '''TERRAZA''' Else
  If Recibe = 'PERGOLA 1'   Then Filtro := Filtro +  '''PERGOLA 1''' Else
  If Recibe = 'PERGOLA 2'   Then Filtro := Filtro +  '''PERGOLA 2''' Else
  If Recibe = 'PERGOLA 3'   Then Filtro := Filtro +  '''PERGOLA 3''';
  Filtro := Filtro + ' And ';
  Filtro := Filtro + 'ESTADO = ';
  Filtro := Filtro + '''DISPONIBLE''';
  Result := Filtro;
End;


end.

