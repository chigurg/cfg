# ONE CLICK INSTALL FOR NEW CSGO DRIVE
## plugins
!include "MUI2.nsh"

!define MUI_COMPONENTSPAGE_SMALLDESC ;No value
!define MUI_UI "installer.exe" ;Value
!define MUI_INSTFILESPAGE_COLORS "FFFFFF 000000" ;Two colors



Section "MAIN INSTALL"
  SetOutPath "$DESKTOP"
  CreateDirectory "$DESKTOP\INSTALLER"

  SetOutPath "$DESKTOP"


  ExecShell "open" https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-580
SectionEnd

Section "COPY THE CFG FILES"
  CreateDirectory "$PROGRAMFILES64\INSTALLER"
  SetOutPath "$PROGRAMFILES64\INSTALLER"
  #SetOutPath "$PROGRAMFILES64\Steam\steamapps\common\Counter-Strike Global Offensive\csgo"
  nsisGit::Clone "https://github.com/chigurg/cfg.git"
  nsisGit::Update 
SectionEnd