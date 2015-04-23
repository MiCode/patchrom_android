.class Lcom/android/server/location/GpsStatusListenerHelper$1;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$1;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

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
    check-cast p1, Landroid/location/IGpsStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$1;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
