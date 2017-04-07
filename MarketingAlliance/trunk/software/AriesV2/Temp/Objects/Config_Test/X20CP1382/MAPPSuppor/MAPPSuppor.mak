UnmarkedObjectFolder := C:/Users/jcgli/Desktop/software_Aries_040717/AriesV2/Logical/Libraries/MAPPSuppor
MarkedObjectFolder := C:/Users/jcgli/Desktop/software_Aries_040717/AriesV2/Logical/Libraries/MAPPSuppor

$(AS_CPU_PATH)/MAPPSuppor.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/ANSIC.lby \
	$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.ox" -o "$(AS_CPU_PATH)/MAPPSuppor.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B B4.26 -extConstants  -extOptions -D $(AS_CONFIGURATION) -d "standard: V* - V*,sys_lib: V* - V*,wbrLogSvc: V* - V*,ArTextSys: V* - V*" -r Library -R "library (written/managed by J. Glisson) containing functions for ACPu err acknowledgement, HMI param table construction, HMI param table activation to the common layer"  -s "Libraries.MAPPSuppor" -L "Acp10_MC: V3.16.1, Acp10man: V3.16.1, Acp10par: V3.16.1, ArTextSys: V0.16.0, AsANSL: V*, AsARCfg: V*, AsArLog: V*, AsArProf: V*, AsArSdm: V*, AsBrMath: V*, AsBrStr: V*, AsICMP: V*, AsIecCon: V*, AsIOTime: V*, AsMem: V*, AsTCP: V*, astime: V*, AsUDP: V*, AsUSB: V*, AsXml: V*, bglibasWBR: V*, brsystem: V*, DataObj: V*, FileIO: V*, jgLibC: V*, MAPPSuppor: V*, MpAlarm: V1.60.1, MpAxis: V1.60.1, MpCom: V1.60.1, MpFile: V1.60.1, MpRecipe: V1.60.1, MpWebXs: V1.60.1, MTBasics: V2.21.0, MTData: V2.10.0, MTFilter: V2.10.0, MTProfile: V2.10.0, MTTypes: V1.03.0, NcGlobal: V3.16.1, operator: V*, runtime: V*, standard: V*, sys_lib: V*, wbrFltUtil: V*, wbrListSvc: V*, wbrLogSvc: V*, wbrMemSvc: V*, wbrPingSvc: V*, wbrsprintf: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"


$(AS_CPU_PATH)/MAPPSuppor.xref: \
	$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.xrefox
	@"$(AS_BIN_PATH)/BR.AS.CrossRefExtender.exe" "$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.xrefox" -o "$(AS_CPU_PATH)/MAPPSuppor.xref" -r Library -T SG4  -M IA32  -D $(AS_CONFIGURATION) -D _SG4 -D _DEFAULT_INCLUDES -include "$(AS_CPU_PATH)/Libraries.h" -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -l "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun" -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)"

