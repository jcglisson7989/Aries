UnmarkedObjectFolder := C:/Users/jcgli/Desktop/software_Aries_041217/AriesV2/Logical/Axisobj/Axisi
MarkedObjectFolder := C:/Users/jcgli/Desktop/software_Aries_041217/AriesV2/Logical/Axisobj/Axisi

$(AS_CPU_PATH)/Axisi.br: \
	$(AS_PROJECT_PATH)/Logical/Axisobj/Axisi/Axisi.ax \
 	FORCE 
	@"$(AS_BIN_PATH)/BR.MC.Builder.exe"   "$(AS_PROJECT_PATH)/Logical/Axisobj/Axisi/Axisi.ax" -o "$(AS_CPU_PATH)/Axisi.br" -T SG4  -B B4.26 -v V1.00.0 -s "Axisobj.Axisi" -L "Acp10_MC: V3.16.1, Acp10man: V3.16.1, Acp10par: V3.16.1, NcGlobal: V3.16.1" -P "$(AS_PROJECT_PATH)"  -extOptions -D $(AS_CONFIGURATION) -secret "$(AS_PROJECT_PATH)_br.mc.builder.exe"

FORCE: