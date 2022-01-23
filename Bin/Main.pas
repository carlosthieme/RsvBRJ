unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, backup, Buttons, Db, DBTables, Registry, Menus,
  Grids, DBGrids, DBCtrls, Printers, AdvGrid, asgprint, StdCtrls;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    tMesas: TTable;
    SourceMesas: TDataSource;
    tPrecios: TTable;
    tClientes: TTable;
    tCorre: TTable;
    tMovs: TTable;
    tPagos: TTable;
    tCaja: TTable;
    tUser: TTable;
    tBoletas: TTable;
    SourcePrecios: TDataSource;
    SourceClientes: TDataSource;
    SourceCorres: TDataSource;
    SourceMovs: TDataSource;
    SourcePagos: TDataSource;
    SourceCaja: TDataSource;
    SourceUsers: TDataSource;
    SourceBoletas: TDataSource;
    StatusBar1: TStatusBar;
    BackupFile1: TBackupFile;
    MainMenu1: TMainMenu;
    Administracin1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    MantencindeCajas1: TMenuItem;
    MantencindeClientes1: TMenuItem;
    MantenciondePrecios1: TMenuItem;
    MantencindeUsuarios1: TMenuItem;
    VaciarTablas1: TMenuItem;
    MantencindeMesas1: TMenuItem;
    ProgressBar1: TProgressBar;
    PanelGrid: TPanel;
    Grid: TDBGrid;
    HabiltarTodaslasMesas1: TMenuItem;
    EditarlasMesas1: TMenuItem;
    Panel2: TPanel;
    DataNav: TDBNavigator;
    SpeedButton1: TSpeedButton;
    EditarClientes1: TMenuItem;
    ImprimirListado1: TMenuItem;
    GridPrintClientes: TAdvStringGrid;
    AdvGridPrintSettingsDialog1: TAdvGridPrintSettingsDialog;
    N2: TMenuItem;
    PanelLimpiaTablas: TPanel;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Informes1: TMenuItem;
    Procesos1: TMenuItem;
    CierredeCaja1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure VaciarTablas1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure HabiltarTodaslasMesas1Click(Sender: TObject);
    procedure EditarlasMesas1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MantencindeUsuarios1Click(Sender: TObject);
    procedure MantenciondePrecios1Click(Sender: TObject);
    procedure EditarClientes1Click(Sender: TObject);
    procedure ImprimirListado1Click(Sender: TObject);
    procedure MantencindeCajas1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
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
  R : TRegistry;
  Dir : Directorios;

implementation

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  R := TRegistry.Create;
  With R Do
    Begin
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey(AWKey, False);
      Dir.TermName := ReadString('ESTACION');
      CloseKey;
      OpenKey(AWKey, False);
      Dir.TermType := ReadString('FUNCION');
      CloseKey;
      OpenKey(AWSubKey1, False);
      Dir.BaseDatos := ReadString('Dir_Data');
      CloseKey;
      // Programas
      OpenKey(AWSubKey2, False);
      Dir.Ejecutables := ReadString('Dir_Prog');
      CloseKey;
      // Respaldo
      OpenKey(AWSubKey3, False);
      Dir.Respaldo1 := ReadString('Dir_Respa_1');
      Dir.Respaldo2 := ReadString('Dir_Respa_2');
      Dir.Respaldo3 := ReadString('Dir_Respa_3');
      CloseKey;
      // Impresion
      OpenKey(AWSubKey4, False);
      Dir.Boletas1 := ReadString('Boletas_1');
      Dir.Boletas2 := ReadString('Boletas_2');
      Dir.Tickets1 := ReadString('Tickets_1');
      Dir.Tickets2 := ReadString('Tickets_2');
      Dir.Boletas3 := ReadString('Backup_1');
      Dir.Tickets3 := ReadString('Backup_2');
      Dir.Informes := ReadString('Informes');
      CloseKey;
      // Parametros
      OpenKey(AWSubKey5, False);
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

end;


procedure TMainForm.VaciarTablas1Click(Sender: TObject);
begin
  PanelLimpiaTablas.Visible := True;
end;

procedure TMainForm.Salir1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.HabiltarTodaslasMesas1Click(Sender: TObject);
begin
  tMesas.Open;
  ProgressBar1.Visible := True;
  ProgressBar1.Step    := 1;
  ProgressBar1.Max     := tMesas.RecordCount;
  While Not tMesas.EOF Do
    Begin
      tMesas.Edit;
      tMesas.Fields[4].Value := 'DISPONIBLE';
      tMesas.Post;
      tMesas.Next;
      StatusBar1.Panels[0].Text := 'Mesa : ' + tMesas.Fields[0].AsString + '--> ' + tMesas.Fields[1].AsString;
      ProgressBar1.Position := tMesas.RecNo;
    End;
  tMesas.Close;
  StatusBar1.Panels[0].Text := '';
  ProgressBar1.Position := 0;
  ProgressBar1.Visible  := False;
