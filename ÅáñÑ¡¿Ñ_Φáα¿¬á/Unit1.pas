unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Panel1: TPanel;
    cleft: TCheckBox;
    cright: TCheckBox;
    cup: TCheckBox;
    cdown: TCheckBox;
    dleft: TCheckBox;
    dright: TCheckBox;
    dup: TCheckBox;
    ddown: TCheckBox;
    Timer2111: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Panel2: TPanel;
    rr: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    fonpanel: TPanel;
    barer: TPanel;
    Panel3: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2111Timer(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rrClick(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure fonpanelClick(Sender: TObject);
    procedure barerClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
ntp,ntp1,ntp2,ntp3,ntp4,nlf,nlf1,nlf2,nlf3,nlf4,blok,armorcr1,magazin,fon:tcolor;
lf,tp,d1,d2,d3,d4,s1,s2,s3,s4,lastik,rs:integer;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (dleft.Checked = true) then //если нажата клавиша влево
    begin
    nlf := image1.Canvas.Pixels[lf-4,tp];
    nlf1 := image1.Canvas.Pixels[lf-3,tp-3];
     nlf2 := image1.Canvas.Pixels[lf-3,tp-2];
      nlf3 := image1.Canvas.Pixels[lf-3,tp+2];
       nlf4 := image1.Canvas.Pixels[lf-3,tp+3];
if (nlf = blok) or (nlf1 = blok) or (nlf2 = blok) or (nlf3 = blok) or (nlf4 = blok) or (nlf = armorcr1) or (nlf1 = armorcr1) or (nlf2 = armorcr1) or (nlf3 = armorcr1) or (nlf4 = armorcr1) or (nlf = magazin) or (nlf1 = magazin) or (nlf2 = magazin) or (nlf3 = magazin) or (nlf4 = magazin)then
begin
cleft.Checked := false;
end
else
begin
cleft.Checked := true;
end;
if (cleft.Checked = true) then
begin
image1.Canvas.Pixels[lf,tp] := fon;
image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+2] := fon;
//image1.Canvas.Pixels[lf+3,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-2] := fon;
//image1.Canvas.Pixels[lf-3,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+2] := fon;
//image1.Canvas.Pixels[lf-3,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-2] := fon;
//image1.Canvas.Pixels[lf+3,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+1] := fon;
image1.Canvas.Pixels[lf+3,tp+1] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-1] := fon;
image1.Canvas.Pixels[lf-3,tp-1] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+1] := fon;
image1.Canvas.Pixels[lf-3,tp+1] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-1] := fon;
image1.Canvas.Pixels[lf+3,tp-1] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+1,tp+2] := fon;
image1.Canvas.Pixels[lf+1,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-1,tp-2] := fon;
image1.Canvas.Pixels[lf-1,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-1,tp+2] := fon;
image1.Canvas.Pixels[lf-1,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+1,tp-2] := fon;
image1.Canvas.Pixels[lf+1,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp] := fon;
image1.Canvas.Pixels[lf+2,tp] := fon;
image1.Canvas.Pixels[lf+3,tp] := fon;

image1.Canvas.Pixels[lf-1,tp] := fon;
image1.Canvas.Pixels[lf-2,tp] := fon;
image1.Canvas.Pixels[lf-3,tp] := fon;

image1.Canvas.Pixels[lf,tp+1] := fon;
image1.Canvas.Pixels[lf,tp+2] := fon;
image1.Canvas.Pixels[lf,tp+3] := fon;

image1.Canvas.Pixels[lf,tp-1] := fon;
image1.Canvas.Pixels[lf,tp-2] := fon;
image1.Canvas.Pixels[lf,tp-3] := fon;

