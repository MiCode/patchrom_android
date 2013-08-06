.class Lcom/mediatek/agps/MtkAgpsManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .local v4, niData:[B
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->isGpsAvailable()Z
    invoke-static {v11}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "GPS settings is disabled by user, reject this SMS!!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v11, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPort()I

    move-result v7

    .local v7, port:I
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received sms on port number:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", while profile port:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    invoke-static {v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v13

    iget v13, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/4 v11, -0x1

    if-ne v7, v11, :cond_1

    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "ERR: Received SMS port number is undefined"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v11, 0x1c6b

    if-eq v7, v11, :cond_2

    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    invoke-static {v11}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v11

    iget v11, v11, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    if-ne v7, v11, :cond_7

    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    const-string v11, "pdus"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .local v6, pdu_messages:[Ljava/lang/Object;
    if-eqz v6, :cond_4

    array-length v11, v6

    new-array v8, v11, [Landroid/telephony/SmsMessage;

    .local v8, smsMessage:[Landroid/telephony/SmsMessage;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x100

    invoke-direct {v5, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v5, output_buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    array-length v11, v6

    if-ge v3, v11, :cond_3

    aget-object v11, v6, v3

    check-cast v11, [B

    check-cast v11, [B

    invoke-static {v11}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    aput-object v11, v8, v3

    aget-object v11, v8, v3

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v9

    .local v9, temp_data:[B
    const/4 v11, 0x0

    array-length v12, v9

    invoke-virtual {v5, v9, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v9           #temp_data:[B
    :cond_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .end local v3           #n:I
    .end local v5           #output_buffer:Ljava/io/ByteArrayOutputStream;
    .end local v6           #pdu_messages:[Ljava/lang/Object;
    .end local v8           #smsMessage:[Landroid/telephony/SmsMessage;
    :goto_2
    if-eqz v4, :cond_6

    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "received SMS message data"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I
    invoke-static {v11, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received error data in NI SMS message:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v6       #pdu_messages:[Ljava/lang/Object;
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "ERR: Retrieved null pdus from bundle of NI request intent!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_2

    .end local v6           #pdu_messages:[Ljava/lang/Object;
    :cond_5
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "ERR: Retrieved null bundle from SMS message intent of NI request!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v12, "ERR: Received null data in SMS message"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_7
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERR: Received sms on unexpected port:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7           #port:I
    .end local v10           #uri:Landroid/net/Uri;
    :cond_8
    iget-object v11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERR: Received SMS with unexpected intent action:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
