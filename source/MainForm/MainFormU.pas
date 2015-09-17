unit MainFormU;

interface

uses
  Windows, ActiveX,  Menus, StdCtrls, OleCtrls, SHDocVw, ComCtrls, Dialogs,
  Classes, Controls, Messages, SysUtils, Variants, Graphics, Forms,
  ExtCtrls, ToolWin, Buttons, Tabs, FileCtrl, StdActns, ActnList;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Create1: TMenuItem;
    Help1: TMenuItem;
    SaveAS1: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    Table1: TMenuItem;
    Link1: TMenuItem;
    Image1: TMenuItem;
    PageControl1: TPageControl;
    Code: TTabSheet;
    Page: TTabSheet;
    WebBrowser1: TWebBrowser;
    Memo1Code: TMemo;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Open1: TMenuItem;
    NewProject1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Timer1: TTimer;
    NewProjectBTN: TButton;
    OpenProjectBTN: TButton;
    Form1: TMenuItem;
    HorizontalRule1: TMenuItem;
    Comment1: TMenuItem;
    Div1: TMenuItem;
    Pre1: TMenuItem;
    Superscript1: TMenuItem;
    Subscript1: TMenuItem;
    extArea1: TMenuItem;
    DropDownLists1: TMenuItem;
    Lists1: TMenuItem;
    LineBreak1: TMenuItem;
    ToolBar1: TToolBar;
    newProject: TSpeedButton;
    OpenProject: TSpeedButton;
    SaveAsProject: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    View1: TMenuItem;
    Toolbar2: TMenuItem;
    FileManager1: TMenuItem;
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Edit1: TMenuItem;
    PasteSpecial1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Undo1: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure SaveAS1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure NewProject1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Link1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Table1Click(Sender: TObject);
    procedure Form1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BoldTextBtnClick(Sender: TObject);
    procedure ItalicTextBtnClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure HorizontalRule1Click(Sender: TObject);
    procedure Div1Click(Sender: TObject);
    procedure Pre1Click(Sender: TObject);
    procedure Superscript1Click(Sender: TObject);
    procedure Subscript1Click(Sender: TObject);
    procedure extArea1Click(Sender: TObject);
    procedure LineBreak1Click(Sender: TObject);
    procedure Comment1Click(Sender: TObject);
    procedure DropDownLists1Click(Sender: TObject);
    procedure Lists1Click(Sender: TObject);
    procedure Toolbar2Click(Sender: TObject);
    procedure FileManager1Click(Sender: TObject);

   private
   
  public

  end;

var
  MainForm: TMainForm;

implementation

uses AddLinkU, AddImageU, AddTableU, AddFormU, Grids, DateUtils, Math;

{$R *.dfm}

procedure TMainForm.Exit1Click(Sender: TObject);
begin
close;
end;

procedure ReloadText(str:String);
var
  fp,sp : Integer; sel1,sel2: String;
  TxtLen: Integer;
begin
  sp := MainForm.Memo1Code.SelStart + 1 ;
  MainForm.Memo1Code.SelStart := 0;
  fp := MainForm.Memo1Code.SelStart;
  TxtLen := Length(MainForm.Memo1Code.Lines.Text) - fp + 1;
  sel1 := Copy(MainForm.Memo1Code.Lines.Text, fp, sp-1);
  sel2 := Copy(MainForm.Memo1Code.Lines.Text,sp, TxtLen);
  MainForm.Memo1Code.Lines.Text := sel1 +str+ sel2;
  MainForm.Memo1Code.SelStart := sp - 1;
end;



procedure TMainForm.Open1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then begin
  MainForm.Caption := OpenDialog1.FileName;
  Memo1Code.Lines.LoadFromFile
    (OpenDialog1.FileName);
  Memo1Code.SelStart := 0;
  Memo1Code.Visible := True;
  NewProjectBTN.Visible := False;
  OpenProjectBTN.Visible := False;
  Create1.Enabled := True;
      SpeedButton1.Enabled := True;
      SpeedButton2.Enabled := True;
      SpeedButton3.Enabled := True;
      SpeedButton4.Enabled := True;
      SpeedButton5.Enabled := True;
      SpeedButton6.Enabled := True;
      SpeedButton7.Enabled := True;
      SpeedButton8.Enabled := True;
      PageControl1.DragMode := dmManual;
  end;
end;



procedure TMainForm.NewProject1Click(Sender: TObject);
 var FileName: String;
 ext : Integer;
