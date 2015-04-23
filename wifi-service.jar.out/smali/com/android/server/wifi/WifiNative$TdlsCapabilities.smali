.class public Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TdlsCapabilities"
.end annotation


# instance fields
.field isGlobalTdlsSupported:Z

.field isOffChannelTdlsSupported:Z

.field isPerMacTdlsSupported:Z

.field maxConcurrentTdlsSessionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
