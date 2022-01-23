unit Clave;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TClaveForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClaveForm: TClaveForm;

implementation

{$R *.DFM}

procedure TClaveForm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TClaveForm.FormShow(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit1.SetFocus;
end;

end.