begin
SaveDialog1.FileName := 'Нов файл - ' + MainForm.Caption ;
 if SaveDialog1.Execute then begin
     Memo1Code.Visible := True;
      NewProjectBTN.Visible := False;
      OpenProjectBTN.Visible := False;
      Create1.Enabled := True;
      SpeedButton1.Enabled := True;
      SpeedButton2.Enabled := True;
      SpeedButton3.Enabled := True;
      SpeedButton4.Enabled := True;
      SpeedButton5.Enabled := True;
      SpeedButton6.Enabled := True;
      SpeedButton7.Enabled := True;
      SpeedButton8.Enabled := True;
      PageControl1.DragMode := dmManual;

      ext :=  length(ExtractFileName(SaveDialog1.FileName))-length(ExtractFileExt(SaveDialog1.FileName));
      FileName := Copy(ExtractFileName(SaveDialog1.FileName),0,ext);
    Memo1Code.Lines.Text := '<html>'
  + sLineBreak + '<head> '
   + sLineBreak + '<title>'+FileName+'</title>'
  + sLineBreak + '</head>'
  + sLineBreak + '<body>'
  + sLineBreak + '      '
  + sLineBreak + '</body>'
    + sLineBreak + '</html>';
   Memo1Code.Lines.SaveToFile(SaveDialog1.FileName);
   MainForm.Caption:=FileName;
   Create1.Enabled :=true;
   
     end;

end;



procedure TMainForm.Timer1Timer(Sender: TObject);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  Timer1.Enabled := True;
  WebBrowser1.Navigate('about:blank');
    while WebBrowser1.ReadyState < READYSTATE_INTERACTIVE do Application.ProcessMessages;
      if Assigned(WebBrowser1.Document) then
        begin
          sl := TStringList.Create;
            try
              ms := TMemoryStream.Create;
                try
                  sl.Text := Memo1Code.Text;
                  sl.SaveToStream(ms);
                  ms.Seek(0, 0);
                  (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms));
                finally
                  ms.Free;
                end;
            finally
              sl.Free;
               end;
          end;
          Timer1.Enabled := False;
end;

procedure TMainForm.SaveAS1Click(Sender: TObject);
begin
 SaveDialog1.FileName := MainForm.Caption;
 if SaveDialog1.Execute then begin
   Memo1Code.Lines.SaveToFile(SaveDialog1.FileName);
   MainForm.Caption:=SaveDialog1.FileName;
 end;
end;

procedure TMainForm.Link1Click(Sender: TObject);
var
f : TAddLinkForm;

begin
f := TAddLinkForm.Create(self);
try

