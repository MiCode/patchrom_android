.class public interface abstract Landroid/service/gatekeeper/IGateKeeperService;
.super Ljava/lang/Object;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearSecureUserId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSecureUserId(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
