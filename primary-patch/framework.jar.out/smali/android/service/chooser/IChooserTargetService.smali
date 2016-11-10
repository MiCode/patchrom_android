.class public interface abstract Landroid/service/chooser/IChooserTargetService;
.super Ljava/lang/Object;
.source "IChooserTargetService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/IChooserTargetService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
