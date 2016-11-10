.class public interface abstract Landroid/service/carrier/ICarrierService;
.super Ljava/lang/Object;
.source "ICarrierService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
