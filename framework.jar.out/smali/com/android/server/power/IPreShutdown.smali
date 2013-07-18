.class public interface abstract Lcom/android/server/power/IPreShutdown;
.super Ljava/lang/Object;
.source "IPreShutdown.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/IPreShutdown$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPowerOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
