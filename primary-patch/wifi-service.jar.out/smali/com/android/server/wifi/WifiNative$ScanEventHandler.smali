.class public interface abstract Lcom/android/server/wifi/WifiNative$ScanEventHandler;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanEventHandler"
.end annotation


# virtual methods
.method public abstract onFullScanResult(Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
.end method

.method public abstract onScanRestarted()V
.end method

.method public abstract onScanResultsAvailable()V
.end method

.method public abstract onScanStatus()V
.end method