lf := lf - 1;//и что сделать вместо этой строки напишите
image1.Canvas.Pixels[lf,tp] := clblue;
image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+2] := clblue;
//image1.Canvas.Pixels[lf+3,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-2] := clblue;
//image1.Canvas.Pixels[lf-3,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+2] := clblue;
//image1.Canvas.Pixels[lf-3,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-2] := clblue;
//image1.Canvas.Pixels[lf+3,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+1] := clblue;
image1.Canvas.Pixels[lf+3,tp+1] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-1] := clblue;
image1.Canvas.Pixels[lf-3,tp-1] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+1] := clblue;
image1.Canvas.Pixels[lf-3,tp+1] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-1] := clblue;
image1.Canvas.Pixels[lf+3,tp-1] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+1,tp+2] := clblue;
image1.Canvas.Pixels[lf+1,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-1,tp-2] := clblue;
image1.Canvas.Pixels[lf-1,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-1,tp+2] := clblue;
image1.Canvas.Pixels[lf-1,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+1,tp-2] := clblue;
image1.Canvas.Pixels[lf+1,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp] := clblue;
image1.Canvas.Pixels[lf+2,tp] := clblue;
image1.Canvas.Pixels[lf+3,tp] := clblue;

image1.Canvas.Pixels[lf-1,tp] := clblue;
image1.Canvas.Pixels[lf-2,tp] := clblue;
image1.Canvas.Pixels[lf-3,tp] := clblue;

image1.Canvas.Pixels[lf,tp+1] := clblue;
image1.Canvas.Pixels[lf,tp+2] := clblue;
image1.Canvas.Pixels[lf,tp+3] := clblue;

image1.Canvas.Pixels[lf,tp-1] := clblue;
image1.Canvas.Pixels[lf,tp-2] := clblue;
image1.Canvas.Pixels[lf,tp-3] := clblue;
   end;
    end;
  if (dright.Checked = true) then //если нажата клавиша вправо
    begin
        nlf := image1.Canvas.Pixels[lf+4,tp];
            nlf1 := image1.Canvas.Pixels[lf+3,tp+3];
            nlf2 := image1.Canvas.Pixels[lf+3,tp+2];
                  nlf3 := image1.Canvas.Pixels[lf+3,tp-2];
       nlf4 := image1.Canvas.Pixels[lf+3,tp-3];
if (nlf = blok) or (nlf1 = blok) or (nlf2 = blok) or (nlf3 = blok) or (nlf4 = blok) or (nlf = armorcr1) or (nlf1 = armorcr1) or (nlf2 = armorcr1) or (nlf3 = armorcr1) or (nlf4 = armorcr1) or (nlf = magazin) or (nlf1 = magazin) or (nlf2 = magazin) or (nlf3 = magazin) or (nlf4 = magazin)then
begin
cright.Checked := false;
end
else
begin
cright.Checked := true;
end;
if (cright.Checked = true) then
begin
image1.Canvas.Pixels[lf,tp] := fon;
image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+2] := fon;
//image1.Canvas.Pixels[lf+3,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-2] := fon;
//image1.Canvas.Pixels[lf-3,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+2] := fon;
//image1.Canvas.Pixels[lf-3,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-2] := fon;
//image1.Canvas.Pixels[lf+3,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+1] := fon;
image1.Canvas.Pixels[lf+3,tp+1] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-1] := fon;
image1.Canvas.Pixels[lf-3,tp-1] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+1] := fon;
image1.Canvas.Pixels[lf-3,tp+1] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-1] := fon;
image1.Canvas.Pixels[lf+3,tp-1] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+1,tp+2] := fon;
image1.Canvas.Pixels[lf+1,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-1,tp-2] := fon;
image1.Canvas.Pixels[lf-1,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-1,tp+2] := fon;
image1.Canvas.Pixels[lf-1,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+1,tp-2] := fon;
image1.Canvas.Pixels[lf+1,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp] := fon;
image1.Canvas.Pixels[lf+2,tp] := fon;
image1.Canvas.Pixels[lf+3,tp] := fon;

image1.Canvas.Pixels[lf-1,tp] := fon;
image1.Canvas.Pixels[lf-2,tp] := fon;
image1.Canvas.Pixels[lf-3,tp] := fon;

