.class Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxAvoidTime"
.end annotation


# instance fields
.field public final MIN_RSSI_DBM:I

.field public final TIME_MS:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "rssi"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    iput p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    return-void
.end method
