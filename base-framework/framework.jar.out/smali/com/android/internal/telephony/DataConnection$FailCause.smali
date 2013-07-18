.class public final enum Lcom/android/internal/telephony/DataConnection$FailCause;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$FailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum BCM_VIOLATION:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REACTIVATION_REQUESTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnection$FailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x1a

    const/16 v11, 0x19

    const/16 v10, 0x18

    const/16 v9, 0x8

    const/4 v8, 0x0

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v8, v8}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "OPERATOR_BARRED"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v9}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MBMS_CAPABILITIES_INSUFFICIENT"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v10}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "LLC_SNDCP_FAILURE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v11}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "INSUFFICIENT_RESOURCES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v12}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MISSING_UNKNOWN_APN"

    const/4 v6, 0x5

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v6, 0x6

    const/16 v7, 0x1c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "USER_AUTHENTICATION"

    const/4 v6, 0x7

    const/16 v7, 0x1d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ACTIVATION_REJECT_GGSN"

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v9, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ACTIVATION_REJECT_UNSPECIFIED"

    const/16 v6, 0x9

    const/16 v7, 0x1f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v6, 0xa

    const/16 v7, 0x20

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v6, 0xb

    const/16 v7, 0x21

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v6, 0xc

    const/16 v7, 0x22

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "NSAPI_IN_USE"

    const/16 v6, 0xd

    const/16 v7, 0x23

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "REGULAR_DEACTIVATION"

    const/16 v6, 0xe

    const/16 v7, 0x24

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "QOS_NOT_ACCEPTED"

    const/16 v6, 0xf

    const/16 v7, 0x25

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "NETWORK_FAILURE"

    const/16 v6, 0x10

    const/16 v7, 0x26

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "REACTIVATION_REQUESTED"

    const/16 v6, 0x11

    const/16 v7, 0x27

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->REACTIVATION_REQUESTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "FEATURE_NOT_SUPPORTED"

    const/16 v6, 0x12

    const/16 v7, 0x28

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SEMANTIC_ERROR_IN_TFT"

    const/16 v6, 0x13

    const/16 v7, 0x29

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SYNTACTICAL_ERROR_IN_TFT"

    const/16 v6, 0x14

    const/16 v7, 0x2a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNKNOWN_PDP_CONTEXT"

    const/16 v6, 0x15

    const/16 v7, 0x2b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SEMANTIC_ERROR_IN_PACKET_FILTER"

    const/16 v6, 0x16

    const/16 v7, 0x2c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SYNTACTICAL_ERROR_IN_PACKET_FILTER"

    const/16 v6, 0x17

    const/16 v7, 0x2d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED"

    const/16 v6, 0x2e

    invoke-direct {v4, v5, v10, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MULTICAST_GROUP_MEMBERSHIP_TIMEOUT"

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v11, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "BCM_VIOLATION"

    const/16 v6, 0x30

    invoke-direct {v4, v5, v12, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->BCM_VIOLATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_IPV4_ALLOWED"

    const/16 v6, 0x1b

    const/16 v7, 0x32

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_IPV6_ALLOWED"

    const/16 v6, 0x1c

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v6, 0x1d

    const/16 v7, 0x34

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "COLLISION_WITH_NW_INITIATED_REQUEST"

    const/16 v6, 0x1e

    const/16 v7, 0x38

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "BEARER_HANDLING_NOT_SUPPORT"

    const/16 v6, 0x1f

    const/16 v7, 0x3c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MAX_PDP_NUMBER_REACHED"

    const/16 v6, 0x20

    const/16 v7, 0x41

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "APN_NOT_SUPPORT_IN_RAT_PLMN"

    const/16 v6, 0x21

    const/16 v7, 0x42

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "INVALID_TRANSACTION_ID_VALUE"

    const/16 v6, 0x22

    const/16 v7, 0x51

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SEMENTICALLY_INCORRECT_MESSAGE"

    const/16 v6, 0x23

    const/16 v7, 0x5f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "INVALID_MANDATORY_INFO"

    const/16 v6, 0x24

    const/16 v7, 0x60

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED"

    const/16 v6, 0x25

    const/16 v7, 0x61

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    const/16 v6, 0x26

    const/16 v7, 0x62

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED"

    const/16 v6, 0x27

    const/16 v7, 0x63

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "CONDITIONAL_IE_ERROR"

    const/16 v6, 0x28

    const/16 v7, 0x64

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    const/16 v6, 0x29

    const/16 v7, 0x65

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PROTOCOL_ERRORS"

    const/16 v6, 0x2a

    const/16 v7, 0x6f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT"

    const/16 v6, 0x2b

    const/16 v7, 0x70

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "REGISTRATION_FAIL"

    const/16 v6, 0x2c

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "GPRS_REGISTRATION_FAIL"

    const/16 v6, 0x2d

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SIGNAL_LOST"

    const/16 v6, 0x2e

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PREF_RADIO_TECH_CHANGED"

    const/16 v6, 0x2f

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "RADIO_POWER_OFF"

    const/16 v6, 0x30

    const/4 v7, -0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "TETHERED_CALL_ACTIVE"

    const/16 v6, 0x31

    const/4 v7, -0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ERROR_UNSPECIFIED"

    const/16 v6, 0x32

    const v7, 0xffff

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNKNOWN"

    const/16 v6, 0x33

    const/high16 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "RADIO_NOT_AVAILABLE"

    const/16 v6, 0x34

    const v7, 0x10001

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNACCEPTABLE_NETWORK_PARAMETER"

    const/16 v6, 0x35

    const v7, 0x10002

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const/16 v6, 0x36

    const v7, 0x10003

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/DataConnection$FailCause;

    const/16 v4, 0x37

    new-array v4, v4, [Lcom/android/internal/telephony/DataConnection$FailCause;

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v9

    const/16 v5, 0x9

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->REACTIVATION_REQUESTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v11

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->BCM_VIOLATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v12

    const/16 v5, 0x1b

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x24

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x25

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x26

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x27

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x28

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x29

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x30

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x31

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x32

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x33

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x34

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x35

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x36

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/DataConnection$FailCause;->values()[Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataConnection$FailCause;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/DataConnection$FailCause;->mErrorCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 3
    .parameter "errorCode"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    .local v0, fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$FailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnection$FailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
