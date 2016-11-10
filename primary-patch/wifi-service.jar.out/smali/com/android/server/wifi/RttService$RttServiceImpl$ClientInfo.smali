.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mMessenger:Landroid/os/Messenger;

.field mRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 1
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object p3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z
    .locals 4
    .param p1, "key"    # I
    .param p2, "parcelableParams"    # Landroid/net/wifi/RttManager$ParcelableRttParams;

    .prologue
    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p2, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    .local v0, "params":[Landroid/net/wifi/RttManager$RttParams;
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/server/wifi/RttService$1;)V

    .local v1, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    iput-object p0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iput-object v0, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method cleanup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method removeRttRequest(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reportAborted(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    return-void
.end method

.method reportFailed(IILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27202

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    iget-object v0, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(IILjava/lang/String;)V

    return-void
.end method

.method reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 5
    .param p1, "request"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .param p2, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    .prologue
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {v0, p2}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27203

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mRequests:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
