.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/ITrustListener;

    # invokes: Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustManagerService;->access$1400(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/ITrustListener;

    # invokes: Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustManagerService;->access$1500(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V
    invoke-static {v1, v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;ZI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->requireCredentialEntry(I)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1800(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$800(Lcom/android/server/trust/TrustManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$802(Lcom/android/server/trust/TrustManagerService;I)I

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
