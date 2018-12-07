program PDFPreview;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, FrmMainPDFPreview, PDFDoc,libmupdf18 ;

{$R *.res}

begin
  Application.Initialize;
 Application.CreateForm(TfMainPdfPreview, fMainPdfPreview);
  Application.ShowHint := True;
  Application.HintHidePause := 20000;
  Application.Run;
end.

