.class public Landroid/net/wifi/RttManager$RttResult;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttResult"
.end annotation


# instance fields
.field public LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

.field public LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

.field public bssid:Ljava/lang/String;

.field public burstDuration:I

.field public burstNumber:I

.field public distance:I

.field public distanceSpread:I

.field public distanceStandardDeviation:I

.field public distance_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public distance_sd_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public distance_spread_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public frameNumberPerBurstPeer:I

.field public measurementFrameNumber:I

.field public measurementType:I

.field public negotiatedBurstNum:I

.field public requestType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public retryAfterDuration:I

.field public rssi:I

.field public rssiSpread:I

.field public rssi_spread:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtt:J

.field public rttSpread:J

.field public rttStandardDeviation:J

.field public rtt_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtt_sd_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtt_spread_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rxRate:I

.field public status:I

.field public successMeasurementFrameNumber:I

.field public ts:J

.field public txRate:I

.field public tx_rate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