end;

procedure TMainForm.EditarlasMesas1Click(Sender: TObject);
begin
  Grid.Columns.Add;  Grid.Columns.Add;
  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;
  Grid.Columns[0].FieldName := 'NuMesa';
  Grid.Columns[1].FieldName := 'CapMin';
  Grid.Columns[2].FieldName := 'CapMax';
  Grid.Columns[3].FieldName := 'Sector';
  Grid.Columns[4].FieldName := 'Estado';

  Grid.Columns[0].Title.Caption := 'Nº Mesa';
  Grid.Columns[1].Title.Caption := 'Min.';
  Grid.Columns[2].Title.Caption := 'Max.';
  Grid.Columns[3].Title.Caption := 'Sector';
  Grid.Columns[4].Title.Caption := 'Estado';
  Grid.Columns[0].Width := 50;
  Grid.Columns[1].Width := 30;
  Grid.Columns[2].Width := 30;
  Grid.Columns[3].Width := 150;
  Grid.Columns[4].Width := 150;
  tMesas.Open;
  PanelGrid.Visible  := True;
  Grid.DataSource    := SourceMesas;
  DataNav.DataSource := SourceMesas;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  tMesas.Close;
  tClientes.Close;
  tUser.Close;
  tPrecios.Close;
  PanelGrid.Visible := False;
end;

procedure TMainForm.MantencindeUsuarios1Click(Sender: TObject);
begin
  Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add;
  Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add;

  Grid.Columns[0].FieldName  := 'Identifica';
  Grid.Columns[1].FieldName  := 'Clave';
  Grid.Columns[2].FieldName  := 'Nombre';
  Grid.Columns[3].FieldName  := 'Cajero';
  Grid.Columns[4].FieldName  := 'Vendedor';
  Grid.Columns[5].FieldName  := 'CajaVenta';
  Grid.Columns[6].FieldName  := 'Supervisor';
  Grid.Columns[7].FieldName  := 'Correlativos';
  Grid.Columns[8].FieldName  := 'Reimpresion';

  Grid.Columns[0].Title.Caption := 'Identificación';
  Grid.Columns[1].Title.Caption := 'Password';
  Grid.Columns[2].Title.Caption := 'Nombre';
  Grid.Columns[3].Title.Caption := 'CJ';
  Grid.Columns[4].Title.Caption := 'VD';
  Grid.Columns[5].Title.Caption := 'VC';
  Grid.Columns[6].Title.Caption := 'SP';
  Grid.Columns[7].Title.Caption := 'CR';
  Grid.Columns[8].Title.Caption := 'RI';
  Grid.Columns[3].Title.Alignment := taCenter;
  Grid.Columns[4].Title.Alignment := taCenter;
  Grid.Columns[5].Title.Alignment := taCenter;
  Grid.Columns[6].Title.Alignment := taCenter;
  Grid.Columns[7].Title.Alignment := taCenter;
  Grid.Columns[8].Title.Alignment := taCenter;

  Grid.Columns[0].Width := 100;
  Grid.Columns[1].Width := 70;
  Grid.Columns[2].Width := 180;
  Grid.Columns[3].Width := 50;
  Grid.Columns[4].Width := 50;
  Grid.Columns[5].Width := 50;
  Grid.Columns[6].Width := 50;
  Grid.Columns[7].Width := 50;
  Grid.Columns[8].Width := 50;
  tUser.Open;
  PanelGrid.Visible  := True;
  Grid.DataSource    := SourceUsers;
  DataNav.DataSource := SourceUsers;

end;

procedure TMainForm.MantenciondePrecios1Click(Sender: TObject);
begin
  Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add; Grid.Columns.Add;
  Grid.Columns[0].FieldName  := 'AdultosCena';
  Grid.Columns[1].FieldName  := 'AdultosTrad';
  Grid.Columns[2].FieldName  := 'AdultosDisco';
  Grid.Columns[3].FieldName  := 'Ninos';
  Grid.Columns[0].Title.Caption := 'Adultos Cena';
  Grid.Columns[1].Title.Caption := 'Adultos Tradicional';
  Grid.Columns[2].Title.Caption := 'Adultos Disco';
  Grid.Columns[3].Title.Caption := 'Niños';
  Grid.Columns[0].Title.Alignment := taCenter;
  Grid.Columns[1].Title.Alignment := taCenter;
  Grid.Columns[2].Title.Alignment := taCenter;
  Grid.Columns[3].Title.Alignment := taCenter;
  Grid.Columns[0].Width := 150;
  Grid.Columns[1].Width := 150;
  Grid.Columns[2].Width := 150;
  Grid.Columns[3].Width := 150;
  tPrecios.Open;
  PanelGrid.Visible  := True;
  Grid.DataSource    := SourcePrecios;
  DataNav.DataSource := SourcePrecios;
