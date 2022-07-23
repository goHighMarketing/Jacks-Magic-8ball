unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label_Message: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Label_MessageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
      answers: TStringList;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Shape3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        Shape3.Brush.Style:= bsClear;
        Label_Message.Caption:= '';
        Timer1.Enabled:= true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      Randomize();
      Timer1.Enabled:= false;
      answers:= TStringList.Create;
      answers.Add('Yes');
      answers.Add('No');
      answers.Add('Absolutely!' + sLineBreak + 'Go For It!');
      answers.Add('Ask' + sLineBreak + 'Again' + sLineBreak + 'Later');
      answers.Add('Waddya' + sLineBreak + 'Nuts?!!!');
end;

procedure TForm1.Label_MessageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      Shape3.Brush.Style:= bsClear;
      Label_Message.Caption:= '';
      Timer1.Enabled:= true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i: integer;
begin
     i:= random(answers.Count);
     Label_Message.Caption:= answers[i];
     Shape3.Brush.Style:= bsSolid;
     Timer1.Enabled:= false;
end;

end.

