.class Lcom/android/server/ThrottleService$2;
.super Landroid/content/BroadcastReceiver;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ThrottleService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method constructor <init>(Lcom/android/server/ThrottleService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ThrottleService$2;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$2;->this$0:Lcom/android/server/ThrottleService;

    invoke-virtual {v0}, Lcom/android/server/ThrottleService;->dispatchReset()V

    return-void
.end method
