.class interface abstract Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ActiveWakeLock"
.end annotation


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract isHeld()Z
.end method

.method public abstract release()V
.end method
