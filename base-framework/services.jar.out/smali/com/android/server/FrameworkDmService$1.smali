.class Lcom/android/server/FrameworkDmService$1;
.super Landroid/content/BroadcastReceiver;
.source "FrameworkDmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FrameworkDmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FrameworkDmService;


# direct methods
.method constructor <init>(Lcom/android/server/FrameworkDmService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/FrameworkDmService$1;->this$0:Lcom/android/server/FrameworkDmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FrameworkDmService$1;->this$0:Lcom/android/server/FrameworkDmService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FrameworkDmService$1;->this$0:Lcom/android/server/FrameworkDmService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I

    goto :goto_0
.end method
