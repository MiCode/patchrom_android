.class public Lcom/android/server/wifi/WifiNative$BucketSettings;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketSettings"
.end annotation


# instance fields
.field band:I

.field bucket:I

.field channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

.field num_channels:I

.field period_ms:I

.field report_events:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
