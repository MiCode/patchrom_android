.class Lcom/android/server/net/NetworkStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method
