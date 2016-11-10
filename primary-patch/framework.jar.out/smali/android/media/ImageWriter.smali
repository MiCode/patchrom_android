.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;
    }
.end annotation


# instance fields
.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mWriterFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;I)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input argument: surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    return-void
.end method

.method private abortImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    # invokes: Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->access$000(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-void
.end method

.method static synthetic access$100(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageWriter;

    .prologue
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageWriter;

    .prologue
    iget-object v0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageWriter;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "crop":Landroid/graphics/Rect;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIII)I

    return-void
.end method

.method private synchronized native declared-synchronized cancelImage(JLandroid/media/Image;)V
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private synchronized native declared-synchronized nativeAttachAndQueueImage(JJIJIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose(J)V
.end method

.method private synchronized native declared-synchronized nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;Landroid/view/Surface;I)J
.end method

.method private synchronized native declared-synchronized nativeQueueInputImage(JLandroid/media/Image;JIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .prologue
    new-instance v0, Landroid/media/ImageWriter;

    invoke-direct {v0, p0, p1}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;I)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .local v1, "image":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_0

    .end local v1    # "image":Landroid/media/Image;
    :cond_0
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Landroid/media/ImageWriter;->nativeClose(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .locals 4

    .prologue
    iget v1, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PRIVATE format ImageWriter doesn\'t support this operation since the images are inaccessible to the application!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already dequeued max number of Images "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .locals 17
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "image shouldn\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v14

    .local v14, "ownedByMe":Z
    if-eqz v14, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v2, v2, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Image from ImageWriter is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/media/ImageReader;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ImageReader;

    .local v15, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .end local v15    # "prevOwner":Landroid/media/ImageReader;
    :cond_3
    :goto_0
    return-void

    .restart local v15    # "prevOwner":Landroid/media/ImageReader;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v13

    .local v13, "inputImage":Landroid/media/Image;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/media/ImageUtils;->imageCopy(Landroid/media/Image;Landroid/media/Image;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    move-object/from16 p1, v13

    const/4 v14, 0x1

    .end local v13    # "inputImage":Landroid/media/Image;
    .end local v15    # "prevOwner":Landroid/media/ImageReader;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v12

    .local v12, "crop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    iget v8, v12, Landroid/graphics/Rect;->left:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    iget v10, v12, Landroid/graphics/Rect;->right:I

    iget v11, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v11}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIII)V

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v16, p1

    check-cast v16, Landroid/media/ImageWriter$WriterSurfaceImage;

    .local v16, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    # invokes: Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V
    invoke-static/range {v16 .. v16}, Landroid/media/ImageWriter$WriterSurfaceImage;->access$000(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    goto :goto_0
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v1, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    :cond_3
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    return-void

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
