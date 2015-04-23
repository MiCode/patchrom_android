.class Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/carrier/CarrierMessagingService$ResultCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

.field final synthetic val$callback:Landroid/service/carrier/ICarrierMessagingCallback;


# direct methods
.method constructor <init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;->this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResult(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/service/carrier/ICarrierMessagingCallback;->onDownloadMmsComplete(I)V

    return-void
.end method

.method public bridge synthetic onReceiveResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;->onReceiveResult(Ljava/lang/Integer;)V

    return-void
.end method
