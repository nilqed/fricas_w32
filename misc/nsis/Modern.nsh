;Change this file to customize zip2exe generated installers with a modern interface

!include "MUI.nsh"

!define MUI_WELCOMEPAGE_TITLE_3LINES
!insertmacro MUI_PAGE_WELCOME

!insertmacro MUI_PAGE_LICENSE "C:\Users\scios\Desktop\COPYING.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

Function .onVerifyInstDir
  ReadEnvStr $0 "ProgramFiles(x86)"
  StrCmp $0 $INSTDIR 0 PathGood
  MessageBox MB_OK "Do not use a path containing blanks !!"
  Abort
PathGood:
FunctionEnd


Section "SetEnvironment"
# setenv.cmd
SetOutPath $INSTDIR
FileOpen $9 $INSTDIR\setenv.cmd w
FileWrite $9 "@echo off$\r$\n"
FileWrite $9 "set AXIOM=$INSTDIR$\r$\n"
FileClose $9
# fricas.cmd
FileOpen $9 $INSTDIR\fricas.cmd w
FileWrite $9 "@echo off$\r$\n"
FileWrite $9 "call $INSTDIR\setenv.cmd$\r$\n"
FileWrite $9 "$INSTDIR\bin\AXIOMsys.exe$\r$\n" 
FileClose $9
# fricas-eval.cmd
FileOpen $9 $INSTDIR\fricas-eval.cmd w
FileWrite $9 "@echo off$\r$\n"
FileWrite $9 "call $INSTDIR\setenv.cmd$\r$\n"
FileWrite $9 "$INSTDIR\bin\AXIOMsys.exe -eval %1$\r$\n" 
FileClose $9
# Start Menu
createDirectory "$SMPROGRAMS\FriCAS"
SetOutPath $INSTDIR
createShortCut "$SMPROGRAMS\FriCAS\fricas.lnk" "$INSTDIR\fricas.cmd"  \
  "" "$INSTDIR\misc\fricas.ico"
createShortCut "$SMPROGRAMS\FriCAS\user-guide.lnk" \
  "$INSTDIR\doc\fricas_book\book-contents.xhtml"
createShortCut "$SMPROGRAMS\FriCAS\ug-index.lnk" \
  "$INSTDIR\doc\fricas_book\book-index.xhtml"
createShortCut "$INSTDIR\fricas.lnk" "$INSTDIR\fricas.cmd"  \
  "" "$INSTDIR\misc\fricas.ico"
createShortCut "$DESKTOP\fricas.lnk" "$INSTDIR\fricas.cmd"   \
  "" "$INSTDIR\misc\fricas.ico"
SectionEnd

; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\fricas.cmd"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\README.txt"
!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
!define MUI_FINISHPAGE_LINK "Documentation website"
!define MUI_FINISHPAGE_LINK_LOCATION "http://fricas.github.io"
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH


!insertmacro MUI_LANGUAGE "English"