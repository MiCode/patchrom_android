.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_FAILED_DUE_TO_RADIO_OFF:I = 0x62

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_CMMAIL:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DISABLE_ONGOING:I = 0x64

.field public static final APN_TYPE_DM:Ljava/lang/String; = "dm"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NET:Ljava/lang/String; = "net"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_NOT_AVAILABLE_DUE_TO_RECORDS_NOT_LOADED:I = 0x63

.field public static final APN_TYPE_RCSE:Ljava/lang/String; = "rcse"

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final CFU_QUERY_TYPE_DEF_VALUE:Ljava/lang/String; = "0"

.field public static final CFU_QUERY_TYPE_PROP:Ljava/lang/String; = "ril.cfu.querytype"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_LINK_CAPABILITIES_KEY:Ljava/lang/String; = "linkCapabilities"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final GEMINI_DEFAULT_SIM_PROP:Ljava/lang/String; = "persist.radio.default_sim"

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_3:I = 0x2

.field public static final GEMINI_SIM_4:I = 0x3

.field public static final GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

#the value of this static final field might be set in the static constructor
.field public static final GEMINI_SIM_NUM:I = 0x0

.field public static final GEMINI_SIM_NUM_PROP:Ljava/lang/String; = "persist.gemini.sim_num"

.field public static final GEMINI_SIP_CALL:I = -0x1

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MULTI_SIM_ID_KEY:Ljava/lang/String; = "simid"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GEMINI:I = 0x4

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static PRESENTATION_ALLOWED:I = 0x0

.field public static PRESENTATION_PAYPHONE:I = 0x0

.field public static PRESENTATION_RESTRICTED:I = 0x0

.field public static PRESENTATION_UNKNOWN:I = 0x0

.field public static final REASON_GPRS_ATTACHED_TIMEOUT:Ljava/lang/String; = "gprsAttachedTimeout"

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final REASON_NO_SUCH_PDP:Ljava/lang/String; = "noSuchPdp"

.field public static final REASON_ON_RADIO_AVAILABLE:Ljava/lang/String; = "onRadioAvailable"

.field public static final REASON_ON_RECORDS_LOADED:Ljava/lang/String; = "onRecordsLoaded"

.field public static final REASON_PDP_NOT_ACTIVE:Ljava/lang/String; = "pdpNotActive"

.field public static final REASON_POLL_STATE_DONE:Ljava/lang/String; = "pollStateDone"

.field public static final SIM_INDICATOR_ABSENT:I = 0x0

.field public static final SIM_INDICATOR_CONNECTED:I = 0x7

.field public static final SIM_INDICATOR_INVALID:I = 0x3

.field public static final SIM_INDICATOR_LOCKED:I = 0x2

.field public static final SIM_INDICATOR_NORMAL:I = 0x5

.field public static final SIM_INDICATOR_RADIOOFF:I = 0x1

.field public static final SIM_INDICATOR_ROAMING:I = 0x6

.field public static final SIM_INDICATOR_ROAMINGCONNECTED:I = 0x8

.field public static final SIM_INDICATOR_SEARCHING:I = 0x4

.field public static final SIM_INDICATOR_UNKNOWN:I = -0x1

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final TOTAL_SIM_COLOR_COUNT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const-string v0, "persist.gemini.sim_num"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sput v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
