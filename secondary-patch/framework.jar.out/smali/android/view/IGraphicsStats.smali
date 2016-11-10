.class public interface abstract Landroid/view/IGraphicsStats;
.super Ljava/lang/Object;
.source "IGraphicsStats.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IGraphicsStats$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
