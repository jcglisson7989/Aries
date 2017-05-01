/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _MPCOM_
#define _MPCOM_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif






/* Constants */
#ifdef _REPLACE_CONST
 #define mpCOM_MAIN_INT 1U
 #define mpCOM_STANDALONE_INT 2U
/*Constant mpCOM_MAIN not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

/*Constant mpCOM_STANDALONE not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

#else
 #ifndef _GLOBAL_CONST
   #define _GLOBAL_CONST _WEAK const
 #endif
 _GLOBAL_CONST unsigned long mpCOM_MAIN_INT;
 _GLOBAL_CONST unsigned long mpCOM_STANDALONE_INT;


#endif




/* Datatypes and datatypes of function blocks */
typedef enum MpComFacilitiesEnum
{	mpCOM_FAC_UNDEFINED = -1,
	mpCOM_FAC_ARCORE = 0,
	mpCOM_FAC_SAFETY1 = 1,
	mpCOM_FAC_SAFETY2 = 2,
	mpCOM_FAC_GMC1 = 96,
	mpCOM_FAC_GMC2 = 97,
	mpCOM_FAC_GMCAXIS = 98,
	mpCOM_FAC_GMCAXESGROUP = 99,
	mpCOM_FAC_GMCARNCGROUP = 103,
	mpCOM_FAC_TRF = 105,
	mpCOM_FAC_MAPP_INTERNAL = 144,
	mpCOM_FAC_MAPP_CORE = 145,
	mpCOM_FAC_MAPP_INFRASTRUCTURE = 146,
	mpCOM_FAC_MAPP_MECHATRONIC = 147,
	mpCOM_FAC_MAPP_INDUSTRY = 148
} MpComFacilitiesEnum;

typedef enum MpComConfigScopeEnum
{	mpCOM_CONFIG_SCOPE_COMPONENT = 0,
	mpCOM_CONFIG_SCOPE_BRANCH = 1
} MpComConfigScopeEnum;

typedef enum MpComSeveritiesEnum
{	mpCOM_SEV_SUCCESS = 0,
	mpCOM_SEV_INFORMATIONAL = 1,
	mpCOM_SEV_WARNING = 2,
	mpCOM_SEV_ERROR = 3
} MpComSeveritiesEnum;

typedef enum MpComLoggerUIStatusEnum
{	mpCOM_LOGGERUI_IDLE = 0,
	mpCOM_LOGGERUI_REFRESH = 1,
	mpCOM_LOGGERUI_ERROR = 2
} MpComLoggerUIStatusEnum;

typedef enum MpComErrorEnum
{	mpCOM_NO_ERROR = 0,
	mpCOM_ERR_ACTIVATION = -1064239103,
	mpCOM_ERR_MPLINK_NULL = -1064239102,
	mpCOM_ERR_MPLINK_INVALID = -1064239101,
	mpCOM_ERR_MPLINK_CHANGED = -1064239100,
	mpCOM_ERR_MPLINK_CORRUPT = -1064239099,
	mpCOM_ERR_LINK_NOT_POSSIBLE = -1064238848,
	mpCOM_ERR_FILE_SYSTEM = -1064238847,
	mpCOM_ERR_INVALID_FILE_DEV = -1064238846,
	mpCOM_ERR_INVALID_FILE_NAME = -1064238845,
	mpCOM_ERR_NO_CONFIG_IMPORT = -1064238844,
	mpCOM_ERR_MISSING_UICONNECT = -1064238843,
	mpCOM_ERR_CONFIG_IMPORT_ERR = -1064238842,
	mpCOM_ERR_WRONG_FILTER_STRING = -1064238841
} MpComErrorEnum;

typedef struct MpComInternalIDType
{	signed long ID;
	enum MpComSeveritiesEnum Severity;
	enum MpComFacilitiesEnum Facility;
	unsigned short Code;
} MpComInternalIDType;

