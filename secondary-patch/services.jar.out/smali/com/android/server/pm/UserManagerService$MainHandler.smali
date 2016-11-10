.class final Lcom/android/server/pm/UserManagerService$MainHandler;
.super Landroid/os/Handler;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V

    :cond_0
    monitor-exit v3

    goto :goto_0

    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
