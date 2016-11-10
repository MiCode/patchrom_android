.class public interface abstract Landroid/app/ITaskStackListener;
.super Ljava/lang/Object;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTaskStackChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