typedef struct MpComStatusIDType
{	enum MpComErrorEnum ID;
	enum MpComSeveritiesEnum Severity;
	enum MpComFacilitiesEnum Facility;
	unsigned short Code;
} MpComStatusIDType;

typedef struct MpComDiagType
{	struct MpComStatusIDType StatusID;
} MpComDiagType;

typedef struct MpComConfigManagerInfoType
{	struct MpComDiagType Diag;
} MpComConfigManagerInfoType;

typedef struct MpComIdentType
{	unsigned long Internal[2];
} MpComIdentType;

typedef struct MpComInternalDataType
{	unsigned long pObject;
	unsigned long State;
} MpComInternalDataType;

typedef struct MpComConfigInternalType
{	unsigned long pObject;
	signed long State;
} MpComConfigInternalType;

typedef struct MpComDumpInternalType
{	plcbit CmdOld;
} MpComDumpInternalType;

typedef struct MpComLoggerUISetupType
{	unsigned short LoggerListSize;
	unsigned char LoggerScrollWindow;
} MpComLoggerUISetupType;

typedef struct MpComLoggerUIDateTimeType
{	plcdt DateTime;
	unsigned long Microseconds;
} MpComLoggerUIDateTimeType;

typedef struct MpComLoggerUILoggerListType
{	plcstring Message[20][256];
	signed long StatusID[20];
	unsigned short ErrorNumber[20];
	struct MpComLoggerUIDateTimeType Time[20];
	plcstring Component[20][51];
	enum MpComFacilitiesEnum Facility[20];
	enum MpComSeveritiesEnum Severity[20];
	plcbit PageUp;
	plcbit PageDown;
	plcbit StepUp;
	plcbit StepDown;
	float RangeStart;
	float RangeEnd;
} MpComLoggerUILoggerListType;

typedef struct MpComLoggerUIConnectType
{	enum MpComLoggerUIStatusEnum Status;
	struct MpComLoggerUILoggerListType List;
	plcbit Clear;
	plcstring SearchFilter[256];
} MpComLoggerUIConnectType;

typedef struct MpComLoggerUIInfoType
{	unsigned short CurrentBufferEntries;
	struct MpComDiagType Diag;
} MpComLoggerUIInfoType;

typedef struct MpComConfigManager
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	plcstring (*DeviceName);
	plcstring (*FileName);
	enum MpComConfigScopeEnum Scope;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpComConfigManagerInfoType Info;
	/* VAR (analog) */
	struct MpComConfigInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Export;
	plcbit Import;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpComConfigManager_typ;

typedef struct MpComLoggerUI
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	enum MpComConfigScopeEnum Scope;
	plcstring EntryFilter[256];
	unsigned short BufferSize;
	struct MpComLoggerUISetupType UISetup;
	struct MpComLoggerUIConnectType* UIConnect;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpComLoggerUIInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Clear;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
} MpComLoggerUI_typ;

typedef struct MpComLinkToParent
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType ParentLink;
	struct MpComIdentType* MpLink;
	/* VAR_OUTPUT (analog) */
	struct MpComIdentType LinkOut;
	signed long StatusID;
} MpComLinkToParent_typ;

typedef struct MpComDump
{
	/* VAR_INPUT (analog) */
	plcstring DeviceName[21];
	plcstring FileName[41];
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	/* VAR (analog) */
	struct MpComDumpInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit Dump;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpComDump_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void MpComConfigManager(struct MpComConfigManager* inst);
_BUR_PUBLIC void MpComLoggerUI(struct MpComLoggerUI* inst);
_BUR_PUBLIC void MpComLinkToParent(struct MpComLinkToParent* inst);
_BUR_PUBLIC void MpComDump(struct MpComDump* inst);
_BUR_PUBLIC unsigned long MpComHandle();
_BUR_PUBLIC unsigned long MpComVersion();
_BUR_PUBLIC signed long MpComLink(struct MpComIdentType* ParentLink, struct MpComIdentType* MpLink);


#ifdef __cplusplus
};
#endif
#endif /* _MPCOM_ */
