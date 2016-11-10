.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ClientHandler got"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .local v4, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-nez v4, :cond_3

    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find client info for message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const/4 v10, -0x3

    const-string v11, "Could not find listener"

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .end local v4    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .local v2, "c":Lcom/android/internal/util/AsyncChannel;
    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New client listening to asynchronous messages: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v9, v2, v10}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .local v3, "cInfo":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v2    # "c":Lcom/android/internal/util/AsyncChannel;
    .end local v3    # "cInfo":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_1
    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Client connection failure, error="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v12, :cond_2

    const-string v9, "RttService"

    const-string v10, "Send failed, client connection lost"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "closing client "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .restart local v4    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    goto/16 :goto_0

    .end local v4    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_2
    const-string v9, "RttService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Client connection lost with reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$100(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v9, p0, v10}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .restart local v4    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_3
    new-array v8, v12, [I

    fill-array-data v8, :array_0

    .local v8, "validCommands":[I
    move-object v1, v8

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_5

    aget v5, v1, v6

    .local v5, "cmd":I
    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    invoke-static {v9}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$200(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v9

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v5    # "cmd":I
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const/4 v10, -0x4

    const-string v11, "Invalid request"

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x27200
        0x27201
    .end array-data
.end method
