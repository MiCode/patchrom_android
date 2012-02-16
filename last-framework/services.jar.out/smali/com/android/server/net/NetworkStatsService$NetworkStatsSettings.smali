.class public interface abstract Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStatsSettings"
.end annotation


# virtual methods
.method public abstract getNetworkBucketDuration()J
.end method

.method public abstract getNetworkMaxHistory()J
.end method

.method public abstract getPersistThreshold()J
.end method

.method public abstract getPollInterval()J
.end method

.method public abstract getTagMaxHistory()J
.end method

.method public abstract getTimeCacheMaxAge()J
.end method

.method public abstract getUidBucketDuration()J
.end method

.method public abstract getUidMaxHistory()J
.end method
