.class public interface abstract Lcom/android/internal/app/IAssistScreenshotReceiver;
.super Ljava/lang/Object;
.source "IAssistScreenshotReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
