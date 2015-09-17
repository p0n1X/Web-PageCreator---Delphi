program WebPageCreator;

uses
  Forms,
  MainFormU in 'source\MainForm\MainFormU.pas' {MainForm},
  AddLinkU in 'source\AddForm\AddLinkU.pas' {AddLinkForm},
  AddImageU in 'source\AddForm\AddImageU.pas' {AddImageForm},
  AddTableU in 'source\AddForm\AddTableU.pas' {AddTableForm},
  AddFormU in 'source\AddForm\AddFormU.pas' {AddForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAddImageForm, AddImageForm);
  Application.CreateForm(TAddLinkForm, AddLinkForm);
  Application.CreateForm(TAddTableForm, AddTableForm);
  Application.CreateForm(TAddForm, AddForm);
  Application.Run;
end.
