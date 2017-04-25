$(AS_CPU_PATH)/iomap.br: \
	FORCE \
	$(AS_PROJECT_CPU_PATH)/IoMap.iom \
	$(AS_PROJECT_CPU_PATH)/PvMap.vvm \
	$(AS_CPU_PATH)/ChannelConfiguration.xml \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw \
	$(AS_PROJECT_CPU_PATH)/Cpu.sw 
	@"$(AS_BIN_PATH)/BR.AS.IOMapBuilder.exe" "$(AS_PROJECT_CPU_PATH)/IoMap.iom" "$(AS_PROJECT_CPU_PATH)/PvMap.vvm"  -m "$(AS_CPU_PATH)/ConfigInfo.cfi" -g "$(AS_TEMP_PATH)/Objects/Declarations.lst" -x "$(AS_CPU_PATH)/ChannelConfiguration.xml" -v V1.00.0 -f "$(AS_CPU_PATH)" -X "$(AS_CPU_PATH)" -iomap -o "$(AS_CPU_PATH)/iomap.br" -T SG4  -B B4.26 -P "$(AS_PROJECT_PATH)" -s "Config_Deployment.X20CP1382"  -extOptions -D $(AS_CONFIGURATION)

FORCE:

-include $(AS_CPU_PATH)/Force.mak 