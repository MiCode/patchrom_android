.class public interface abstract Landroid/media/audiopolicy/IAudioPolicyCallback;
.super Ljava/lang/Object;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyMixStateUpdate(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
