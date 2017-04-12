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
PALFILE_Visu1=$(AS_PROJECT_PATH)/Logical/HMI/Visu/Palette.vcr
VCCFLAGS_Visu1=-server -proj Visu1 -vc "$(AS_PROJECT_PATH)/Logical/HMI/Visu/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.26.3
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.26.3/SG4
VCOBJECT_Visu1=$(AS_PROJECT_PATH)/Logical/HMI/Visu/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_Visu1=$(AS_CPU_PATH)/Visu1.br
OBJ_SCOPE_Visu1=HMI
PRJ_PATH_Visu1=$(AS_PROJECT_PATH)
SRC_PATH_Visu1=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visu1)/Visu
TEMP_PATH_Visu1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu1
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visu1=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visu1=$(TEMP_PATH_Visu1)/libraries.vci
VC_XREF_BUILDFILE_Visu1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_Visu1)/cpuhwc.vci"
VC_STATIC_OPTIONS_Visu1="$(TEMP_PATH_Visu1)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"

DSOFLAGS=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)"
LIB_SHARED=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.vca

#
# Shared Runtime Options
#
VCRS_OBJECT=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcrt_s.vco
VCRS_SOURCE=$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp

# All Shared Source Objects
VCR_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr 

TXTGRP_SHARED_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/httpURL_SDM.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpDateTimeFormats.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIDevices.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIFiles.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIMessageBox.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIStatus.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIText.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIMessageBox.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUISize.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIStatus.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIText.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIText_0.txtgrp 

VCUG_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Length.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volume.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Power.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Memory.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug 

ALCFG_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg 

ALGRP_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp 

DSO_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso \
	$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 

CVINFO_SOURCES_Visu1=$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo 



# UnitGroups
VCUG_OBJECTS_Visu1 = $(addprefix $(AS_CPU_PATH)/VCShared/vcug., $(notdir $(VCUG_SOURCES_Visu1:.vcug=.vco)))

$(AS_CPU_PATH)/VCShared/vcug.Length.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Length.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Mass.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Volume.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volume.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Power.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Power.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Memory.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Memory.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Pressure.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Temperatures.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


#UnitGroups END




# AlarmGroups
ALGRP_OBJECTS_Visu1 = $(addprefix $(AS_CPU_PATH)/VCShared/algrp., $(notdir $(ALGRP_SOURCES_Visu1:.algrp=.vco)))

$(AS_CPU_PATH)/VCShared/algrp.SystemAlarms.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


#AlarmGroups END




# AlarmSystem
ALCFG_OBJECTS_Visu1 = $(addprefix $(AS_CPU_PATH)/VCShared/alcfg., $(notdir $(ALCFG_SOURCES_Visu1:.alcfg=.vco)))

$(AS_CPU_PATH)/VCShared/alcfg.AlarmSystem.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


#AlarmSystem END




# Text Groups
TXTGRP_SHARED_OBJECTS_Visu1 = $(addprefix $(AS_CPU_PATH)/VCShared/txtgrp., $(notdir $(TXTGRP_SHARED_SOURCES_Visu1:.txtgrp=.vco)))

$(AS_CPU_PATH)/VCShared/txtgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.DateTimeFormats.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.httpURL_SDM.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/httpURL_SDM.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpDateTimeFormats.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpDateTimeFormats.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpFileManagerUIDevices.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIDevices.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpFileManagerUIFiles.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIFiles.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpFileManagerUIMessageBox.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIMessageBox.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpFileManagerUIStatus.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIStatus.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpFileManagerUIText.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpFileManagerUIText.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpRecipeUIMessageBox.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIMessageBox.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpRecipeUISize.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUISize.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpRecipeUIStatus.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIStatus.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpRecipeUIText.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIText.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.MpRecipeUIText_0.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/MpRecipeUIText_0.txtgrp $(VC_LANGUAGES_Visu1)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Visu1)" $(VCCFLAGS_Visu1)  -p Visu1 -so $(VC_STATIC_OPTIONS_Visu1) -vcr 4263 -sfas


#Text Groups END


#
# Datapoint Objects
#
$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso 
	 $(VCC) -f "$<" -o "$@" $(DSOFLAGS) $(VCCFLAGS_Visu1) -p Visu1 -vcr 4263 -sfas

$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 
	 $(VCC) -f "$<" -o "$@" $(DSOFLAGS) $(VCCFLAGS_Visu1) -p Visu1 -vcr 4263 -sfas

DPT_OBJECTS = $(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dpt.DataPointList.vco
DSO_OBJECTS_Visu1=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco $(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco 
$(DSO_OBJECTS_Visu1): $(DSO_SOURCES_Visu1)


#
# Building the Shared Runtime Options
#
$(VCRS_OBJECT) : $(VCRS_SOURCE)
	$(VCC) -f "$<" -o "$@" -ct shared -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl  $(VCCFLAGS_Visu1) -p Visu1 -vcr 4263 -sfas

#
# The Shared Module
#
SHARED_MODULE=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
SHARED_CCF=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf
DEL_SHARED_CCF=$(TEMP_PATH_ROOT_Visu1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf.lfl

$(SHARED_MODULE) : $(SHARED_CCF)
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCSTARTUP) -v V1.00.0 -vc "$(VCOBJECT_Visu1)" -f "$<" -o "$@" -d vcgclass -profile "False"

$(VCUG_OBJECTS_Visu1): $(VC_LANGUAGES_Visu1)
$(TXTGRP_SHARED_OBJECTS_Visu1): $(VC_LANGUAGES_Visu1)
$(ALGRP_OBJECTS_Visu1): $(VC_LANGUAGES_Visu1)
$(ALCFG_OBJECTS_Visu1): $(VC_LANGUAGES_Visu1)

$(SHARED_CCF): $(VCRS_OBJECT) $(VCR_OBJECTS_Visu1) $(VCUG_OBJECTS_Visu1) $(ALGRP_OBJECTS_Visu1) $(ALCFG_OBJECTS_Visu1) $(DSO_OBJECTS_Visu1) $(TXTGRP_SHARED_OBJECTS_Visu1) $(CVINFO_OBJECTS_Visu1)
	-@CMD /Q /C if exist "$(DEL_SHARED_CCF)" DEL /F /Q "$(DEL_SHARED_CCF)" 2>nul
	 @$(VCFLGEN) "$@.lfl" "$(VCR_OBJECTS_Visu1:.vco=.vco|)" -temp "$(TEMP_PATH_Visu1)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" -mask .vcug -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" -mask .algrp -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" "$(ALCFG_OBJECTS_Visu1:.vco=.vco|)" -temp "$(TEMP_PATH_Visu1)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" "$(DSO_OBJECTS_Visu1:.vco=.vco|)" -temp "$(TEMP_PATH_Visu1)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" "$(DPT_OBJECTS:.vco=.vco|)" -temp "$(TEMP_PATH_Visu1)" -prj "$(PRJ_PATH_Visu1)"
	 @$(VCFLGEN) "$@.lfl" "$(VCRS_OBJECT)" -temp "$(TEMP_PATH_Visu1)" -prj "$(PRJ_PATH_Visu1)"
	 $(LINK) "$@.lfl" -o "$@" -lib "$(LIB_SHARED)" -P "$(AS_PROJECT_PATH)" -m "shared resources" -profile "False" -warningLevel2 -name Visu1 -vcr 4263 -sfas


$(LIB_SHARED): $(SHARED_CCF)
