.class public interface abstract Landroid/app/IANRManager;
.super Ljava/lang/Object;
.source "IANRManager.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final NOTIFY_LIGHTWEIGHT_ANR_TRANSACTION:I = 0x3

.field public static final NOTIFY_WNR_TRANSACTION:I = 0x2

.field public static final descriptor:Ljava/lang/String; = "android.app.IANRManager"


# virtual methods
.method public abstract notifyLightWeightANR(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyWNR(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
