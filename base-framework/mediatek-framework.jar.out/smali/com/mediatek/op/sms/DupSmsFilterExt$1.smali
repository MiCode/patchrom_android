.class Lcom/mediatek/op/sms/DupSmsFilterExt$1;
.super Landroid/os/Handler;
.source "DupSmsFilterExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/sms/DupSmsFilterExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/sms/DupSmsFilterExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/sms/DupSmsFilterExt;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt$1;->this$0:Lcom/mediatek/op/sms/DupSmsFilterExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt$1;->this$0:Lcom/mediatek/op/sms/DupSmsFilterExt;

    iget-object v1, v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mediatek/op/sms/DupSmsFilterExt;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "clear dup sms list"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt$1;->this$0:Lcom/mediatek/op/sms/DupSmsFilterExt;

    iget-object v0, v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt$1;->this$0:Lcom/mediatek/op/sms/DupSmsFilterExt;

    #calls: Lcom/mediatek/op/sms/DupSmsFilterExt;->sendClearMessage()V
    invoke-static {v0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->access$100(Lcom/mediatek/op/sms/DupSmsFilterExt;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
