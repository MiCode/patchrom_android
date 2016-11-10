.class Landroid/media/MediaDrm$EventHandler;
.super Landroid/os/Handler;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V
    .locals 0
    .param p2, "md"    # Landroid/media/MediaDrm;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mNativeContext:J
    invoke-static {v0}, Landroid/media/MediaDrm;->access$000(Landroid/media/MediaDrm;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-nez v0, :cond_1

    const-string v0, "MediaDrm"

    const-string v1, "MediaDrm went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_0

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .local v10, "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "sessionId":[B
    array-length v0, v2

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "data":[B
    array-length v0, v5

    if-nez v0, :cond_3

    const/4 v5, 0x0

    :cond_3
    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm event ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface/range {v0 .. v5}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    goto/16 :goto_0

    .end local v2    # "sessionId":[B
    .end local v5    # "data":[B
    .end local v10    # "parcel":Landroid/os/Parcel;
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_0

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .restart local v10    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2    # "sessionId":[B
    array-length v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # invokes: Landroid/media/MediaDrm;->keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    invoke-static {v0, v10}, Landroid/media/MediaDrm;->access$300(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v9

    .local v9, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .local v8, "hasNewUsableKey":Z
    :goto_1
    const-string v0, "MediaDrm"

    const-string v1, "Drm key status changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$200(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-interface {v0, v1, v2, v9, v8}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    goto/16 :goto_0

    .end local v8    # "hasNewUsableKey":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .end local v2    # "sessionId":[B
    .end local v9    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v10    # "parcel":Landroid/os/Parcel;
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_0

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Parcel;

    .restart local v10    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2    # "sessionId":[B
    array-length v0, v2

    if-lez v0, :cond_0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "expirationTime":J
    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm key expiration update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$400(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-interface {v0, v1, v2, v6, v7}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
