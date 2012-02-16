.class public interface abstract Landroid/net/NetworkStateTracker;
.super Ljava/lang/Object;
.source "NetworkStateTracker.java"


# static fields
.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x3

.field public static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x6

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field public static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field public static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1


# virtual methods
.method public abstract defaultRouteSet(Z)V
.end method

.method public abstract getLinkCapabilities()Landroid/net/LinkCapabilities;
.end method

.method public abstract getLinkProperties()Landroid/net/LinkProperties;
.end method

.method public abstract getNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isDefaultRouteSet()Z
.end method

.method public abstract isPrivateDnsRouteSet()Z
.end method

.method public abstract isTeardownRequested()Z
.end method

.method public abstract privateDnsRouteSet(Z)V
.end method

.method public abstract reconnect()Z
.end method

.method public abstract setDependencyMet(Z)V
.end method

.method public abstract setPolicyDataEnable(Z)V
.end method

.method public abstract setRadio(Z)Z
.end method

.method public abstract setTeardownRequested(Z)V
.end method

.method public abstract setUserDataEnable(Z)V
.end method

.method public abstract startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract teardown()Z
.end method
