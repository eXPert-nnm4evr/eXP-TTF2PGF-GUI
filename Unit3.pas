unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, ExtCtrls, sPanel, RealTimeMarquee, sLabel,
  siComp, siLngLnk;

type
  TForm3 = class(TForm)
    sButton1: TsButton;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    RTM: TRealTimeMarquee;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sWebLabel1: TsWebLabel;
    siLangLinked1: TsiLangLinked;
    siLangDispatcher1: TsiLangDispatcher;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
RTM.Active:=True;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
RTM.Active:=False;
RTM.Reset;
end;

procedure TForm3.sButton1Click(Sender: TObject);
begin
Form3.Close;
Form1.SetFocus;
end;

end.
