unit Funcion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFuncionForm = class(TForm)
    Panel1: TPanel;
    Selector: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Panel11: TPanel;
    Edit10: TEdit;
    Panel12: TPanel;
    Edit11: TEdit;
    Bevel3: TBevel;
    Panel13: TPanel;
    Edit12: TEdit;
    Edit13: TEdit;
    Panel14: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FuncionForm: TFuncionForm;

implementation

{$R *.DFM}

procedure TFuncionForm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
