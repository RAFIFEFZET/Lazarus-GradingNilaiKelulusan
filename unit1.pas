unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitungNilai: TButton;
    edtNama: TEdit;
    edtNilai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblStatus: TLabel;
    lblGrade: TLabel;
    Panel1: TPanel;
    procedure btnHitungNilaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Nilai: Double;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;



procedure TForm1.btnHitungNilaiClick(Sender: TObject);
begin
  Nilai:= StrToFloat(edtNilai.Text);

  if Nilai >= 70 then
  begin
     lblStatus.Caption := 'Lulus';
     lblStatus.Font.Color := clLime;
  end
  else
  begin
      lblStatus.Caption := 'Tidak Lulus';
      lblStatus.Font.Color := clRed;
  end;

  if Nilai >= 85 then
     lblGrade.Caption := 'A'
  else if Nilai >= 75 then
     lblGrade.Caption := 'B'
  else if Nilai >= 60 then
  begin
     lblGrade.Caption := 'C';
     lblGrade.Font.Color := clYellow;
  end
  else if Nilai >= 45 then
  begin
     lblGrade.Caption := 'D';
     lblGrade.Font.Color := clYellow;
  end
  else if Nilai >= 0 then
  begin
     lblGrade.Caption := 'E';
     lblGrade.Font.Color := clRed;
  end;
end;


end.