if f.ShowModal = mrOk then
 begin
  ReloadText('<a href=''' + f.Edit2.Text + '''>' + f.Edit1.Text +'</a>');
 end;
 finally
f.Release;
end;
end;

procedure TMainForm.Image1Click(Sender: TObject);
var
f : TAddImageForm; fp,sp : Integer; sel1,sel2: String;
  TxtLen: Integer;
begin
f := TAddImageForm.Create(self);
try
if f.ShowModal = mrOk then
 begin
  sp := Memo1Code.SelStart + 1 ;
  Memo1Code.SelStart := 0;
  fp := Memo1Code.SelStart;
  TxtLen := Length(Memo1Code.Lines.Text) - fp + 1;
  sel1 := Copy(Memo1Code.Lines.Text, fp, sp-1);
  sel2 := Copy(Memo1Code.Lines.Text,sp, TxtLen);
  Memo1Code.Lines.Text := sel1 +'<img src=''' + f.Edit1.Text + ''' width=''' + f.Edit2.Text + ''' height=''' + f.Edit3.Text + '''/>'+ sel2;
  Memo1Code.SelStart := sp - 1;
   end;
 finally
f.Release;
end;
end;

procedure TMainForm.Table1Click(Sender: TObject);
var
f : TAddTableForm; fp,sp,i,j,y,k : Integer; sel1,sel2,wid,r,c: String;
  TxtLen: Integer;
begin
f := TAddTableForm.Create(self);
try
if f.ShowModal = mrOk then
 begin
  sp := Memo1Code.SelStart + 1 ;
  Memo1Code.SelStart := 0;
  fp := Memo1Code.SelStart;
  TxtLen := Length(Memo1Code.Lines.Text) - fp + 1;
  sel1 := Copy(Memo1Code.Lines.Text, fp, sp-1);
  sel2 := Copy(Memo1Code.Lines.Text,sp, TxtLen);
  if f.ComboBox1.ItemIndex = -1 then wid := '%' else wid := 'px';
  j := StrToInt(f.Edit1.Text);
  k := StrToInt(f.Edit2.Text);
  c := '';
  r:= '';
  i:=0;
  y:=0;
  while i<j do
    begin
    i:=i+1;
       while y<k do
       begin
       y:=y+1;
      c := c + sLineBreak + '    <td>&nbsp;</td>';
    end;
       r := r + sLineBreak + '  <tr>'  + c + sLineBreak + '  </tr>';
    end;

  Memo1Code.Lines.Text := sel1 +'<table border=''' + f.Edit3.Text + ''' width=''' + f.Edit6.Text + wid + ''' cellspacing=''' + f.Edit4.Text + ''' cellpadding=''' + f.Edit5.Text + '''>'+ r + sLineBreak +'</table>'+ sel2;
  Memo1Code.SelStart := sp - 1;
   end;
 finally
f.Release;
end;
end;


procedure TMainForm.Form1Click(Sender: TObject);
var
f : TAddForm; fp,sp,i,j : Integer; sel1,sel2,meth,inp: String;
  TxtLen: Integer;
begin
f := TAddForm.Create(self);
try
if f.ShowModal = mrOk then
 begin
  sp := Memo1Code.SelStart + 1 ;
  Memo1Code.SelStart := 0;
  fp := Memo1Code.SelStart;
  TxtLen := Length(Memo1Code.Lines.Text) - fp + 1;
  sel1 := Copy(Memo1Code.Lines.Text, fp, sp-1);
  sel2 := Copy(Memo1Code.Lines.Text,sp, TxtLen);
  if f.ComboBox1.ItemIndex = -1 then meth := 'POST' else meth := 'GET';

  j := StrToInt(f.Edit3.Text);
  i:=0;
  inp :='';
  while i<j do
    begin
    i:=i+1;
    inp := inp + sLineBreak + '  <input name=''' + f.StringGrid1.Cells[0,i] + ''' value=''' + f.StringGrid1.Cells[1,i] + ''' type=''' + f.StringGrid1.Cells[2,i] + ''' size=''' + f.StringGrid1.Cells[3,i] + ''' MAXLENGTH=''' + f.StringGrid1.Cells[4,i] + '''/>';
  end;

  Memo1Code.Lines.Text := sel1 +'<form action=''' + f.Edit1.Text + ''' name=''' + f.Edit2.Text + ''' method=''' + meth + '''>' + inp + sLineBreak +'</form>'+ sel2;
  Memo1Code.SelStart := sp - 1;
   end;
 finally
f.Release;
end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
//Create1.Enabled := False;
end;

procedure TMainForm.BoldTextBtnClick(Sender: TObject);
begin
  ReloadText('<b></b>');
end;

procedure TMainForm.ItalicTextBtnClick(Sender: TObject);
begin
     ReloadText('<i></i>');
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
ShowMessage('         Версия 1.0 (тест)' + sLineBreak + sLineBreak +'©2011 Мариян Паничаров');
end;

procedure TMainForm.HorizontalRule1Click(Sender: TObject);
begin
ReloadText('<hr />');
end;

procedure TMainForm.Div1Click(Sender: TObject);
begin
ReloadText('<div></div>');
end;

procedure TMainForm.Pre1Click(Sender: TObject);
begin
ReloadText('<pre></pre>');
end;

procedure TMainForm.Superscript1Click(Sender: TObject);
begin
ReloadText('<sup></sup>');
end;

procedure TMainForm.Subscript1Click(Sender: TObject);
begin
ReloadText('<sub></sub>');
end;

procedure TMainForm.extArea1Click(Sender: TObject);
begin
ReloadText('<textarea></textarea>');
end;

procedure TMainForm.LineBreak1Click(Sender: TObject);
begin
ReloadText('<br />');
end;

procedure TMainForm.Comment1Click(Sender: TObject);
begin
ReloadText('<!--  -->');
end;

procedure TMainForm.DropDownLists1Click(Sender: TObject);
var value,str,inp :String; i:integer;
begin
value := InputBox('Избери','Въведи брой редове','');

  i:=0;
  inp :='';
  while i < StrToInt(value) do
    begin
    i:=i+1;
    inp := inp + sLineBreak + '   <option>&nbsp;</option>';
  end;

str := sLineBreak + '<select>' + inp +sLineBreak + '</select>';
ReloadText(str);
end;

procedure TMainForm.Lists1Click(Sender: TObject);
var value,str,inp :String; i:integer;
begin
value := InputBox('Лист','Брой на редове','');

  i:=0;
  inp :='';
  while i< StrToInt(value) do
    begin
    i:=i+1;
    inp := inp + sLineBreak + '   <LI>&nbsp;</LI>';
  end;

str := sLineBreak + '<OL>' + inp +sLineBreak + '</OL>';
ReloadText(str);
end;





procedure TMainForm.Toolbar2Click(Sender: TObject);
begin
If ToolBar1.Visible = True then
begin
ToolBar1.Visible := False;
Toolbar2.Caption := '+ Лента с инструменти' ;

end
else
begin
 ToolBar1.Visible := True;
 Toolbar2.Caption := '- Лента с инструменти' ;
 end;
end;

procedure TMainForm.FileManager1Click(Sender: TObject);
begin
 If GroupBox1.Visible = True then
 begin
GroupBox1.Visible := False;
FileManager1.Caption := '+ Файл лист';
end
else
begin
 GroupBox1.Visible := True;
 FileManager1.Caption := '- Файл лист';
 end;
end;




end.
