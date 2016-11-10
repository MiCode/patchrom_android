.class Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
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
        "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
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
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;->this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResult(Landroid/service/carrier/CarrierMessagingService$SendSmsResult;)V
    .locals 3
    .param p1, "result"    # Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-virtual {p1}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->getSendStatus()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->getMessageRef()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/service/carrier/ICarrierMessagingCallback;->onSendSmsComplete(II)V

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
    check-cast p1, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;

    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;->onReceiveResult(Landroid/service/carrier/CarrierMessagingService$SendSmsResult;)V

    return-void
.end method
