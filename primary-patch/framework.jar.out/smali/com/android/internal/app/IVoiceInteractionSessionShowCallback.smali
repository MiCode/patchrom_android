.class public interface abstract Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionShowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
