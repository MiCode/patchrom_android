.class Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GpsMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusChangedOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->mStatus:I

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGpsMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    check-cast p1, Landroid/location/IGpsMeasurementsListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;->execute(Landroid/location/IGpsMeasurementsListener;)V

    return-void
.end method