image1.Canvas.Pixels[lf,tp+1] := fon;
image1.Canvas.Pixels[lf,tp+2] := fon;
image1.Canvas.Pixels[lf,tp+3] := fon;

image1.Canvas.Pixels[lf,tp-1] := fon;
image1.Canvas.Pixels[lf,tp-2] := fon;
image1.Canvas.Pixels[lf,tp-3] := fon;

lf := lf + 1;//и что сделать вместо этой строки напишите
image1.Canvas.Pixels[lf,tp] := clblue;
image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+2] := clblue;
//image1.Canvas.Pixels[lf+3,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-2] := clblue;
//image1.Canvas.Pixels[lf-3,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+2] := clblue;
//image1.Canvas.Pixels[lf-3,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-2] := clblue;
//image1.Canvas.Pixels[lf+3,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+1] := clblue;
image1.Canvas.Pixels[lf+3,tp+1] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-1] := clblue;
image1.Canvas.Pixels[lf-3,tp-1] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+1] := clblue;
image1.Canvas.Pixels[lf-3,tp+1] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-1] := clblue;
image1.Canvas.Pixels[lf+3,tp-1] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+1,tp+2] := clblue;
image1.Canvas.Pixels[lf+1,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-1,tp-2] := clblue;
image1.Canvas.Pixels[lf-1,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-1,tp+2] := clblue;
image1.Canvas.Pixels[lf-1,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+1,tp-2] := clblue;
image1.Canvas.Pixels[lf+1,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp] := clblue;
image1.Canvas.Pixels[lf+2,tp] := clblue;
image1.Canvas.Pixels[lf+3,tp] := clblue;

image1.Canvas.Pixels[lf-1,tp] := clblue;
image1.Canvas.Pixels[lf-2,tp] := clblue;
image1.Canvas.Pixels[lf-3,tp] := clblue;

image1.Canvas.Pixels[lf,tp+1] := clblue;
image1.Canvas.Pixels[lf,tp+2] := clblue;
image1.Canvas.Pixels[lf,tp+3] := clblue;

image1.Canvas.Pixels[lf,tp-1] := clblue;
image1.Canvas.Pixels[lf,tp-2] := clblue;
image1.Canvas.Pixels[lf,tp-3] := clblue;
    end;
    end;
  if (dup.Checked = true) then //cima//если нажата клавиша вверх
    begin
        ntp := image1.Canvas.Pixels[lf,tp-4];
        ntp1 := image1.Canvas.Pixels[lf-3,tp-3];
        ntp2 := image1.Canvas.Pixels[lf-2,tp-3];
        ntp3 := image1.Canvas.Pixels[lf+3,tp-3];
        ntp4 := image1.Canvas.Pixels[lf+2,tp-3];
if (ntp = blok) or (ntp1 = blok) or (ntp2 = blok) or (ntp3 = blok) or (ntp4 = blok) or (ntp = armorcr1) or (ntp1 = armorcr1) or (ntp2 = armorcr1) or (ntp3 = armorcr1) or (ntp4 = armorcr1) or (ntp = magazin) or (ntp1 = magazin) or (ntp2 = magazin) or (ntp3 = magazin) or (ntp4 = magazin)then
begin
cup.Checked := false;
end
else
begin
cup.Checked := true;
end;
if (cup.Checked = true) then
begin
image1.Canvas.Pixels[lf,tp] := fon;
image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+2] := fon;
//image1.Canvas.Pixels[lf+3,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-2] := fon;
//image1.Canvas.Pixels[lf-3,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+2] := fon;
//image1.Canvas.Pixels[lf-3,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-2] := fon;
//image1.Canvas.Pixels[lf+3,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+1] := fon;
image1.Canvas.Pixels[lf+3,tp+1] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-1] := fon;
image1.Canvas.Pixels[lf-3,tp-1] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+1] := fon;
image1.Canvas.Pixels[lf-3,tp+1] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-1] := fon;
image1.Canvas.Pixels[lf+3,tp-1] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+1,tp+2] := fon;
image1.Canvas.Pixels[lf+1,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-1,tp-2] := fon;
image1.Canvas.Pixels[lf-1,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-1,tp+2] := fon;
image1.Canvas.Pixels[lf-1,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+1,tp-2] := fon;
image1.Canvas.Pixels[lf+1,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp] := fon;
image1.Canvas.Pixels[lf+2,tp] := fon;
image1.Canvas.Pixels[lf+3,tp] := fon;

