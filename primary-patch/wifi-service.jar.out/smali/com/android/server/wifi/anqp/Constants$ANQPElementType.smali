.class public final enum Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANQPElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPQueryList"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPCapabilityList"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPVenueName"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPEmergencyNumber"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPNwkAuthType"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPRoamingConsortium"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPIPAddrAvailability"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPNAIRealm"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQP3GPPNetwork"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPGeoLoc"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPCivicLoc"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPLocURI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPDomName"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPEmergencyAlert"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPTDLSCap"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPEmergencyNAI"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPNeighborReport"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "ANQPVendorSpec"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSQueryList"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSCapabilityList"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSFriendlyName"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSWANMetrics"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSConnCapability"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSNAIHomeRealmQuery"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSOperatingclass"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSOSUProviders"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSIconRequest"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const-string v1, "HSIconFile"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method
