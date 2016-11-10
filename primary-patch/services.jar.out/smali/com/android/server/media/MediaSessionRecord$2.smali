.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$302(Lcom/android/server/media/MediaSessionRecord;I)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)V

    :cond_0
    return-void

    .end local v0    # "needUpdate":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
