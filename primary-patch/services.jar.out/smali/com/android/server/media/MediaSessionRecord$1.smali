.class Lcom/android/server/media/MediaSessionRecord$1;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$useSuggested:Z

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$previousFlagPlaySound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$useSuggested:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    const/high16 v1, -0x80000000

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$previousFlagPlaySound:I

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_0
.end method
