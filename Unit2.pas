unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, ExtCtrls, acImage, sPanel, Buttons, sBitBtn,
  siComp, siLngLnk, JvSHFileOperation, sLabel;

type
  TForm2 = class(TForm)
    sButton1: TsButton;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sPanel1: TsPanel;
    sImage1: TsImage;
    siLangLinked1: TsiLangLinked;
    siLangDispatcher1: TsiLangDispatcher;
    ListBox1: TListBox;
    procedure sButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    Procedure FillListBox;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  bmp_imgs_path: string;
  i: Integer;


implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FillListBox;
var
  SearchRec: TSearchRec;
  r: integer;
begin
  r := FindFirst(bmp_imgs_path + '*.bmp',faAnyFile,SearchRec);
  if r = 0 then
  begin
    ListBox1.Items.Clear;
    ListBox1.Items.Add(SearchRec.Name);
    while 0 = FindNext(SearchRec) do
      begin
        ListBox1.Items.Add(SearchRec.Name);
      end;
        ListBox1.ItemIndex := 0;
        sImage1.Picture.LoadFromFile(bmp_imgs_path + ListBox1.Items[ListBox1.ItemIndex]);
  end;

end;


procedure TForm2.sButton1Click(Sender: TObject);
begin
Form2.Close;
Form1.SetFocus;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
bmp_imgs_path:= ExtractFilePath(Application.ExeName) + 'temp\';
FillListBox;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
if ListBox1.Items.Count >= 0 then begin
i:= ListBox1.Items.Count;
sBitBtn2.Enabled:=True;
end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ListBox1.Items.Clear;
Form1.FO.Operation:=foDelete;
Form1.FO.SourceFiles.Add(ExtractFilePath(Application.ExeName) + 'temp\*.*');
Form1.FO.Execute;
end;

procedure TForm2.sBitBtn2Click(Sender: TObject);
begin
if i >= 0 then begin
 ListBox1.ItemIndex := ListBox1.ItemIndex + 1;
 sImage1.Picture.LoadFromFile(bmp_imgs_path + ListBox1.Items[ListBox1.ItemIndex]);
 if ListBox1.ItemIndex > 0 then sBitBtn1.Enabled := True;
 if ListBox1.ItemIndex = (i-1) then sBitBtn2.Enabled := False;
end;
end;

procedure TForm2.sBitBtn1Click(Sender: TObject);
begin
if i >= 0 then begin
 ListBox1.ItemIndex := ListBox1.ItemIndex - 1;
 sImage1.Picture.LoadFromFile(bmp_imgs_path + ListBox1.Items[ListBox1.ItemIndex]);
 if ListBox1.ItemIndex = 0 then sBitBtn1.Enabled := False;
 if ListBox1.ItemIndex < (i-1) then sBitBtn2.Enabled := True;
end;
end;

end.
