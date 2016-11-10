.class Landroid/media/ImageWriter$WriterSurfaceImage;
.super Landroid/media/Image;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final DEFAULT_TIMESTAMP:J

.field private mFormat:I

.field private mHeight:I

.field private mNativeBuffer:J

.field private mNativeFenceFd:I

.field private mOwner:Landroid/media/ImageWriter;

.field private mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/media/ImageWriter;)V
    .locals 4
    .param p1, "writer"    # Landroid/media/ImageWriter;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    iput-wide v2, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->DEFAULT_TIMESTAMP:J

    iput-wide v2, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    return-void
.end method

.method static synthetic access$000(Landroid/media/ImageWriter$WriterSurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageWriter$WriterSurfaceImage;

    .prologue
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    # invokes: Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V
    invoke-static {v1}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->access$400(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V

    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat()I
.end method

.method private synchronized native declared-synchronized nativeGetHeight()I
.end method

.method private synchronized native declared-synchronized nativeGetWidth()I
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v0

    # invokes: Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V
    invoke-static {v0, p0}, Landroid/media/ImageWriter;->access$300(Landroid/media/ImageWriter;Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->close()V
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
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetFormat()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHeight()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    return v0
.end method

.method getNativeContext()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method getOwner()Landroid/media/ImageWriter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getFormat()I

    move-result v1

    invoke-static {v1}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    .local v0, "numPlanes":I
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    .end local v0    # "numPlanes":I
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    invoke-virtual {v1}, [Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/Image$Plane;

    return-object v1
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetWidth()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    return v0
.end method

.method isAttachable()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    iput-wide p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    return-void
.end method