end;

procedure TMainForm.EditarClientes1Click(Sender: TObject);
begin
  PanelGrid.Visible := True;
  Grid.Columns.Add;
  Grid.Columns.Add;
  Grid.Columns.Add;
  Grid.Columns.Add;
  Grid.Columns[0].FieldName := 'FechaIngreso';
  Grid.Columns[1].FieldName := 'Apellidos';
  Grid.Columns[2].FieldName := 'Nombres';
  Grid.Columns[3].FieldName := 'Telefono';
  Grid.Columns[0].Title.Caption := 'Ingreso';
  Grid.Columns[1].Title.Caption := 'Apellidos';
  Grid.Columns[2].Title.Caption := 'Nombres';
  Grid.Columns[3].Title.Caption := 'Telefono';
  Grid.Columns[0].Width := 75;
  Grid.Columns[1].Width := 280;
  Grid.Columns[2].Width := 280;
  Grid.Columns[3].Width := 100;
  Grid.DataSource := SourceClientes;
  DataNav.DataSource := SourceClientes;
  tClientes.Open;
end;



procedure TMainForm.ImprimirListado1Click(Sender: TObject);
Var I : Integer;
begin
  I := 1;
  tClientes.Open; tClientes.First;
  GridPrintClientes.RowCount := tClientes.RecordCount + 1;
  While Not tClientes.EOF Do
    Begin
      GridPrintClientes.Cells[0, I] := tClientes.Fields[3].AsString;
      GridPrintClientes.Cells[1, I] := tClientes.Fields[0].AsString;
      GridPrintClientes.Cells[2, I] := tClientes.Fields[1].AsString;
      GridPrintClientes.Cells[3, I] := tClientes.Fields[2].AsString;
      Inc(I);
      tClientes.Next;
    End;
  GridPrintClientes.Print;  
end;

procedure TMainForm.MantencindeCajas1Click(Sender: TObject);
begin
  PanelGrid.Visible := True;
  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;
  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;  Grid.Columns.Add;
  Grid.Columns[0].FieldName := 'Terminal';
  Grid.Columns[1].FieldName := 'Inicial';
  Grid.Columns[2].FieldName := 'Final';
  Grid.Columns[3].FieldName := 'FechaTrabajo';
  Grid.Columns[4].FieldName := 'Estado';
  Grid.Columns[5].FieldName := 'Fondo';
  Grid.Columns[6].FieldName := 'Vendido';
  Grid.Columns[7].FieldName := 'Boletas';
  Grid.Columns[8].FieldName := 'UserOpen';

  Grid.Columns[0].Title.Caption := 'Terminal';
  Grid.Columns[1].Title.Caption := 'B. Inicial';
  Grid.Columns[2].Title.Caption := 'B. Final';
  Grid.Columns[3].Title.Caption := 'Fec.Trabajo';
  Grid.Columns[4].Title.Caption := 'Estado';
  Grid.Columns[5].Title.Caption := 'Fondo Caja';
  Grid.Columns[6].Title.Caption := 'Monto Vendido';
  Grid.Columns[7].Title.Caption := 'Boletas';
  Grid.Columns[8].Title.Caption := 'Usuario';
  Grid.Columns[0].Width := 120;
  Grid.Columns[1].Width := 70;
  Grid.Columns[2].Width := 70;
  Grid.Columns[3].Width := 70;
  Grid.Columns[4].Width := 100;
  Grid.Columns[5].Width := 120;
  Grid.Columns[6].Width := 120;
  Grid.Columns[7].Width := 100;
  Grid.Columns[8].Width := 120;
  Grid.DataSource := SourceCaja;
  DataNav.DataSource := SourceCaja;
  tCaja.Open;

end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  If CheckBox1.Checked = True Then tBoletas.Emptytable;
  If CheckBox3.Checked = True Then tClientes.Emptytable;
  If CheckBox6.Checked = True Then tMovs.Emptytable;
  If CheckBox7.Checked = True Then tPagos.Emptytable;
  PanelLimpiaTablas.Visible := False;
end;

end.
