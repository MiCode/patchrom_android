.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v10, p1, Landroid/os/Message;->sendingUid:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$200(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget v9, p1, Landroid/os/Message;->what:I

    const v10, 0x27004

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v9

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Client connection failure, error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v9, p0, v10}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v10, p1, Landroid/os/Message;->sendingUid:I

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v9, v10, v0, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .local v2, "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v9, v9, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :pswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const-string v9, "Send failed, client connection lost"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v9, v9, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    goto :goto_0

    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to authorize app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v10, -0x4

    const-string v11, "Not authorized"

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v9, v9, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-nez v3, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find client info for message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v10, -0x2

    const-string v11, "Could not find listener"

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .local v8, "validCommands":[I
    move-object v1, v8

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget v4, v1, v6

    .local v4, "cmd":I
    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v9

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4    # "cmd":I
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v10, -0x3

    const-string v11, "Invalid request"

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x27000
        0x27002
        0x27003
        0x27015
        0x27016
        0x27006
        0x27007
        0x2700d
        0x2700b
        0x2700c
    .end array-data
.end method