image1.Canvas.Pixels[lf-1,tp] := fon;
image1.Canvas.Pixels[lf-2,tp] := fon;
image1.Canvas.Pixels[lf-3,tp] := fon;

image1.Canvas.Pixels[lf,tp+1] := fon;
image1.Canvas.Pixels[lf,tp+2] := fon;
image1.Canvas.Pixels[lf,tp+3] := fon;

image1.Canvas.Pixels[lf,tp-1] := fon;
image1.Canvas.Pixels[lf,tp-2] := fon;
image1.Canvas.Pixels[lf,tp-3] := fon;

tp := tp - 1;//и что сделать вместо этой строки напишите
image1.Canvas.Pixels[lf,tp] := clblue;
image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+2] := clblue;
//image1.Canvas.Pixels[lf+3,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-2] := clblue;
//image1.Canvas.Pixels[lf-3,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+2] := clblue;
//image1.Canvas.Pixels[lf-3,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-2] := clblue;
//image1.Canvas.Pixels[lf+3,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+1] := clblue;
image1.Canvas.Pixels[lf+3,tp+1] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-1] := clblue;
image1.Canvas.Pixels[lf-3,tp-1] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+1] := clblue;
image1.Canvas.Pixels[lf-3,tp+1] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-1] := clblue;
image1.Canvas.Pixels[lf+3,tp-1] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+1,tp+2] := clblue;
image1.Canvas.Pixels[lf+1,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-1,tp-2] := clblue;
image1.Canvas.Pixels[lf-1,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-1,tp+2] := clblue;
image1.Canvas.Pixels[lf-1,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+1,tp-2] := clblue;
image1.Canvas.Pixels[lf+1,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp] := clblue;
image1.Canvas.Pixels[lf+2,tp] := clblue;
image1.Canvas.Pixels[lf+3,tp] := clblue;

image1.Canvas.Pixels[lf-1,tp] := clblue;
image1.Canvas.Pixels[lf-2,tp] := clblue;
image1.Canvas.Pixels[lf-3,tp] := clblue;

image1.Canvas.Pixels[lf,tp+1] := clblue;
image1.Canvas.Pixels[lf,tp+2] := clblue;
image1.Canvas.Pixels[lf,tp+3] := clblue;

image1.Canvas.Pixels[lf,tp-1] := clblue;
image1.Canvas.Pixels[lf,tp-2] := clblue;
image1.Canvas.Pixels[lf,tp-3] := clblue;
    end;
    end;
  if (ddown.Checked = true) then
  begin////если нажата клавиша вниз
        ntp := image1.Canvas.Pixels[lf,tp+4];
        ntp1 := image1.Canvas.Pixels[lf-3,tp+3];
        ntp2 := image1.Canvas.Pixels[lf-2,tp+3];
        ntp3 := image1.Canvas.Pixels[lf+3,tp+3];
        ntp4 := image1.Canvas.Pixels[lf+2,tp+3];
