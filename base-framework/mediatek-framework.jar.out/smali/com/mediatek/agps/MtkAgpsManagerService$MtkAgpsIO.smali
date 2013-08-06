.class Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
.super Ljava/lang/Thread;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtkAgpsIO"
.end annotation


# instance fields
.field private buf:[B

.field private mDin:Ljava/io/DataInputStream;

.field private mEnabled:Z

.field private mId:I

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field private mTyp:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "socket_name"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mTyp:I

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mEnabled:Z

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    iput-object p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    return-void
.end method

.method private getNotifyString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "NOTIFY_ONLY"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "VERIFY_ALLOW_IF_NO_ANSWER"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string v0, "VERIFY_DENY_IF_NO_ANSWER"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string v0, "PRIVACY_OVERWRITE"

    goto :goto_0

    :cond_3
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private handleCancel()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v3, "handleCancel"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "cancel"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.mediatek.lbs.AgpsNotifyDialog"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleConfig(II)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfig type=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown config type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3200(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->cpMolrType:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3200(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3200(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleDialogMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "title"
    .parameter "msg"

    .prologue
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDialogMsg type=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] title=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] msg=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.agps.AGPS_DIALOG_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msg"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEm(I)V
    .locals 3
    .parameter "type"

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEm msg=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->getEmString(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->getEmString(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sendMsgToHandler(ILjava/lang/String;)V

    return-void
.end method

.method private handleErr(I)V
    .locals 3
    .parameter "type"

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErr msg=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->getErrString(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->getErrString(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sendMsgToHandler(ILjava/lang/String;)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method

.method private handleFakeGpsState(I)V
    .locals 3
    .parameter "off_on"

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFakeGpsState off_on=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->GpsState(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$300(Lcom/mediatek/agps/MtkAgpsManagerService;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleGps(I)V
    .locals 5
    .parameter "type"

    .prologue
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGps type=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, m:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMsg(Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "type"

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sendMsgToHandler(ILjava/lang/String;I)V

    return-void
.end method

.method private handleNotify(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter "requestId"
    .parameter "clientName"
    .parameter "sessionId"

    .prologue
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNotify type[="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->getNotifyString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] requestId=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] clientName=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] id=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v3, "send intent to LocationController for hiding GPS icon"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.PRIVACY_OVERWRITE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "request_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "client_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.mediatek.lbs.AgpsNotifyDialog"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerToast msg=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sendMsgToHandler(ILjava/lang/String;)V

    return-void
.end method

.method private handleUserResp(I)V
    .locals 5
    .parameter "resp"

    .prologue
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUserResp resp=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user resp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "resp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.mediatek.lbs.AgpsNotifyDialog"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "resp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readNextString(I)Ljava/lang/String;
    .locals 3
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    new-array v0, p1, [B

    .local v0, tmpBuf:[B
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .end local v0           #tmpBuf:[B
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendMsgToHandler(ILjava/lang/String;)V
    .locals 3
    .parameter "what"
    .parameter "msg"

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMsgToHandler(ILjava/lang/String;I)V
    .locals 3
    .parameter "what"
    .parameter "msg"
    .parameter "type"

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public IsOutputReady()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "OutputStream is not ready!!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connectSocket()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has already been connected.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, addr:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "afer connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$400(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.agps.toast"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iput-boolean v2, v3, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    goto/16 :goto_0

    .end local v0           #addr:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->disconnSocket()V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public disconnSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mSocket:Landroid/net/LocalSocket;

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final readFully([B)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    :goto_0
    iget-boolean v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mEnabled:Z

    if-eqz v9, :cond_3

    :try_start_0
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "reading..."

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readInt()I

    move-result v0

    .local v0, cmd:I
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readInt()I

    move-result v3

    .local v3, field1:I
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readInt()I

    move-result v4

    .local v4, field2:I
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readInt()I

    move-result v5

    .local v5, field3:I
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readInt()I

    move-result v6

    .local v6, field4:I
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cmd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " f1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " f2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " f3="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " f4="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "ERR: unknown cmd recv in MtkAgpsIO"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Unknown cmd recv"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cmd:I
    .end local v3           #field1:I
    .end local v4           #field2:I
    .end local v5           #field3:I
    .end local v6           #field4:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iput-boolean v12, v9, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->disconnSocket()V

    :try_start_1
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "before waiting 500 ms"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sleep(J)V

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "after waiting 500 ms"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/4 v7, 0x0

    .local v7, isSuccess:Z
    const/4 v8, 0x0

    .local v8, reconnect_num:I
    :cond_0
    :goto_2
    if-nez v7, :cond_1

    const/16 v9, 0x14

    if-ge v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->connectSocket()Z

    move-result v7

    add-int/lit8 v8, v8, 0x1

    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reconnected to Socket fail, reconnect times is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const-wide/16 v9, 0x3e8

    :try_start_2
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .end local v7           #isSuccess:Z
    .end local v8           #reconnect_num:I
    .restart local v0       #cmd:I
    .restart local v3       #field1:I
    .restart local v4       #field2:I
    .restart local v5       #field3:I
    .restart local v6       #field4:I
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleEm(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleNotify(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleErr(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleCancel()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleMsg(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleGps(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleConfig(II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleUserResp(I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleFakeGpsState(I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->readNextString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->handleDialogMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v0           #cmd:I
    .end local v3           #field1:I
    .end local v4           #field2:I
    .end local v5           #field3:I
    .end local v6           #field4:I
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2       #ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2           #ex:Ljava/lang/InterruptedException;
    .restart local v7       #isSuccess:Z
    .restart local v8       #reconnect_num:I
    :cond_1
    if-nez v7, :cond_2

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "ERR: reconnected to Socket fail!  MtkAgpsManagerService thread forced to exit!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iput-boolean v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mEnabled:Z

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z
    invoke-static {v9, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "reconnected to Socket OK!   Initialize mtk_agpsd\'s Status !"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->updateAllCurrnetConfig2Agpsd()V
    invoke-static {v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$3500(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #isSuccess:Z
    .end local v8           #reconnect_num:I
    :cond_3
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v10, "ERR: exit while loop, agpsd cannot be connected"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
    .end packed-switch
.end method

.method public stopReading()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mEnabled:Z

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "MtkAgpsIO will stop reading.."

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeBytes([B)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    and-int v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    and-long v0, p1, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->mOut:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
