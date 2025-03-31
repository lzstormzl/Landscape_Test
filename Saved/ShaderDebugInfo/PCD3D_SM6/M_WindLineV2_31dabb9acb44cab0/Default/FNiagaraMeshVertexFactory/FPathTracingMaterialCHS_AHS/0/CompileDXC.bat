@ECHO OFF
SET DXC="D:\Software\EpicGames\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\Software\EpicGames\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 0 -exports PathTracingMaterialCHS;PathTracingMaterialAHS -enable-16bit-types -Wno-parentheses-equality -disable-lifetime-markers -T lib_6_6 -Fc PathTracingMaterialHitShader.d3dasm -Fo PathTracingMaterialHitShader.dxil PathTracingMaterialHitShader.usf
:END
PAUSE
