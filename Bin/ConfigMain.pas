unit ConfigMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Funcion, Registry, FileCtrl;

type
  TConfigForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    btnCerrar: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

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
  ConfigForm: TConfigForm;
  R : TRegistry;

implementation

{$R *.DFM}

procedure TConfigForm.SpeedButton1Click(Sender: TObject);
Var
  Estacion, Funcion, Respa1, Respa2, Respa3 : String;
  Boletas1, Boletas2, Ticket1, Ticket2, Backup1, Backup2, Informes, LogFile, Journal : String;
begin
  FuncionForm.ShowModal;
  Estacion := FuncionForm.Edit10.Text;
  Case FuncionForm.Selector.ItemIndex Of
    0 : Begin Funcion := 'CAJA'; End;
    1 : Begin Funcion := 'VENTA'; End;
    2 : Begin Funcion := 'CAJA-VENTA'; End;
  End;
  Respa1   := FuncionForm.Edit1.Text;
  Respa2   := FuncionForm.Edit2.Text;
  Respa3   := FuncionForm.Edit3.Text;
  Boletas1 := FuncionForm.Edit4.Text;
  Boletas2 := FuncionForm.Edit5.Text;
  Ticket1  := FuncionForm.Edit6.Text;
  Ticket2  := FuncionForm.Edit7.Text;
  Backup1  := FuncionForm.Edit8.Text;
  Backup2  := FuncionForm.Edit9.Text;
  Informes := FuncionForm.Edit11.Text;
  LogFile  := FuncionForm.Edit12.Text;
  Journal  := FuncionForm.Edit13.Text;

  R := TRegistry.Create;
  With R Do
    Begin
      RootKey := HKEY_LOCAL_MACHINE;
      // Claves Dependientes de Clave Principal
      OpenKey(AWKey, True); WriteString('EMPRESA', AWEmpresa); CloseKey;
      OpenKey(AWKey, True); WriteString('ESTACION', Estacion); CloseKey;
      OpenKey(AWKey, True); WriteString('FUNCION', Funcion); CloseKey;
      OpenKey(AWKey, True); WriteString('SERIE', AWSerial); CloseKey;
      // Sub Claves
      OpenKey(AWSubKey1, True); CloseKey;
      OpenKey(AWSubKey2, True); CloseKey;
      OpenKey(AWSubKey3, True); CloseKey;
      OpenKey(AWSubKey4, True); CloseKey;
      OpenKey(AWSubKey5, True); CloseKey;
      // Valores Claves dependientes de SubClaves
      // Base de Datos
      OpenKey(AWSubKey1, False);
      WriteString('Dir_Data', 'C:\ResAnBrj\Data');
      CloseKey;
      // Programas
      OpenKey(AWSubKey2, False);
      WriteString('Dir_Prog', 'C:\ResAnBrj\Bin');
      CloseKey;
      // Respaldo
      OpenKey(AWSubKey3, False);
      WriteString('Dir_Respa_1', Respa1);
      WriteString('Dir_Respa_2', Respa2);
      WriteString('Dir_Respa_3', Respa3);
      CloseKey;
      // Impresion
      OpenKey(AWSubKey4, False);
      WriteString('Boletas_1', Boletas1);
      WriteString('Boletas_2', Boletas2);
      WriteString('Tickets_1', Ticket1);
      WriteString('Tickets_2', Ticket2);
      WriteString('Backup_1', Backup1);
      WriteString('Backup_2', Backup2);
      WriteString('Informes', Informes);
      CloseKey;
      // Parametros
      OpenKey(AWSubKey5, False);
      WriteInteger('Terminales', 3);
      WriteString('Log_File', LogFile);
      WriteString('Journal', Journal);
      CloseKey;

      // Creacion de Directorios
      ForceDirectories('C:\ResANBrj');            // Directorio Principal
      ForceDirectories('C:\ResANBrj\Data');       // Directorio de Datos
      ForceDirectories('C:\ResANBrj\Bin');        // Directorio de Programas Ejecutables
      ForceDirectories('C:\ResANBrj\Respaldo');   // Directorio de Respaldo Principal
      Free;
    End;
  MessageBox(Handle, '¡¡¡ CONFIGURACIÓN FINALIZADA !!', 'RESERVAS', mb_Ok or mb_IconAsterisk or mb_DefButton1);
end;

procedure TConfigForm.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
