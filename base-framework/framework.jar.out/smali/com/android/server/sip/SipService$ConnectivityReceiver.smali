.class Lcom/android/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