if (ntp = blok) or (ntp1 = blok) or (ntp2 = blok) or (ntp3 = blok) or (ntp4 = blok) or (ntp = armorcr1) or (ntp1 = armorcr1) or (ntp2 = armorcr1) or (ntp3 = armorcr1) or (ntp4 = armorcr1) or (ntp = magazin) or (ntp1 = magazin) or (ntp2 = magazin) or (ntp3 = magazin) or (ntp4 = magazin)then
begin
cdown.Checked := false;
end
else
begin
cdown.Checked := true;
end;
if (cdown.Checked = true) then
begin
image1.Canvas.Pixels[lf,tp] := fon;
image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+2] := fon;
//image1.Canvas.Pixels[lf+3,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-2] := fon;
//image1.Canvas.Pixels[lf-3,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+2] := fon;
//image1.Canvas.Pixels[lf-3,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-2] := fon;
//image1.Canvas.Pixels[lf+3,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+1] := fon;
image1.Canvas.Pixels[lf+3,tp+1] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-1] := fon;
image1.Canvas.Pixels[lf-3,tp-1] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+1] := fon;
image1.Canvas.Pixels[lf-3,tp+1] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-1] := fon;
image1.Canvas.Pixels[lf+3,tp-1] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+1,tp+2] := fon;
image1.Canvas.Pixels[lf+1,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-1,tp-2] := fon;
image1.Canvas.Pixels[lf-1,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-1,tp+2] := fon;
image1.Canvas.Pixels[lf-1,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+1,tp-2] := fon;
image1.Canvas.Pixels[lf+1,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp] := fon;
image1.Canvas.Pixels[lf+2,tp] := fon;
image1.Canvas.Pixels[lf+3,tp] := fon;

image1.Canvas.Pixels[lf-1,tp] := fon;
image1.Canvas.Pixels[lf-2,tp] := fon;
image1.Canvas.Pixels[lf-3,tp] := fon;

image1.Canvas.Pixels[lf,tp+1] := fon;
image1.Canvas.Pixels[lf,tp+2] := fon;
image1.Canvas.Pixels[lf,tp+3] := fon;

image1.Canvas.Pixels[lf,tp-1] := fon;
image1.Canvas.Pixels[lf,tp-2] := fon;
image1.Canvas.Pixels[lf,tp-3] := fon;

tp := tp + 1;//и что сделать вместо этой строки напишите
image1.Canvas.Pixels[lf,tp] := clblue;
image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+2] := clblue;
//image1.Canvas.Pixels[lf+3,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-2] := clblue;
//image1.Canvas.Pixels[lf-3,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+2] := clblue;
//image1.Canvas.Pixels[lf-3,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-2] := clblue;
//image1.Canvas.Pixels[lf+3,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+1] := clblue;
image1.Canvas.Pixels[lf+3,tp+1] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-1] := clblue;
image1.Canvas.Pixels[lf-3,tp-1] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+1] := clblue;
image1.Canvas.Pixels[lf-3,tp+1] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-1] := clblue;
image1.Canvas.Pixels[lf+3,tp-1] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+1,tp+2] := clblue;
image1.Canvas.Pixels[lf+1,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-1,tp-2] := clblue;
image1.Canvas.Pixels[lf-1,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-1,tp+2] := clblue;
image1.Canvas.Pixels[lf-1,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+1,tp-2] := clblue;
image1.Canvas.Pixels[lf+1,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp] := clblue;
image1.Canvas.Pixels[lf+2,tp] := clblue;
image1.Canvas.Pixels[lf+3,tp] := clblue;

image1.Canvas.Pixels[lf-1,tp] := clblue;
image1.Canvas.Pixels[lf-2,tp] := clblue;
image1.Canvas.Pixels[lf-3,tp] := clblue;

image1.Canvas.Pixels[lf,tp+1] := clblue;
image1.Canvas.Pixels[lf,tp+2] := clblue;
image1.Canvas.Pixels[lf,tp+3] := clblue;

image1.Canvas.Pixels[lf,tp-1] := clblue;
image1.Canvas.Pixels[lf,tp-2] := clblue;
image1.Canvas.Pixels[lf,tp-3] := clblue;
end;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
fon := clWhite;
blok := 0;
lf:=370;
tp := 0;
end;