$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.ox: \
	$(AS_CPU_PATH)/MAPPSuppor/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/MAPPSuppor/a.out" -o "$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.ox" -T SG4 -r Library  -extOptions -D $(AS_CONFIGURATION)  -X "$(AS_CPU_PATH)/MAPPSuppor/MAPPSuppor.xrefox" -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/MAPPSuppor/a.out: \
	$(AS_CPU_PATH)/MAPPSuppor/hmiParamList.c.o \
	$(AS_CPU_PATH)/MAPPSuppor/bgstring.c.o \
	$(AS_CPU_PATH)/MAPPSuppor/bgsprintf.c.o \
	$(AS_CPU_PATH)/MAPPSuppor/FBK_Init_Logbook.c.o \
	$(AS_CPU_PATH)/MAPPSuppor/hmiTableFBK_typ.c.o \
	$(AS_CPU_PATH)/MAPPSuppor/ActivateHMITable.c.o \
	$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libwbrsprintf_s.a
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link  -O "$(AS_CPU_PATH)//MAPPSuppor/MAPPSuppor.out.opt" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/hmiParamList.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiParamList.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_TEMP_PATH)/Includes/operator.h \
	$(AS_TEMP_PATH)/Includes/runtime.h \
	$(AS_TEMP_PATH)/Includes/astime.h \
	$(AS_TEMP_PATH)/Includes/AsIecCon.h \
	$(AS_TEMP_PATH)/Includes/FileIO.h \
	$(AS_TEMP_PATH)/Includes/AsXml.h \
	$(AS_TEMP_PATH)/Includes/standard.h \
	$(AS_TEMP_PATH)/Includes/brsystem.h \
	$(AS_TEMP_PATH)/Includes/sys_lib.h \
	$(AS_TEMP_PATH)/Includes/AsANSL.h \
	$(AS_TEMP_PATH)/Includes/AsARCfg.h \
	$(AS_TEMP_PATH)/Includes/AsBrMath.h \
	$(AS_TEMP_PATH)/Includes/AsBrStr.h \
	$(AS_TEMP_PATH)/Includes/DataObj.h \
	$(AS_TEMP_PATH)/Includes/AsTCP.h \
	$(AS_TEMP_PATH)/Includes/AsUDP.h \
	$(AS_TEMP_PATH)/Includes/AsUSB.h \
	$(AS_TEMP_PATH)/Includes/AsArSdm.h \
	$(AS_TEMP_PATH)/Includes/AsIOTime.h \
	$(AS_TEMP_PATH)/Includes/AsMem.h \
	$(AS_TEMP_PATH)/Includes/AsArLog.h \
	$(AS_TEMP_PATH)/Includes/AsArProf.h \
	$(AS_TEMP_PATH)/Includes/MTTypes.h \
	$(AS_TEMP_PATH)/Includes/MTProfile.h \
	$(AS_TEMP_PATH)/Includes/MTFilter.h \
	$(AS_TEMP_PATH)/Includes/jgLibC.h \
	$(AS_TEMP_PATH)/Includes/MTData.h \
	$(AS_TEMP_PATH)/Includes/ArTextSys.h \
	$(AS_TEMP_PATH)/Includes/wbrMemSvc.h \
	$(AS_TEMP_PATH)/Includes/wbrListSvc.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h \
	$(AS_TEMP_PATH)/Includes/wbrLogSvc.h \
	$(AS_TEMP_PATH)/Includes/bglibasWBR.h \
	$(AS_TEMP_PATH)/Includes/wbrFltUtil.h \
	$(AS_TEMP_PATH)/Includes/AsICMP.h \
	$(AS_TEMP_PATH)/Includes/MTBasics.h \
	$(AS_TEMP_PATH)/Includes/MpCom.h \
	$(AS_TEMP_PATH)/Includes/MpWebXs.h \
	$(AS_TEMP_PATH)/Includes/MpRecipe.h \
	$(AS_TEMP_PATH)/Includes/MpAlarm.h \
	$(AS_TEMP_PATH)/Includes/MpFile.h \
	$(AS_TEMP_PATH)/Includes/Acp10par.h \
	$(AS_TEMP_PATH)/Includes/NcGlobal.h \
	$(AS_TEMP_PATH)/Includes/MAPPSuppor.h \
	$(AS_TEMP_PATH)/Includes/wbrPingSvc.h \
	$(AS_TEMP_PATH)/Includes/Acp10man.h \
	$(AS_TEMP_PATH)/Includes/ncglobal.h \
	$(AS_TEMP_PATH)/Includes/acp10par.h \
	$(AS_TEMP_PATH)/Includes/Acp10_MC.h \
	$(AS_TEMP_PATH)/Includes/MpAxis.h \
	$(AS_TEMP_PATH)/Includes/mpcomponentsVAR.h \
	$(AS_TEMP_PATH)/Includes/globalconstantsVAR.h \
	$(AS_TEMP_PATH)/Includes/machineTYP.h \
	$(AS_TEMP_PATH)/Includes/generic_rec_cfgTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesglobalVAR.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesVAR.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/usb_mount_typesTYP.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/auxiliaryVAR.h \
	$(AS_TEMP_PATH)/Includes/hmi/generic_controlsTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmi_pagesTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmidialogTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmimsgscrollTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiforceioTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmialertTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiremmemTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiVAR.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiParamList.c" -o "$(AS_CPU_PATH)/MAPPSuppor/hmiParamList.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/bgstring.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/bgstring.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/bgstring.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/bgstring.c" -o "$(AS_CPU_PATH)/MAPPSuppor/bgstring.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/bgsprintf.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/bgsprintf.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_TEMP_PATH)/Includes/operator.h \
	$(AS_TEMP_PATH)/Includes/runtime.h \
	$(AS_TEMP_PATH)/Includes/astime.h \
	$(AS_TEMP_PATH)/Includes/AsIecCon.h \
	$(AS_TEMP_PATH)/Includes/FileIO.h \
	$(AS_TEMP_PATH)/Includes/AsXml.h \
	$(AS_TEMP_PATH)/Includes/standard.h \
	$(AS_TEMP_PATH)/Includes/brsystem.h \
	$(AS_TEMP_PATH)/Includes/sys_lib.h \
	$(AS_TEMP_PATH)/Includes/AsANSL.h \
	$(AS_TEMP_PATH)/Includes/AsARCfg.h \
	$(AS_TEMP_PATH)/Includes/AsBrMath.h \
	$(AS_TEMP_PATH)/Includes/AsBrStr.h \
	$(AS_TEMP_PATH)/Includes/DataObj.h \
	$(AS_TEMP_PATH)/Includes/AsTCP.h \
	$(AS_TEMP_PATH)/Includes/AsUDP.h \
	$(AS_TEMP_PATH)/Includes/AsUSB.h \
	$(AS_TEMP_PATH)/Includes/AsArSdm.h \
	$(AS_TEMP_PATH)/Includes/AsIOTime.h \
	$(AS_TEMP_PATH)/Includes/AsMem.h \
	$(AS_TEMP_PATH)/Includes/AsArLog.h \
	$(AS_TEMP_PATH)/Includes/AsArProf.h \
	$(AS_TEMP_PATH)/Includes/MTTypes.h \
	$(AS_TEMP_PATH)/Includes/MTProfile.h \
	$(AS_TEMP_PATH)/Includes/MTFilter.h \
	$(AS_TEMP_PATH)/Includes/jgLibC.h \
	$(AS_TEMP_PATH)/Includes/MTData.h \
	$(AS_TEMP_PATH)/Includes/ArTextSys.h \
	$(AS_TEMP_PATH)/Includes/wbrMemSvc.h \
	$(AS_TEMP_PATH)/Includes/wbrListSvc.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h \
	$(AS_TEMP_PATH)/Includes/wbrLogSvc.h \
	$(AS_TEMP_PATH)/Includes/bglibasWBR.h \
	$(AS_TEMP_PATH)/Includes/wbrFltUtil.h \
	$(AS_TEMP_PATH)/Includes/AsICMP.h \
	$(AS_TEMP_PATH)/Includes/MTBasics.h \
	$(AS_TEMP_PATH)/Includes/MpCom.h \
	$(AS_TEMP_PATH)/Includes/MpWebXs.h \
	$(AS_TEMP_PATH)/Includes/MpRecipe.h \
	$(AS_TEMP_PATH)/Includes/MpAlarm.h \
	$(AS_TEMP_PATH)/Includes/MpFile.h \
	$(AS_TEMP_PATH)/Includes/Acp10par.h \
	$(AS_TEMP_PATH)/Includes/NcGlobal.h \
	$(AS_TEMP_PATH)/Includes/MAPPSuppor.h \
	$(AS_TEMP_PATH)/Includes/wbrPingSvc.h \
	$(AS_TEMP_PATH)/Includes/Acp10man.h \
	$(AS_TEMP_PATH)/Includes/ncglobal.h \
	$(AS_TEMP_PATH)/Includes/acp10par.h \
	$(AS_TEMP_PATH)/Includes/Acp10_MC.h \
	$(AS_TEMP_PATH)/Includes/MpAxis.h \
	$(AS_TEMP_PATH)/Includes/mpcomponentsVAR.h \
	$(AS_TEMP_PATH)/Includes/globalconstantsVAR.h \
	$(AS_TEMP_PATH)/Includes/machineTYP.h \
	$(AS_TEMP_PATH)/Includes/generic_rec_cfgTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesglobalVAR.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesVAR.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/usb_mount_typesTYP.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/auxiliaryVAR.h \
	$(AS_TEMP_PATH)/Includes/hmi/generic_controlsTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmi_pagesTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmidialogTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmimsgscrollTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiforceioTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmialertTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiremmemTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiVAR.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/bgsprintf.c" -o "$(AS_CPU_PATH)/MAPPSuppor/bgsprintf.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/FBK_Init_Logbook.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/FBK_Init_Logbook.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_TEMP_PATH)/Includes/operator.h \
	$(AS_TEMP_PATH)/Includes/runtime.h \
	$(AS_TEMP_PATH)/Includes/astime.h \
	$(AS_TEMP_PATH)/Includes/AsIecCon.h \
	$(AS_TEMP_PATH)/Includes/FileIO.h \
	$(AS_TEMP_PATH)/Includes/AsXml.h \
	$(AS_TEMP_PATH)/Includes/standard.h \
	$(AS_TEMP_PATH)/Includes/brsystem.h \
	$(AS_TEMP_PATH)/Includes/sys_lib.h \
	$(AS_TEMP_PATH)/Includes/AsANSL.h \
	$(AS_TEMP_PATH)/Includes/AsARCfg.h \
	$(AS_TEMP_PATH)/Includes/AsBrMath.h \
	$(AS_TEMP_PATH)/Includes/AsBrStr.h \
	$(AS_TEMP_PATH)/Includes/DataObj.h \
	$(AS_TEMP_PATH)/Includes/AsTCP.h \
	$(AS_TEMP_PATH)/Includes/AsUDP.h \
	$(AS_TEMP_PATH)/Includes/AsUSB.h \
	$(AS_TEMP_PATH)/Includes/AsArSdm.h \
	$(AS_TEMP_PATH)/Includes/AsIOTime.h \
	$(AS_TEMP_PATH)/Includes/AsMem.h \
	$(AS_TEMP_PATH)/Includes/AsArLog.h \
	$(AS_TEMP_PATH)/Includes/AsArProf.h \
	$(AS_TEMP_PATH)/Includes/MTTypes.h \
	$(AS_TEMP_PATH)/Includes/MTProfile.h \
	$(AS_TEMP_PATH)/Includes/MTFilter.h \
	$(AS_TEMP_PATH)/Includes/jgLibC.h \
	$(AS_TEMP_PATH)/Includes/MTData.h \
	$(AS_TEMP_PATH)/Includes/ArTextSys.h \
	$(AS_TEMP_PATH)/Includes/wbrMemSvc.h \
	$(AS_TEMP_PATH)/Includes/wbrListSvc.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h \
	$(AS_TEMP_PATH)/Includes/wbrLogSvc.h \
	$(AS_TEMP_PATH)/Includes/bglibasWBR.h \
	$(AS_TEMP_PATH)/Includes/wbrFltUtil.h \
	$(AS_TEMP_PATH)/Includes/AsICMP.h \
	$(AS_TEMP_PATH)/Includes/MTBasics.h \
	$(AS_TEMP_PATH)/Includes/MpCom.h \
	$(AS_TEMP_PATH)/Includes/MpWebXs.h \
	$(AS_TEMP_PATH)/Includes/MpRecipe.h \
	$(AS_TEMP_PATH)/Includes/MpAlarm.h \
	$(AS_TEMP_PATH)/Includes/MpFile.h \
	$(AS_TEMP_PATH)/Includes/Acp10par.h \
	$(AS_TEMP_PATH)/Includes/NcGlobal.h \
	$(AS_TEMP_PATH)/Includes/MAPPSuppor.h \
	$(AS_TEMP_PATH)/Includes/wbrPingSvc.h \
	$(AS_TEMP_PATH)/Includes/Acp10man.h \
	$(AS_TEMP_PATH)/Includes/ncglobal.h \
	$(AS_TEMP_PATH)/Includes/acp10par.h \
	$(AS_TEMP_PATH)/Includes/Acp10_MC.h \
	$(AS_TEMP_PATH)/Includes/MpAxis.h \
	$(AS_TEMP_PATH)/Includes/mpcomponentsVAR.h \
	$(AS_TEMP_PATH)/Includes/globalconstantsVAR.h \
	$(AS_TEMP_PATH)/Includes/machineTYP.h \
	$(AS_TEMP_PATH)/Includes/generic_rec_cfgTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesglobalVAR.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesVAR.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/usb_mount_typesTYP.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/auxiliaryVAR.h \
	$(AS_TEMP_PATH)/Includes/hmi/generic_controlsTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmi_pagesTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmidialogTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmimsgscrollTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiforceioTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmialertTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiremmemTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiVAR.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/FBK_Init_Logbook.c" -o "$(AS_CPU_PATH)/MAPPSuppor/FBK_Init_Logbook.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/hmiTableFBK_typ.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiTableFBK_typ.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_TEMP_PATH)/Includes/MAPPSuppor.h \
	$(AS_TEMP_PATH)/Includes/standard.h \
	$(AS_TEMP_PATH)/Includes/sys_lib.h \
	$(AS_TEMP_PATH)/Includes/runtime.h \
	$(AS_TEMP_PATH)/Includes/ArTextSys.h \
	$(AS_TEMP_PATH)/Includes/wbrLogSvc.h \
	$(AS_TEMP_PATH)/Includes/AsArLog.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h \
	$(AS_TEMP_PATH)/Includes/wbrListSvc.h \
	$(AS_TEMP_PATH)/Includes/wbrMemSvc.h \
	$(AS_TEMP_PATH)/Includes/AsMem.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiParamList.h \
	$(AS_TEMP_PATH)/Includes/operator.h \
	$(AS_TEMP_PATH)/Includes/astime.h \
	$(AS_TEMP_PATH)/Includes/AsIecCon.h \
	$(AS_TEMP_PATH)/Includes/FileIO.h \
	$(AS_TEMP_PATH)/Includes/AsXml.h \
	$(AS_TEMP_PATH)/Includes/brsystem.h \
	$(AS_TEMP_PATH)/Includes/AsANSL.h \
	$(AS_TEMP_PATH)/Includes/AsARCfg.h \
	$(AS_TEMP_PATH)/Includes/AsBrMath.h \
	$(AS_TEMP_PATH)/Includes/AsBrStr.h \
	$(AS_TEMP_PATH)/Includes/DataObj.h \
	$(AS_TEMP_PATH)/Includes/AsTCP.h \
	$(AS_TEMP_PATH)/Includes/AsUDP.h \
	$(AS_TEMP_PATH)/Includes/AsUSB.h \
	$(AS_TEMP_PATH)/Includes/AsArSdm.h \
	$(AS_TEMP_PATH)/Includes/AsIOTime.h \
	$(AS_TEMP_PATH)/Includes/AsArProf.h \
	$(AS_TEMP_PATH)/Includes/MTTypes.h \
	$(AS_TEMP_PATH)/Includes/MTProfile.h \
	$(AS_TEMP_PATH)/Includes/MTFilter.h \
	$(AS_TEMP_PATH)/Includes/jgLibC.h \
	$(AS_TEMP_PATH)/Includes/MTData.h \
	$(AS_TEMP_PATH)/Includes/bglibasWBR.h \
	$(AS_TEMP_PATH)/Includes/wbrFltUtil.h \
	$(AS_TEMP_PATH)/Includes/AsICMP.h \
	$(AS_TEMP_PATH)/Includes/MTBasics.h \
	$(AS_TEMP_PATH)/Includes/MpCom.h \
	$(AS_TEMP_PATH)/Includes/MpWebXs.h \
	$(AS_TEMP_PATH)/Includes/MpRecipe.h \
	$(AS_TEMP_PATH)/Includes/MpAlarm.h \
	$(AS_TEMP_PATH)/Includes/MpFile.h \
	$(AS_TEMP_PATH)/Includes/Acp10par.h \
	$(AS_TEMP_PATH)/Includes/NcGlobal.h \
	$(AS_TEMP_PATH)/Includes/wbrPingSvc.h \
	$(AS_TEMP_PATH)/Includes/Acp10man.h \
	$(AS_TEMP_PATH)/Includes/ncglobal.h \
	$(AS_TEMP_PATH)/Includes/acp10par.h \
	$(AS_TEMP_PATH)/Includes/Acp10_MC.h \
	$(AS_TEMP_PATH)/Includes/MpAxis.h \
	$(AS_TEMP_PATH)/Includes/mpcomponentsVAR.h \
	$(AS_TEMP_PATH)/Includes/globalconstantsVAR.h \
	$(AS_TEMP_PATH)/Includes/machineTYP.h \
	$(AS_TEMP_PATH)/Includes/generic_rec_cfgTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesglobalVAR.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesVAR.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/usb_mount_typesTYP.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/auxiliaryVAR.h \
	$(AS_TEMP_PATH)/Includes/hmi/generic_controlsTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmi_pagesTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmidialogTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmimsgscrollTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiforceioTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmialertTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiremmemTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiVAR.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiTableFBK_typ.c" -o "$(AS_CPU_PATH)/MAPPSuppor/hmiTableFBK_typ.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MAPPSuppor/ActivateHMITable.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/ActivateHMITable.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/HMIparamList.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/MAPPSuppor.var \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsArLog/AsArLog.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/ArTextSys/ArTextSys.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsBrStr/AsBrStr.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrLogSvc/wbrLogSvc.fun \
	$(AS_PROJECT_PATH)/Logical/GlobalConstants.var \
	$(AS_PROJECT_PATH)/Logical/HMI/HMI.var \
	$(AS_TEMP_PATH)/Includes/MAPPSuppor.h \
	$(AS_TEMP_PATH)/Includes/standard.h \
	$(AS_TEMP_PATH)/Includes/sys_lib.h \
	$(AS_TEMP_PATH)/Includes/runtime.h \
	$(AS_TEMP_PATH)/Includes/ArTextSys.h \
	$(AS_TEMP_PATH)/Includes/wbrLogSvc.h \
	$(AS_TEMP_PATH)/Includes/AsArLog.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf/wbrsprintf.h \
	$(AS_TEMP_PATH)/Includes/wbrListSvc.h \
	$(AS_TEMP_PATH)/Includes/wbrMemSvc.h \
	$(AS_TEMP_PATH)/Includes/AsMem.h \
	$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/hmiParamList.h \
	$(AS_TEMP_PATH)/Includes/operator.h \
	$(AS_TEMP_PATH)/Includes/astime.h \
	$(AS_TEMP_PATH)/Includes/AsIecCon.h \
	$(AS_TEMP_PATH)/Includes/FileIO.h \
	$(AS_TEMP_PATH)/Includes/AsXml.h \
	$(AS_TEMP_PATH)/Includes/brsystem.h \
	$(AS_TEMP_PATH)/Includes/AsANSL.h \
	$(AS_TEMP_PATH)/Includes/AsARCfg.h \
	$(AS_TEMP_PATH)/Includes/AsBrMath.h \
	$(AS_TEMP_PATH)/Includes/AsBrStr.h \
	$(AS_TEMP_PATH)/Includes/DataObj.h \
	$(AS_TEMP_PATH)/Includes/AsTCP.h \
	$(AS_TEMP_PATH)/Includes/AsUDP.h \
	$(AS_TEMP_PATH)/Includes/AsUSB.h \
	$(AS_TEMP_PATH)/Includes/AsArSdm.h \
	$(AS_TEMP_PATH)/Includes/AsIOTime.h \
	$(AS_TEMP_PATH)/Includes/AsArProf.h \
	$(AS_TEMP_PATH)/Includes/MTTypes.h \
	$(AS_TEMP_PATH)/Includes/MTProfile.h \
	$(AS_TEMP_PATH)/Includes/MTFilter.h \
	$(AS_TEMP_PATH)/Includes/jgLibC.h \
	$(AS_TEMP_PATH)/Includes/MTData.h \
	$(AS_TEMP_PATH)/Includes/bglibasWBR.h \
	$(AS_TEMP_PATH)/Includes/wbrFltUtil.h \
	$(AS_TEMP_PATH)/Includes/AsICMP.h \
	$(AS_TEMP_PATH)/Includes/MTBasics.h \
	$(AS_TEMP_PATH)/Includes/MpCom.h \
	$(AS_TEMP_PATH)/Includes/MpWebXs.h \
	$(AS_TEMP_PATH)/Includes/MpRecipe.h \
	$(AS_TEMP_PATH)/Includes/MpAlarm.h \
	$(AS_TEMP_PATH)/Includes/MpFile.h \
	$(AS_TEMP_PATH)/Includes/Acp10par.h \
	$(AS_TEMP_PATH)/Includes/NcGlobal.h \
	$(AS_TEMP_PATH)/Includes/wbrPingSvc.h \
	$(AS_TEMP_PATH)/Includes/Acp10man.h \
	$(AS_TEMP_PATH)/Includes/ncglobal.h \
	$(AS_TEMP_PATH)/Includes/acp10par.h \
	$(AS_TEMP_PATH)/Includes/Acp10_MC.h \
	$(AS_TEMP_PATH)/Includes/MpAxis.h \
	$(AS_TEMP_PATH)/Includes/mpcomponentsVAR.h \
	$(AS_TEMP_PATH)/Includes/globalconstantsVAR.h \
	$(AS_TEMP_PATH)/Includes/machineTYP.h \
	$(AS_TEMP_PATH)/Includes/generic_rec_cfgTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/wbrservicesglobalVAR.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesTYP.h \
	$(AS_TEMP_PATH)/Includes/libraries/wbrservices/timerservices/timerservicesVAR.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/usb_mount_typesTYP.h \
	$(AS_TEMP_PATH)/Includes/auxiliary_services_control/auxiliaryVAR.h \
	$(AS_TEMP_PATH)/Includes/hmi/generic_controlsTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmi_pagesTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmidialogTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmimsgscrollTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiforceioTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmialertTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiremmemTYP.h \
	$(AS_TEMP_PATH)/Includes/hmi/hmiVAR.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor/ActivateHMITable.c" -o "$(AS_CPU_PATH)/MAPPSuppor/ActivateHMITable.c.o"  -T SG4  -M IA32  -B B4.26 -G V4.1.2  -s "Libraries.MAPPSuppor" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes/Libraries/MAPPSuppor" "$(AS_TEMP_PATH)/Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrServices_C_Includes" "$(AS_PROJECT_PATH)/Logical/Libraries/wbrServices/wbrsprintf" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _MAPPSUPPOR_EXPORT  -extOptions -D $(AS_CONFIGURATION) -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 
