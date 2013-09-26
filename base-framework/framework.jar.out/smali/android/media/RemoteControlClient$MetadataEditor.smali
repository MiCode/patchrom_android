.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataChanged:Z

.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #setter for: Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$702(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #setter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$802(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iget-boolean v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$900(Landroid/media/RemoteControlClient;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t clear a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .parameter "key"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .end local p0
    .local v0, this:Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .end local v0           #this:Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0
    :cond_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I
    invoke-static {v2}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;)I

    move-result v2

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I
    invoke-static {v3}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;)I

    move-result v3

    #calls: Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v1, p2, v2, v3}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    move-object v0, p0

    .end local p0
    .restart local v0       #this:Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0

    .end local v0           #this:Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0
    :cond_2
    iput-object p2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .end local p0
    .local v0, this:Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .end local v0           #this:Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/media/RemoteControlClient;->access$200()[I

    move-result-object v1

    #calls: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'long\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .end local p0
    .restart local v0       #this:Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .end local p0
    .local v0, this:Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .end local v0           #this:Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/media/RemoteControlClient;->access$000()[I

    move-result-object v1

    #calls: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'String\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .end local p0
    .restart local v0       #this:Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0
.end method
