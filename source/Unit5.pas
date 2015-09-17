unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls;

type
  TAddForm = class(TForm)
    Action: TLabel;
    Edit1: TEdit;
    Method: TLabel;
    ComboBox1: TComboBox;
    Name: TLabel;
    Edit2: TEdit;
    Input: TLabel;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    Button1: TButton;
    UpDown1: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddForm: TAddForm;

implementation

{$R *.dfm}

procedure TAddForm.FormCreate(Sender: TObject);
begin

StringGrid1.Cells[0,0] := 'Name';
StringGrid1.Cells[1,0] := 'Value';
StringGrid1.Cells[2,0] := 'Type';
StringGrid1.Cells[3,0] := 'Size';
StringGrid1.Cells[4,0] := 'MAXLENGTH';
end;

procedure TAddForm.Edit3Change(Sender: TObject);
begin
 if ((Edit3.Text = '') OR (Edit3.Text = '0')) then
  begin
  StringGrid1.RowCount := 2;
  StringGrid1.FixedRows := 1;
  end
 else
 begin
 StringGrid1.FixedRows := 1;
 StringGrid1.RowCount := StrToInt(Edit3.Text)+1;
 end;
end;

procedure TAddForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
   Edit3.Text := IntToStr(UpDown1.Position);
end;

procedure TAddForm.Button1Click(Sender: TObject);
begin
ModalResult := mrOk;
end;

end.
