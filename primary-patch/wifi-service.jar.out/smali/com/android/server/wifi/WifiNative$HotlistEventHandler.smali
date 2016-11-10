.class public interface abstract Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HotlistEventHandler"
.end annotation


# virtual methods
.method public abstract onHotlistApFound([Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract onHotlistApLost([Landroid/net/wifi/ScanResult;)V
.end method