procedure TForm1.Timer2111Timer(Sender: TObject);
var
a,aa,a2,aa2,x,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12: tcolor;
begin
a := image1.Canvas.Pixels[lf+4,tp+2];
aa := image1.Canvas.Pixels[lf+3,tp+3];
if (a=blok) or (aa=blok)then
begin
dleft.Checked := true;
dright.Checked := false;
dup.Checked := false;
ddown.Checked := true;

end;


a2 := image1.Canvas.Pixels[lf-4,tp+2];
aa2 := image1.Canvas.Pixels[lf-3,tp+3];
if (a2=blok) or (aa2=blok)then
begin
dleft.Checked := false;
dright.Checked := true;
dup.Checked := false;
ddown.Checked := true;

end;


x := image1.Canvas.Pixels[lf+4,tp];
x1 := image1.Canvas.Pixels[lf+4,tp+2];
x2 := image1.Canvas.Pixels[lf+3,tp+3];
x3 := image1.Canvas.Pixels[lf+2,tp+4];
x4 := image1.Canvas.Pixels[lf+1,tp+4];
x5 := image1.Canvas.Pixels[lf+4,tp+1];
x6 := image1.Canvas.Pixels[lf,tp+4];
x7 := image1.Canvas.Pixels[lf-1,tp+4];
x8 := image1.Canvas.Pixels[lf-2,tp+4];
x9 := image1.Canvas.Pixels[lf-3,tp+3];
x10 := image1.Canvas.Pixels[lf-4,tp+2];
x11 := image1.Canvas.Pixels[lf-4,tp+1];
x12 := image1.Canvas.Pixels[lf-4,tp];
if not (x=blok) and not (x1=blok) and not (x2=blok) and not (x3=blok) and not (x4=blok) and not (x5=blok) and not (x6=blok) and not (x7=blok) and not (x8=blok) and not (x9=blok) and not (x10=blok) and not (x11=blok) and not (x12=blok)then
begin
dleft.Checked := false;
dright.Checked := false;
dup.Checked := false;
ddown.Checked := true;

end;
end;
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
lastik := 1;
rs := 1;
if (rr.Checked = false) and (button1.Font.Style = [fsBold])then
begin
image1.Canvas.MoveTo(X, Y);
end;
if (rr.Checked = false) and (fonpanel.Font.Style = [fsBold])then
begin
fonpanel.Color:=image1.Canvas.Pixels[X,Y];
fon := fonpanel.Color;
if (fon = blok)then showmessage('У вас фон и барьеры одного цвета так быть недолжно');
end;

if (rr.Checked = false) and (barer.Font.Style = [fsBold])then
begin
barer.Color:=image1.Canvas.Pixels[X,Y];
blok := barer.Color;
if (fon = blok)then showmessage('У вас фон и барьеры одного цвета так быть недолжно');
end;

if (rr.Checked = true)then
begin
image1.Canvas.Pixels[lf,tp] := fon;
image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+2] := fon;
//image1.Canvas.Pixels[lf+3,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-2] := fon;
//image1.Canvas.Pixels[lf-3,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+2] := fon;
//image1.Canvas.Pixels[lf-3,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-2] := fon;
//image1.Canvas.Pixels[lf+3,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+2,tp+1] := fon;
image1.Canvas.Pixels[lf+3,tp+1] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-2,tp-1] := fon;
image1.Canvas.Pixels[lf-3,tp-1] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-2,tp+1] := fon;
image1.Canvas.Pixels[lf-3,tp+1] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+2,tp-1] := fon;
image1.Canvas.Pixels[lf+3,tp-1] := fon;

image1.Canvas.Pixels[lf+1,tp+1] := fon;
image1.Canvas.Pixels[lf+1,tp+2] := fon;
image1.Canvas.Pixels[lf+1,tp+3] := fon;

image1.Canvas.Pixels[lf-1,tp-1] := fon;
image1.Canvas.Pixels[lf-1,tp-2] := fon;
image1.Canvas.Pixels[lf-1,tp-3] := fon;

