.class public abstract Landroid/media/videoeditor/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = -0x1

.field public static final RENDERING_MODE_BLACK_BORDER:I = 0x0

.field public static final RENDERING_MODE_CROPPING:I = 0x2

.field public static final RENDERING_MODE_STRETCH:I = 0x1


# instance fields
.field protected mBeginTransition:Landroid/media/videoeditor/Transition;

.field private mBlankFrameFilename:Ljava/lang/String;

.field private mBlankFrameGenerated:Z

.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndTransition:Landroid/media/videoeditor/Transition;

.field protected final mFilename:Ljava/lang/String;

.field protected mGeneratedImageClip:Ljava/lang/String;

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectPath:Ljava/lang/String;

.field protected mRegenerateClip:Z

.field private mRenderingMode:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MediaItem : filename is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-wide v1, 0x80000000L

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File size is more than 2GB"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    iput p4, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    move-object v1, p1

    check-cast v1, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v1}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    iput-boolean v6, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .locals 5
    .parameter "effect"

    .prologue
    const/4 v4, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL effect cannot be applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Effect start time + effect duration > media clip duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    :cond_4
    return-void
.end method

.method public addOverlay(Landroid/media/videoeditor/Overlay;)V
    .locals 8
    .parameter "overlay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "NULL Overlay cannot be applied"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    if-eq v4, p0, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Media item mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overlay already exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay start time + overlay duration > media clip duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    instance-of v4, p1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v4, :cond_8

    move-object v1, p1

    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    .local v1, frame:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual {v1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay bitmap not specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    instance-of v4, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v3

    .local v3, scaledWidth:I
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v2

    .local v2, scaledHeight:I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_7

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bitmap dimensions must match media item dimensions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2           #scaledHeight:I
    .end local v3           #scaledWidth:I
    :cond_6
    move-object v4, p0

    check-cast v4, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    .restart local v3       #scaledWidth:I
    move-object v4, p0

    check-cast v4, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    .restart local v2       #scaledHeight:I
    goto :goto_0

    :cond_7
    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    move-object v4, p1

    check-cast v4, Landroid/media/videoeditor/OverlayFrame;

    iget-object v5, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    return-void

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #frame:Landroid/media/videoeditor/OverlayFrame;
    .end local v2           #scaledHeight:I
    .end local v3           #scaledWidth:I
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected adjustTransitions()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .local v0, maxDurationMs:J
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .end local v0           #maxDurationMs:J
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .restart local v0       #maxDurationMs:J
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .end local v0           #maxDurationMs:J
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    instance-of v0, p1, Landroid/media/videoeditor/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    .end local p1
    iget-object v1, p1, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 14
    .parameter "clipSettings"

    .prologue
    const/16 v13, 0x40

    const/4 v12, 0x0

    iget-boolean v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    if-nez v10, :cond_1

    const/16 v8, 0x40

    .local v8, mWidth:I
    const/16 v7, 0x40

    .local v7, mHeight:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ghost.rgb"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    const/4 v3, 0x0

    .local v3, fl:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3           #fl:Ljava/io/FileOutputStream;
    .local v4, fl:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fl:Ljava/io/FileOutputStream;
    .restart local v3       #fl:Ljava/io/FileOutputStream;
    :goto_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    new-array v5, v8, [I

    .local v5, framingBuffer:[I
    array-length v10, v5

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .local v0, array:[B
    const/4 v9, 0x0

    .local v9, tmp:I
    :goto_1
    if-ge v9, v7, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .local v6, intBuffer:Ljava/nio/IntBuffer;
    invoke-virtual {v6, v5, v12, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6           #intBuffer:Ljava/nio/IntBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    .end local v0           #array:[B
    .end local v1           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fl:Ljava/io/FileOutputStream;
    .end local v5           #framingBuffer:[I
    .end local v7           #mHeight:I
    .end local v8           #mWidth:I
    .end local v9           #tmp:I
    :cond_1
    iget-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    iput-object v10, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 v10, 0x5

    iput v10, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    iput v13, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    iput v13, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-void

    .restart local v0       #array:[B
    .restart local v1       #byteBuffer:Ljava/nio/ByteBuffer;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fl:Ljava/io/FileOutputStream;
    .restart local v5       #framingBuffer:[I
    .restart local v6       #intBuffer:Ljava/nio/IntBuffer;
    .restart local v7       #mHeight:I
    .restart local v8       #mWidth:I
    .restart local v9       #tmp:I
    :catch_0
    move-exception v10

    goto :goto_2

    .end local v6           #intBuffer:Ljava/nio/IntBuffer;
    :catch_1
    move-exception v10

    goto :goto_3

    .end local v0           #array:[B
    .end local v1           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v5           #framingBuffer:[I
    .end local v9           #tmp:I
    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method public getAllEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public getAllOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method public abstract getAspectRatio()I
.end method

.method public getBeginTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, mVI:Landroid/media/videoeditor/MediaVideoItem;
    const/4 v1, 0x0

    .local v1, mII:Landroid/media/videoeditor/MediaImageItem;
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .local v0, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    instance-of v3, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v3, p0, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getDuration()J
.end method

.method public getEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 3
    .parameter "effectId"

    .prologue
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .local v0, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method public abstract getFileType()I
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method getGeneratedImageClip()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 3
    .parameter "overlayId"

    .prologue
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .local v1, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #overlay:Landroid/media/videoeditor/Overlay;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRegenerateClip()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    return v0
.end method

.method public abstract getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;
    .locals 13
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move/from16 v0, p7

    new-array v11, v0, [Landroid/graphics/Bitmap;

    .local v11, bitmaps:[Landroid/graphics/Bitmap;
    move/from16 v0, p7

    new-array v9, v0, [I

    .local v9, indices:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, p7

    if-ge v12, v0, :cond_0

    aput v12, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Landroid/media/videoeditor/MediaItem$1;

    invoke-direct {v10, p0, v11}, Landroid/media/videoeditor/MediaItem$1;-><init>(Landroid/media/videoeditor/MediaItem;[Landroid/graphics/Bitmap;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    return-object v11
.end method

.method public abstract getTimelineDuration()J
.end method

.method public abstract getWidth()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 2
    .parameter "clipSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-void
.end method

.method invalidateBlankFrame()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method abstract invalidateTransitions(JJ)V
.end method

.method abstract invalidateTransitions(JJJJ)V
.end method

.method protected isOverlapping(JJJJ)Z
    .locals 3
    .parameter "startTimeMs1"
    .parameter "durationMs1"
    .parameter "startTimeMs2"
    .parameter "durationMs2"

    .prologue
    const/4 v0, 0x0

    add-long v1, p1, p3

    cmp-long v1, v1, p5

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-long v1, p5, p7

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 7
    .parameter "effectId"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .local v0, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    instance-of v3, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 6
    .parameter "overlayId"

    .prologue
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .local v1, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    instance-of v2, v1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    :cond_1
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .end local v1           #overlay:Landroid/media/videoeditor/Overlay;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setBeginTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0
    .parameter "transition"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    return-void
.end method

.method setEndTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0
    .parameter "transition"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    return-void
.end method

.method setGeneratedImageClip(Ljava/lang/String;)V
    .locals 0
    .parameter "generatedFilePath"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-void
.end method

.method setRegenerateClip(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    return-void
.end method

.method public setRenderingMode(I)V
    .locals 4
    .parameter "renderingMode"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Rendering Mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    iput p1, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .local v1, overlay:Landroid/media/videoeditor/Overlay;
    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    .end local v1           #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
