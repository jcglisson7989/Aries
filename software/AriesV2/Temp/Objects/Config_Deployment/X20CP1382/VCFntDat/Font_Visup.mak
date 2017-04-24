######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@"$(AS_BIN_PATH)/br.vc.pc.exe"
LINK:=@"$(AS_BIN_PATH)/BR.VC.Link.exe"
MODGEN:=@"$(AS_BIN_PATH)/BR.VC.ModGen.exe"
VCPL:=@"$(AS_BIN_PATH)/BR.VC.PL.exe"
VCHWPP:=@"$(AS_BIN_PATH)/BR.VC.HWPP.exe"
VCDEP:=@"$(AS_BIN_PATH)/BR.VC.Depend.exe"
VCFLGEN:=@"$(AS_BIN_PATH)/BR.VC.lfgen.exe"
VCREFHANDLER:=@"$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe"
VCXREFEXTENDER:=@"$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe"
RM=CMD /C DEL
PALFILE_Visup=$(AS_PROJECT_PATH)/Logical/HMI/Visup/Palette.vcr
VCCFLAGS_Visup=-server -proj Visup -vc "$(AS_PROJECT_PATH)/Logical/HMI/Visup/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.26.3
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.26.3/SG4
VCOBJECT_Visup=$(AS_PROJECT_PATH)/Logical/HMI/Visup/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_Visup=$(AS_CPU_PATH)/Visup.br
OBJ_SCOPE_Visup=HMI
PRJ_PATH_Visup=$(AS_PROJECT_PATH)
SRC_PATH_Visup=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visup)/Visup
TEMP_PATH_Visup=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visup
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visup=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visup=$(TEMP_PATH_Visup)/libraries.vci
VC_XREF_BUILDFILE_Visup=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visup=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_Visup)/cpuhwc.vci"
VC_STATIC_OPTIONS_Visup="$(TEMP_PATH_Visup)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"
TTFFLAGS_Visup= -P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo"

#
# Font arial
#
ifneq ($(VC_FONT_arial),1)
VC_FONT_arial=1
$(AS_CPU_PATH)/VcFntDat/arial.vco:$(AS_CPU_PATH)/VcFntDat/arial.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Visup) $(VCCFLAGS_Visup) -sfas

$(AS_CPU_PATH)/VcFntDat/arial.ccf:$(AS_CPU_PATH)/VcFntDat/arial.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arial.ttf -name Visup -profile "False" -vcr 4263 -sfas

$(AS_CPU_PATH)/arial.br:$(AS_CPU_PATH)/VcFntDat/arial.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Visup)" -b
endif

#
# Font arialbd
#
ifneq ($(VC_FONT_arialbd),1)
VC_FONT_arialbd=1
$(AS_CPU_PATH)/VcFntDat/arialbd.vco:$(AS_CPU_PATH)/VcFntDat/arialbd.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Visup) $(VCCFLAGS_Visup) -sfas

$(AS_CPU_PATH)/VcFntDat/arialbd.ccf:$(AS_CPU_PATH)/VcFntDat/arialbd.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m arialbd.ttf -name Visup -profile "False" -vcr 4263 -sfas

$(AS_CPU_PATH)/arialbd.br:$(AS_CPU_PATH)/VcFntDat/arialbd.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Visup)" -b
endif

#
# Font vera
#
ifneq ($(VC_FONT_vera),1)
VC_FONT_vera=1
$(AS_CPU_PATH)/VcFntDat/vera.vco:$(AS_CPU_PATH)/VcFntDat/vera.vci
	 $(VCC) -f "$<" -o "$@" $(TTFFLAGS_Visup) $(VCCFLAGS_Visup) -sfas

$(AS_CPU_PATH)/VcFntDat/vera.ccf:$(AS_CPU_PATH)/VcFntDat/vera.vco
	 $(LINK) "$^" -o "$@" -warningLevel2 -m vera.ttf -name Visup -profile "False" -vcr 4263 -sfas

$(AS_CPU_PATH)/vera.br:$(AS_CPU_PATH)/VcFntDat/vera.ccf
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -f "$<" -o "$@" -d vcgclass -v V1.00.0 -profile False -vc "$(VCOBJECT_Visup)" -b
endif

FONT_MODULES_Visup=$(TEMP_PATH_ROOT_Visup)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arial.br $(TEMP_PATH_ROOT_Visup)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/arialbd.br $(TEMP_PATH_ROOT_Visup)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vera.br 
