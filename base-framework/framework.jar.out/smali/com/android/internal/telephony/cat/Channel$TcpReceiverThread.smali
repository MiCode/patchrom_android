.class public Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TcpReceiverThread"
.end annotation


# instance fields
.field di:Ljava/io/DataInputStream;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v6, 0x578

    new-array v1, v6, [B

    .local v1, localBuffer:[B
    const-string v6, "[BIP]"

    const-string v7, "TcpReceiverThread run"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    #getter for: Lcom/android/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cat/Channel;->access$000(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "[BIP]"

    const-string v7, "Before TcpReceiverThread: Receive data from network"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    .local v4, recvLen:I
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TcpReceiverThread: Receive data from network:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v7, v6, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v6, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRxBufferOffset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    if-nez v6, :cond_2

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v9, 0x0

    invoke-static {v1, v6, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v4, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TcpReceiverThread: buffer data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v4           #recvLen:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[BIP]"

    const-string v7, "Error in TcpReceiverThread"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .restart local v4       #recvLen:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v5, v6, [B

    .local v5, tmpBuffer:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, v8

    if-gt v4, v6, :cond_3

    move v3, v4

    .local v3, rSize:I
    :goto_3
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v1, v6, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int v2, v4, v6

    .local v2, nSize:I
    const-string v6, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v9, 0x0

    invoke-static {v5, v6, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v2, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto/16 :goto_1

    .end local v2           #nSize:I
    .end local v3           #rSize:I
    .end local v5           #tmpBuffer:[B
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v5       #tmpBuffer:[B
    :cond_3
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int v3, v6, v8

    goto :goto_3

    .end local v4           #recvLen:I
    .end local v5           #tmpBuffer:[B
    :cond_4
    :try_start_6
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    #getter for: Lcom/android/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cat/Channel;->access$000(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "[BIP]"

    const-string v7, "TcpReceiverThread: stop"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method
