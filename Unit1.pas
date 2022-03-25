unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, sCheckBox, sComboBox, sLabel, sButton,
  sEdit, sGroupBox, sPageControl, sTrackBar, Mask, sMaskEdit,
  sCustomComboEdit, ExtCtrls, sPanel, acImage, acAlphaHints, sSkinManager,
  sComboBoxes, siComp, sMemo, acPNG, ShellAPI, sDialogs, iComponent,
  iVCLComponent, iCustomComponent, iLabel, JvBaseDlg, JvSHFileOperation,
  SquallRegistry, JclSysInfo, AdvSmoothSplashScreen;

type
  TForm1 = class(TForm)
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sLabel1: TsLabel;
    sEdit2: TsEdit;
    sButton2: TsButton;
    sGroupBox2: TsGroupBox;
    sComboBox1: TsComboBox;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sGroupBox3: TsGroupBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sButton3: TsButton;
    sCheckBox5: TsCheckBox;
    sTrackBar1: TsTrackBar;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sTrackBar2: TsTrackBar;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    sLabel14: TsLabel;
    sLabel15: TsLabel;
    sTrackBar3: TsTrackBar;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    sTrackBar4: TsTrackBar;
    sLabel18: TsLabel;
    sLabel19: TsLabel;
    sLabel20: TsLabel;
    sLabel21: TsLabel;
    sLabel22: TsLabel;
    sLabel23: TsLabel;
    sLabel24: TsLabel;
    sLabel25: TsLabel;
    sButton4: TsButton;
    sPageControl2: TsPageControl;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sPanel1: TsPanel;
    sComboBox5: TsComboBox;
    sLabel26: TsLabel;
    sLabel27: TsLabel;
    sImage1: TsImage;
    sPanel2: TsPanel;
    sLabel28: TsLabel;
    sButton5: TsButton;
    sSkinManager1: TsSkinManager;
    sAlphaHints1: TsAlphaHints;
    sSkinSelector1: TsSkinSelector;
    siFormStorage1: TsiFormStorage;
    siLang1: TsiLang;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sEdit3: TsEdit;
    sButton6: TsButton;
    sEdit4: TsEdit;
    sButton7: TsButton;
    sButton8: TsButton;
    sGroupBox8: TsGroupBox;
    sMemo3: TsMemo;
    sGroupBox9: TsGroupBox;
    sMemo4: TsMemo;
    sGroupBox10: TsGroupBox;
    sMemo5: TsMemo;
    sGroupBox11: TsGroupBox;
    sEdit5: TsEdit;
    sButton9: TsButton;
    sGroupBox12: TsGroupBox;
    sEdit6: TsEdit;
    sButton10: TsButton;
    sButton11: TsButton;
    sGroupBox13: TsGroupBox;
    sEdit7: TsEdit;
    sButton12: TsButton;
    sButton13: TsButton;
    sButton14: TsButton;
    sGroupBox14: TsGroupBox;
    sEdit8: TsEdit;
    sButton15: TsButton;
    sButton16: TsButton;
    sButton17: TsButton;
    sGroupBox15: TsGroupBox;
    H_cmd: TsCheckBox;
    M_cmd: TsCheckBox;
    C_cmd: TsCheckBox;
    I_cmd: TsCheckBox;
    S_cmd: TsCheckBox;
    P_cmd: TsCheckBox;
    siLangDispatcher1: TsiLangDispatcher;
    sGroupBox6: TsGroupBox;
    sMemo2: TsMemo;
    sOpenDialog1: TsOpenDialog;
    sSaveDialog1: TsSaveDialog;
    iLabel1: TiLabel;
    sLabel29: TsLabel;
    sLabel30: TsLabel;
    sLabel31: TsLabel;
    Timer1: TTimer;
    FO: TJvSHFileOperation;
    Splash: TAdvSmoothSplashScreen;
    procedure RunDosInMemo(DosApp:String;AMemo:TMemo);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sButton17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure sTrackBar3Change(Sender: TObject);
    procedure sTrackBar4Change(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sEdit5Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sOpenDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure sButton6Click(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sSaveDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FOClose(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure sSkinSelector1Change(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ttf_main, pgf_main, ttf_conv, pgf_conv, pgf_info, pgf_mrg1, pgf_mrg2, pgf_bmp, time: integer;
  tmp_dir, bmp_path: string;
  fls_cmpl: Boolean;

implementation

uses Unit2, Unit3;

{$R *.dfm}

function ExtractFileNameNoExt(const FileName: string): string;
var
  FEx: string;
begin
  Result:= ExtractFileName(FileName);
  FEx:= ExtractFileExt(FileName);
  Delete(Result,pos(FEx,Result),Length(FEx));
end;

function ExecAndWait(const FileName,
                     Params: String;
                     const WinState: Word): boolean; export; 
var 
  StartInfo: TStartupInfo; 
  ProcInfo: TProcessInformation; 
  CmdLine: String;
begin 
  { Помещаем имя файла между кавычками, с соблюдением всех пробелов в именах Win9x } 
  CmdLine := '"' + Filename + '" ' + Params; 
  FillChar(StartInfo, SizeOf(StartInfo), #0); 
  with StartInfo do 
  begin 
    cb := SizeOf(StartInfo);
    dwFlags := STARTF_USESHOWWINDOW; 
    wShowWindow := WinState; 
  end; 
  Result := CreateProcess(nil, PChar( String( CmdLine ) ), nil, nil, false, 
                          CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, 
                          PChar(ExtractFilePath(Filename)),StartInfo,ProcInfo); 
  { Ожидаем завершения приложения } 
  if Result then 
  begin 
    WaitForSingleObject(ProcInfo.hProcess, INFINITE); 
    { Free the Handles } 
    CloseHandle(ProcInfo.hProcess); 
    CloseHandle(ProcInfo.hThread); 
  end; 
end;

procedure TForm1.RunDosInMemo(DosApp:String;AMemo:TMemo);
const
  ReadBuffer = 2400;
var
  Security    : TSecurityAttributes;
  ReadPipe,
  WritePipe   : THandle;
  start       : TStartUpInfo;
  ProcessInfo : TProcessInformation;
  Buffer      : Pchar;
  BytesRead   : DWord;
  Apprunning  : DWord;

begin
  Security.nlength := SizeOf(TSecurityAttributes) ;
  Security.binherithandle := true;
  Security.lpsecuritydescriptor := nil;
  if Createpipe (ReadPipe, WritePipe, @Security, 0) then 
  begin
    Buffer := AllocMem(ReadBuffer + 1) ;
    FillChar(Start,Sizeof(Start),#0) ;
    start.cb := SizeOf(start) ;
    start.hStdOutput := WritePipe;
    start.hStdInput := ReadPipe;
    start.dwFlags := STARTF_USESTDHANDLES + STARTF_USESHOWWINDOW;
    start.wShowWindow := SW_HIDE;
    if CreateProcess(nil,
                     PChar(DosApp),
                     @Security,
                     @Security,
                     true,
                     NORMAL_PRIORITY_CLASS,
                     nil,
                     nil,
                     start,
                     ProcessInfo) then
    begin
      repeat
        Apprunning := WaitForSingleObject(ProcessInfo.hProcess,100);
        Application.ProcessMessages;
      until (Apprunning <> WAIT_TIMEOUT) ;
      repeat
        BytesRead := 0;
        ReadFile(ReadPipe,Buffer[0],
        ReadBuffer,BytesRead,nil) ;
        Buffer[BytesRead]:= #0;
        OemToAnsi(Buffer,Buffer) ;
        AMemo.Text := AMemo.text + String(Buffer) ;
      until (BytesRead < ReadBuffer) ;
    end;
    FreeMem(Buffer) ;
    CloseHandle(ProcessInfo.hProcess) ;
    CloseHandle(ProcessInfo.hThread) ;
    CloseHandle(ReadPipe) ;
    CloseHandle(WritePipe) ;
  end;
end;

procedure TForm1.sButton3Click(Sender: TObject);
begin
{FO.Operation:=foDelete;
FO.SourceFiles.Add(ExtractFilePath(Application.ExeName) + '\temp\*.*');
FO.Execute;   }
Application.Terminate;
end;

procedure TForm1.sButton4Click(Sender: TObject);
begin
{FO.Operation:=foDelete;
FO.SourceFiles.Add(ExtractFilePath(Application.ExeName) + '\temp\*.*');
FO.Execute; }
Application.Terminate;
end;

procedure TForm1.sButton16Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.sButton17Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
s1, s2: string;
begin
Splash.Show;
Splash.BeginUpdate;
Splash.EndUpdate;
Sleep(2000);
tmp_dir:=ExtractFilePath(Application.ExeName) + '\temp\';
time:=11;
if FileExists(ExtractFilePath(Application.ExeName) + '\Languages.sil') then begin
siLang1.LoadAllFromFile(ExtractFilePath(Application.ExeName) + '\Languages.sil', True);
sComboBox5.Items := siLang1.LangNames;
if RegValueExists('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin') = True then begin
sSkinManager1.SkinName := RegReadString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin','Fluent Night (internal)');
sSkinSelector1.Text := RegReadString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin','Fluent Night (internal)');
end;
if RegValueExists('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Lang') = True then begin
sComboBox5.ItemIndex := StrToInt(RegReadString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Lang','0'));
end;
if JclSysInfo.GetWindowsVersionString = 'Windows 10' then begin
sTabSheet1.Enabled:=False;
sPanel2.Left:=66;
sPanel2.Top:=120;
sPanel2.Visible:=True;
Timer1.Enabled:=True;
end;
s1:= Format('%.1f', [sTrackBar1.Position / 10]);
s1:= StringReplace(s1,',','.',[rfReplaceAll]);
sLabel6.Caption := s1;
s2:= Format('%.1f', [sTrackBar2.Position / 10]);
s2:= StringReplace(s2,',','.',[rfReplaceAll]);
sLabel10.Caption := s2;
ttf_main:=0;
pgf_main:=0;
ttf_conv:=0;
pgf_conv:=0;
pgf_info:=0;
pgf_mrg1:=0;
pgf_mrg2:=0;
pgf_bmp:=0;
end
else begin
ShowMessage('Языковой файл (Languages.sil) не найден! Применён язык по умолчанию: Русский!');
if JclSysInfo.GetWindowsVersionString = 'Windows 10' then begin
sTabSheet1.Enabled:=False;
sPanel2.Left:=66;
sPanel2.Top:=120;
sPanel2.Visible:=True;
Timer1.Enabled:=True;
end;
if RegValueExists('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin') = True then begin
sSkinManager1.SkinName := RegReadString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin','Fluent Night (internal)');
sSkinSelector1.Text := RegReadString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin','Fluent Night (internal)');
end;
s1:= Format('%.1f', [sTrackBar1.Position / 10]);
s1:= StringReplace(s1,',','.',[rfReplaceAll]);
sLabel6.Caption := s1;
s2:= Format('%.1f', [sTrackBar2.Position / 10]);
s2:= StringReplace(s2,',','.',[rfReplaceAll]);
sLabel10.Caption := s2;
ttf_main:=0;
pgf_main:=0;
ttf_conv:=0;
pgf_conv:=0;
pgf_info:=0;
pgf_mrg1:=0;
pgf_mrg2:=0;
pgf_bmp:=0;
end;
end;

procedure TForm1.sComboBox5Change(Sender: TObject);
begin
siLang1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
Form2.siLangLinked1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
Form3.siLangLinked1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
RegWriteString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Lang', IntToStr(sComboBox5.ItemIndex));
end;

procedure TForm1.sButton5Click(Sender: TObject);
var
cmd, b, i, shd, cmd2: string;
begin
if sCheckBox2.Checked = true then b:='b' else b:='';
if sCheckBox1.Checked = true then i:='i' else i:='';
if sCheckBox5.Checked = true then shd:='n'
else begin
shd:='b' + sLabel6.Caption + 'i' + sLabel10.Caption + 'x' + sLabel24.Caption + 'y' + sLabel25.Caption;
end;
cmd:= sEdit1.Text + ' ' + sEdit2.Text + ' ' + sComboBox1.Text + 'h' + sComboBox2.Text + 'a' + sComboBox3.Text + b + i + ' ' + shd + ExtractFilePath(Application.ExeName) +'\temp\font.bmp';
ExecAndWait(ExtractFilePath(Application.ExeName) + '\1ttf2pgf.exe', cmd, SW_HIDE);
if sCheckBox3.Checked = True then begin
Form2.ShowModal;
end;
if sCheckBox4.Checked = True then begin
cmd2:='-b ' + sEdit2.Text;
ExecAndWait(ExtractFilePath(Application.ExeName) + '\dump_pgf.exe', cmd2, SW_HIDE);
bmp_path:= ExtractFilePath(Application.ExeName) + '\' + ExtractFileNameNoExt(sEdit7.Text) + '\_bmp\';
FO.Operation:=foMove;
FO.SourceFiles.Add(bmp_path + '*.*');
FO.DestFiles.Add(tmp_dir + '*.*');
FO.Execute;
fls_cmpl:=True;
end;
if (sCheckBox4.Checked = True) or (sCheckBox3.Checked = True) then begin
Form2.ShowModal;
end;
end;

procedure TForm1.sButton8Click(Sender: TObject);
var
cmd:string;
begin
cmd:=ExtractFilePath(Application.ExeName) + '\ttf_pgf.exe ' + sEdit3.Text + ' ' + sEdit4.Text;
RunDosInMemo(cmd, sMemo2);
end;

procedure TForm1.sButton14Click(Sender: TObject);
var
cmd, h, m, c, i, s, p:string;
begin
if H_cmd.Checked = true then h:='-h ' else h:='';
if M_cmd.Checked = true then m:='-m ' else m:='';
if C_cmd.Checked = true then c:='-c ' else c:='';
if I_cmd.Checked = true then i:='-i ' else i:='';
if S_cmd.Checked = true then s:='-s ' else s:='';
if P_cmd.Checked = true then p:='-p ' else p:='';
if (h='') and (m='') and (c='') and (i='') and (s='') and (p='') then ShowMessage(siLang1.GetTextOrDefault('IDS_27' (* 'Должен быть выбран хотя бы один параметр!' *) ))
else begin
cmd:=ExtractFilePath(Application.ExeName) + '\dump_pgf.exe ' + h + m + c + i + s + p + sEdit8.Text;
RunDosInMemo(cmd, sMemo3);
end;
end;

procedure TForm1.sButton11Click(Sender: TObject);
var
cmd:string;
begin
cmd:=ExtractFilePath(Application.ExeName) + '\mix_pgf.exe ' + sEdit5.Text + ' ' + sEdit6.Text;
RunDosInMemo(cmd, sMemo4);
end;

procedure TForm1.sButton13Click(Sender: TObject);
var
cmd:string;
begin
cmd:=ExtractFilePath(Application.ExeName) + '\dump_pgf.exe ' + '-b ' + sEdit7.Text;
RunDosInMemo(cmd, sMemo5);
bmp_path:= ExtractFilePath(Application.ExeName) + '\' + ExtractFileNameNoExt(sEdit7.Text) + '\_bmp\';
FO.Operation:=foMove;
FO.SourceFiles.Add(bmp_path + '*.*');
FO.DestFiles.Add(tmp_dir + '*.*');
FO.Execute;
fls_cmpl:=True; 
Form2.ShowModal;
end;

procedure TForm1.sTrackBar3Change(Sender: TObject);
begin
sLabel24.Caption:= IntToStr(sTrackBar3.Position);
iLabel1.ShadowXOffset:=sTrackBar3.Position;
end;

procedure TForm1.sTrackBar4Change(Sender: TObject);
begin
sLabel25.Caption:= IntToStr(sTrackBar4.Position);
iLabel1.ShadowYOffset:=sTrackBar4.Position;
end;

procedure TForm1.sTrackBar1Change(Sender: TObject);
var
s: string;
begin
s:= Format('%.1f', [sTrackBar1.Position / 10]);
s:= StringReplace(s,',','.',[rfReplaceAll]);
sLabel6.Caption := s;
end;

procedure TForm1.sTrackBar2Change(Sender: TObject);
var
s: string;
begin
s:= Format('%.1f', [sTrackBar2.Position / 10]);
s:= StringReplace(s,',','.',[rfReplaceAll]);
sLabel10.Caption := s;
end;

procedure TForm1.sEdit1Change(Sender: TObject);
begin
sButton2.Enabled:=True;
end;

procedure TForm1.sEdit5Change(Sender: TObject);
begin
sButton10.Enabled:=True;
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
ttf_main := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_34' (* 'Открыть исходный TTF файл...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_35' (* 'Файлы шрифтов в формате TTF|*.ttf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sOpenDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
if ttf_main = 1 then begin
sEdit1.Text:=sOpenDialog1.FileName;
ttf_main := 0;

end;
if ttf_conv = 1 then begin
sEdit3.Text:=sOpenDialog1.FileName;
ttf_conv := 0;
end;
if pgf_info = 1 then begin
sEdit8.Text:=sOpenDialog1.FileName;
pgf_info := 0;
sButton14.Enabled:=True;
end;
if pgf_mrg1 = 1 then begin
sEdit5.Text:=sOpenDialog1.FileName;
pgf_mrg1 := 0;
end;
if pgf_mrg2 = 1 then begin
sEdit6.Text:=sOpenDialog1.FileName;
pgf_mrg2 := 0;
sButton11.Enabled:=True;
end;
if pgf_bmp = 1 then begin
sEdit7.Text:=sOpenDialog1.FileName;
pgf_bmp := 0;
sButton13.Enabled:=True;
end;
end;

procedure TForm1.sButton6Click(Sender: TObject);
begin
ttf_conv := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_34' (* 'Открыть исходный TTF файл...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_35' (* 'Файлы шрифтов в формате TTF|*.ttf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sButton15Click(Sender: TObject);
begin
pgf_info := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_38' (* 'Открыть изучаемый PGF файл...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sButton9Click(Sender: TObject);
begin
pgf_mrg1 := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_40' (* 'Открыть Исходный PGF файл...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sButton10Click(Sender: TObject);
begin
pgf_mrg2 := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_42' (* 'Открыть Объединяемый PGF файл...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sButton12Click(Sender: TObject);
begin
pgf_bmp := 1;
sOpenDialog1.Title:=siLang1.GetTextOrDefault('IDS_44' (* 'Открыть PGF файл для просмотра в виде картинок...' *) );
sOpenDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sOpenDialog1.Execute;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
pgf_main := 1;
sSaveDialog1.Title:=siLang1.GetTextOrDefault('IDS_46' (* 'Сохранить файл в формате PGF...' *) );
sSaveDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sSaveDialog1.Execute;
end;

procedure TForm1.sButton7Click(Sender: TObject);
begin
pgf_conv := 1;
sSaveDialog1.Title:=siLang1.GetTextOrDefault('IDS_46' (* 'Сохранить файл в формате PGF...' *) );
sSaveDialog1.Filter:=siLang1.GetTextOrDefault('IDS_39' (* 'Файлы шрифтов в формате PGF|*.pgf' *) );
sSaveDialog1.Execute;
end;

procedure TForm1.sSaveDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
if pgf_main = 1 then begin
sEdit2.Text:=sSaveDialog1.FileName;
pgf_main := 0;
sButton5.Enabled:=True;
end;
if pgf_conv = 1 then begin
sEdit4.Text:=sSaveDialog1.FileName;
pgf_conv := 0;
sButton8.Enabled:=True;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
time:=time - 1;
sLabel30.Caption:=Format('%.2d', [time]);
if time = 0 then begin
Timer1.Enabled:=False;
sPageControl1.ActivePage:=sTabSheet2;
sPageControl2.ActivePage:=sTabSheet3;
sPageControl1.Pages[0].TabVisible:=False;
end;
end;

procedure TForm1.FOClose(Sender: TObject);
var
  DirInfo: TSearchRec;
  r: integer;
begin
if fls_cmpl = True then begin
    r := FindFirst(bmp_path + '*.*', FaAnyfile, DirInfo);
  while r = 0 do
  begin
    if ((DirInfo.Attr and FaDirectory <> FaDirectory) and
	(DirInfo.Attr and FaVolumeId <> FaVolumeID)) then

    if DeleteFile(pChar(bmp_path + DirInfo.Name))= false then
	ShowMessage(siLang1.GetTextOrDefault('IDS_2' (* 'Невозможно удалить: ' *) ) + bmp_path + DirInfo.Name);
    r := FindNext(DirInfo);
  end;
  SysUtils.FindClose(DirInfo);
  if RemoveDirectory(pChar(bmp_path)) = false then
	ShowMessage(siLang1.GetTextOrDefault('IDS_3' (* 'Невозможно удалить папку: ' *) ) + bmp_path);
  fls_cmpl:=False;
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
sPageControl1.ActivePage:=sTabSheet1;
siLang1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
Form2.siLangLinked1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
Form3.siLangLinked1.Language := siLang1.LangNames[sComboBox5.ItemIndex];
if sCheckBox5.Checked = True then begin
sTrackBar1.Enabled := False;
sTrackBar2.Enabled := False;
sTrackBar3.Enabled := False;
sTrackBar4.Enabled := False;
end
else begin
sTrackBar1.Enabled := True;
sTrackBar2.Enabled := True;
sTrackBar3.Enabled := True;
sTrackBar4.Enabled := True;
end;
end;

procedure TForm1.sButton18Click(Sender: TObject);
begin
Timer1.Enabled:=False;
sPageControl1.ActivePage:=sTabSheet2;
sPageControl1.Pages[0].TabVisible:=False;
end;

procedure TForm1.sSkinSelector1Change(Sender: TObject);
begin
RegWriteString('HKCU\SOFTWARE\eXP.Net\TTF2PGF_GUI\Skin', sSkinSelector1.Text);
end;

procedure TForm1.sCheckBox5Click(Sender: TObject);
begin
if sCheckBox5.Checked = True then begin
sTrackBar1.Enabled := False;
sTrackBar2.Enabled := False;
sTrackBar3.Enabled := False;
sTrackBar4.Enabled := False;
end
else begin
sTrackBar1.Enabled := True;
sTrackBar2.Enabled := True;
sTrackBar3.Enabled := True;
sTrackBar4.Enabled := True;
end;
end;

end.
