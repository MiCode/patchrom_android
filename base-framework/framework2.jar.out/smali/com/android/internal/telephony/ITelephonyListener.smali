.class public interface abstract Lcom/android/internal/telephony/ITelephonyListener;
.super Ljava/lang/Object;
.source "ITelephonyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUpdate(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
