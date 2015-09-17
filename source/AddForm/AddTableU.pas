unit AddTableU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAddTableForm = class(TForm)
    Row: TLabel;
    Edit1: TEdit;
    Column: TLabel;
    Edit2: TEdit;
    Border: TLabel;
    Edit3: TEdit;
    CELLSPACING: TLabel;
    CELLPADDING: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Width: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddTableForm: TAddTableForm;

implementation

{$R *.dfm}

procedure TAddTableForm.Button1Click(Sender: TObject);
begin
ModalResult := mrOk;
end;

end.