image1.Canvas.Pixels[lf-1,tp+1] := fon;
image1.Canvas.Pixels[lf-1,tp+2] := fon;
image1.Canvas.Pixels[lf-1,tp+3] := fon;

image1.Canvas.Pixels[lf+1,tp-1] := fon;
image1.Canvas.Pixels[lf+1,tp-2] := fon;
image1.Canvas.Pixels[lf+1,tp-3] := fon;

image1.Canvas.Pixels[lf+1,tp] := fon;
image1.Canvas.Pixels[lf+2,tp] := fon;
image1.Canvas.Pixels[lf+3,tp] := fon;

image1.Canvas.Pixels[lf-1,tp] := fon;
image1.Canvas.Pixels[lf-2,tp] := fon;
image1.Canvas.Pixels[lf-3,tp] := fon;

image1.Canvas.Pixels[lf,tp+1] := fon;
image1.Canvas.Pixels[lf,tp+2] := fon;
image1.Canvas.Pixels[lf,tp+3] := fon;

image1.Canvas.Pixels[lf,tp-1] := fon;
image1.Canvas.Pixels[lf,tp-2] := fon;
image1.Canvas.Pixels[lf,tp-3] := fon;
lf:=x;
tp:=y;
image1.Canvas.Pixels[lf,tp] := clblue;
image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+2] := clblue;
//image1.Canvas.Pixels[lf+3,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-2] := clblue;
//image1.Canvas.Pixels[lf-3,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+2] := clblue;
//image1.Canvas.Pixels[lf-3,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-2] := clblue;
//image1.Canvas.Pixels[lf+3,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+2,tp+1] := clblue;
image1.Canvas.Pixels[lf+3,tp+1] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-2,tp-1] := clblue;
image1.Canvas.Pixels[lf-3,tp-1] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-2,tp+1] := clblue;
image1.Canvas.Pixels[lf-3,tp+1] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+2,tp-1] := clblue;
image1.Canvas.Pixels[lf+3,tp-1] := clblue;

image1.Canvas.Pixels[lf+1,tp+1] := clblue;
image1.Canvas.Pixels[lf+1,tp+2] := clblue;
image1.Canvas.Pixels[lf+1,tp+3] := clblue;

image1.Canvas.Pixels[lf-1,tp-1] := clblue;
image1.Canvas.Pixels[lf-1,tp-2] := clblue;
image1.Canvas.Pixels[lf-1,tp-3] := clblue;

image1.Canvas.Pixels[lf-1,tp+1] := clblue;
image1.Canvas.Pixels[lf-1,tp+2] := clblue;
image1.Canvas.Pixels[lf-1,tp+3] := clblue;

image1.Canvas.Pixels[lf+1,tp-1] := clblue;
image1.Canvas.Pixels[lf+1,tp-2] := clblue;
image1.Canvas.Pixels[lf+1,tp-3] := clblue;

image1.Canvas.Pixels[lf+1,tp] := clblue;
image1.Canvas.Pixels[lf+2,tp] := clblue;
image1.Canvas.Pixels[lf+3,tp] := clblue;

image1.Canvas.Pixels[lf-1,tp] := clblue;
image1.Canvas.Pixels[lf-2,tp] := clblue;
image1.Canvas.Pixels[lf-3,tp] := clblue;

image1.Canvas.Pixels[lf,tp+1] := clblue;
image1.Canvas.Pixels[lf,tp+2] := clblue;
image1.Canvas.Pixels[lf,tp+3] := clblue;

image1.Canvas.Pixels[lf,tp-1] := clblue;
image1.Canvas.Pixels[lf,tp-2] := clblue;
image1.Canvas.Pixels[lf,tp-3] := clblue;
end;
end;
procedure TForm1.Timer2Timer(Sender: TObject);
begin
ddown.Checked := true;
d4:=0;
timer2.enabled := false;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
dleft.Checked := false;
timer3.enabled := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
sanya: string;
begin
if (button1.Font.Style = [])then
begin
button2.Font.Style := [];
button3.Font.Style := [];
fonpanel.Font.Style := [];
barer.Font.Style := [];
button1.Font.Style := [fsBold];
rr.Checked := false;
cursor := crHandPoint;
image1.Canvas.Pen.Color := blok;
 sanya:= InputBox('Барьер','Размер','5');
 image1.Canvas.Pen.Width := strtoint(sanya);
