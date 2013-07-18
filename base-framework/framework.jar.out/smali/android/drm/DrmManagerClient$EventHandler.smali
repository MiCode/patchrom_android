.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .local v5, event:Landroid/drm/DrmEvent;
    const/4 v4, 0x0

    .local v4, error:Landroid/drm/DrmErrorEvent;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    const-string v10, "DrmManagerClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/drm/DrmInfo;

    .local v2, drmInfo:Landroid/drm/DrmInfo;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v11}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v11

    #calls: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v10, v11, v2}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v9

    .local v9, status:Landroid/drm/DrmInfoStatus;
    const-string v10, "drm_info_status_object"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "drm_info_object"

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_2

    const/4 v10, 0x1

    iget v11, v9, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v10, v11, :cond_2

    new-instance v5, Landroid/drm/DrmEvent;

    .end local v5           #event:Landroid/drm/DrmEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v12, v9, Landroid/drm/DrmInfoStatus;->infoType:I

    #calls: Landroid/drm/DrmManagerClient;->getEventType(I)I
    invoke-static {v11, v12}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v5, v10, v11, v12, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v9           #status:Landroid/drm/DrmInfoStatus;
    .restart local v5       #event:Landroid/drm/DrmEvent;
    :goto_1
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v10

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v10, v11, v5}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    :cond_1
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v10, v11, v4}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    .restart local v2       #drmInfo:Landroid/drm/DrmInfo;
    .restart local v9       #status:Landroid/drm/DrmInfoStatus;
    :cond_2
    if-eqz v9, :cond_3

    iget v6, v9, Landroid/drm/DrmInfoStatus;->infoType:I

    .local v6, infoType:I
    :goto_2
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4           #error:Landroid/drm/DrmErrorEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #calls: Landroid/drm/DrmManagerClient;->getErrorType(I)I
    invoke-static {v11, v6}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v4, v10, v11, v12, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .restart local v4       #error:Landroid/drm/DrmErrorEvent;
    goto :goto_1

    .end local v6           #infoType:I
    :cond_3
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v6

    goto :goto_2

    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v9           #status:Landroid/drm/DrmInfoStatus;
    :sswitch_1
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v11}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v11

    #calls: Landroid/drm/DrmManagerClient;->_removeAllRights(I)I
    invoke-static {v10, v11}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v10

    if-nez v10, :cond_4

    new-instance v5, Landroid/drm/DrmEvent;

    .end local v5           #event:Landroid/drm/DrmEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    const/16 v11, 0x3e9

    const/4 v12, 0x0

    invoke-direct {v5, v10, v11, v12}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .restart local v5       #event:Landroid/drm/DrmEvent;
    goto :goto_1

    :cond_4
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4           #error:Landroid/drm/DrmErrorEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    const/16 v11, 0x7d7

    const/4 v12, 0x0

    invoke-direct {v4, v10, v11, v12}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .restart local v4       #error:Landroid/drm/DrmErrorEvent;
    goto :goto_1

    :sswitch_2
    const-string v10, "DrmManagerClient"

    const-string v11, "event handler processes extra drm info. >>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/drm/DrmInfo;

    .restart local v2       #drmInfo:Landroid/drm/DrmInfo;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v11}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v11

    #calls: Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    invoke-static {v10, v11, v2}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v9

    .restart local v9       #status:Landroid/drm/DrmInfoStatus;
    const-string v10, "drm_info_status_object"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "drm_info_object"

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v10}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v1

    .local v1, data:[B
    const/4 v7, 0x0

    .local v7, message:Ljava/lang/String;
    if-eqz v1, :cond_5

    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-direct {v8, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #message:Ljava/lang/String;
    .local v8, message:Ljava/lang/String;
    :try_start_1
    const-string v10, "DrmManagerClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extra drm info returned message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .end local v8           #message:Ljava/lang/String;
    .restart local v7       #message:Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    const/4 v10, 0x1

    iget v11, v9, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v10, v11, :cond_6

    new-instance v5, Landroid/drm/DrmEvent;

    .end local v5           #event:Landroid/drm/DrmEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    iget v11, v9, Landroid/drm/DrmInfoStatus;->infoType:I

    invoke-direct {v5, v10, v11, v7, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .restart local v5       #event:Landroid/drm/DrmEvent;
    goto/16 :goto_1

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    const-string v10, "DrmManagerClient"

    const-string v11, "Unsupported encoding type"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    if-eqz v9, :cond_7

    iget v6, v9, Landroid/drm/DrmInfoStatus;->infoType:I

    .restart local v6       #infoType:I
    :goto_5
    new-instance v4, Landroid/drm/DrmErrorEvent;

    .end local v4           #error:Landroid/drm/DrmErrorEvent;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUniqueId:I
    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    invoke-direct {v4, v10, v6, v7, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .restart local v4       #error:Landroid/drm/DrmErrorEvent;
    goto/16 :goto_1

    .end local v6           #infoType:I
    :cond_7
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v6

    goto :goto_5

    .end local v7           #message:Ljava/lang/String;
    .restart local v8       #message:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8           #message:Ljava/lang/String;
    .restart local v7       #message:Ljava/lang/String;
    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
        0x7d1 -> :sswitch_2
    .end sparse-switch
.end method
