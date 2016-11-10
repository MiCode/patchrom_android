.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->removeUser(I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_0

    :goto_1
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->informListeners(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_1

    :goto_2
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->checkParoleTimeout()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v3}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->informParoleStateChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
