.class public interface abstract Landroid/media/IRemoteControlClient;
.super Ljava/lang/Object;
.source "IRemoteControlClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInformationRequested(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCurrentClientGenerationId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
