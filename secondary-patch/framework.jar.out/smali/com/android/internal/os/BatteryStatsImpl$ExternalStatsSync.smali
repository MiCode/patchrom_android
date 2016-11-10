.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalStatsSync"
.end annotation


# virtual methods
.method public abstract scheduleCpuSyncDueToRemovedUid(I)V
.end method

.method public abstract scheduleSync(Ljava/lang/String;)V
.end method

.method public abstract scheduleWifiSync(Ljava/lang/String;)V
.end method
