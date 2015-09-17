unit AddImageU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, ExtCtrls, ExtDlgs;

type
  TAddImageForm = class(TForm)
    Image: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Image1: TImage;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddImageForm: TAddImageForm;

implementation

uses MainFormU;

{$R *.dfm}

procedure TAddImageForm.Button1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
  Edit1.Text := OpenPictureDialog1.FileName;
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  Edit3.Text := IntToStr(Image1.Picture.Height);
  Edit2.Text := IntToStr(Image1.Picture.Width);
end;
end;

procedure TAddImageForm.Button2Click(Sender: TObject);
begin
ModalResult := mrOk;
end;

end.
 