end
else
begin
button1.Font.Style := [];
cursor := crDefault;
end;
end;

procedure TForm1.rrClick(Sender: TObject);
begin
if (rr.Checked = true)then
begin
timer1.Enabled := true;
button1.Font.Style := [];
button2.Font.Style := [];
button3.Font.Style := [];
fonpanel.Font.Style := [];
barer.Font.Style := [];
cursor := crDefault;
end
else
begin
timer1.Enabled := false;
end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
lastik := 0;
rs := 0;
if (rr.Checked = false) and (button1.Font.Style = [fsBold])then
begin
image1.Canvas.LineTo(X, Y);
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
sanya: string;
begin
if (button2.Font.Style = [])then
begin
barer.Font.Style := [];
fonpanel.Font.Style := [];
button1.Font.Style := [];
button3.Font.Style := [];
button2.Font.Style := [fsBold];
rr.Checked := false;
cursor := crHandPoint;
image1.Canvas.Pen.Color := fon;
 sanya:= InputBox('Ластик','Размер','5');
 image1.Canvas.Pen.Width := strtoint(sanya);
end
else
begin
button2.Font.Style := [];
cursor := crDefault;
end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if (rr.Checked = false) and (button2.Font.Style = [fsBold]) and (lastik = 1)then
begin
image1.Canvas.MoveTo(X, Y);
image1.Canvas.LineTo(X, Y);
end;

if (rr.Checked = false) and (button3.Font.Style = [fsBold]) and (rs = 1)then
begin
image1.Canvas.MoveTo(X, Y);
image1.Canvas.LineTo(X, Y);
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
sanya: string;
begin
if (button3.Font.Style = [])then
begin
barer.Font.Style := [];
fonpanel.Font.Style := [];
button1.Font.Style := [];
button2.Font.Style := [];
button3.Font.Style := [fsBold];
rr.Checked := false;
cursor := crHandPoint;
image1.Canvas.Pen.Color := blok;
 sanya:= InputBox('Рисовать','Размер','5');
 image1.Canvas.Pen.Width := strtoint(sanya);
end
else
begin
button3.Font.Style := [];
cursor := crDefault;
end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if not savedialog1.Execute then exit;
image1.Picture.SaveToFile(savedialog1.FileName+'.bmp');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if not opendialog1.Execute then exit;
image1.Picture.LoadFromFile(opendialog1.FileName);
timer1.Enabled := true;
button1.Font.Style := [];
button2.Font.Style := [];
button3.Font.Style := [];
fonpanel.Font.Style := [];
barer.Font.Style := [];
cursor := crDefault;
end;

procedure TForm1.fonpanelClick(Sender: TObject);
begin
if (fonpanel.Font.Style = [])then
begin
button1.Font.Style := [];
button2.Font.Style := [];
button3.Font.Style := [];
fonpanel.Font.Style := [fsBold];
barer.Font.Style := [];
rr.Checked := false;
cursor := crHandPoint;
end
else
begin
cursor := crDefault;
fonpanel.Font.Style := [];
end;

end;

procedure TForm1.barerClick(Sender: TObject);
begin
if (barer.Font.Style = [])then
begin
button1.Font.Style := [];
button2.Font.Style := [];
button3.Font.Style := [];
fonpanel.Font.Style := [];
barer.Font.Style := [fsBold];
rr.Checked := false;
cursor := crHandPoint;
end
else
begin
cursor := crDefault;
barer.Font.Style := [];
end;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
fon := clBtnShadow;
end;

end.
