.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/NinePatch$InsetStruct;
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field public final mNativeChunk:J

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget-wide v0, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(JLandroid/graphics/Rect;Landroid/graphics/Bitmap;JJII)V
.end method

.method private static native nativeDraw(JLandroid/graphics/RectF;Landroid/graphics/Bitmap;JJII)V
.end method

.method private static native nativeFinalize(J)V
.end method

.method private static native nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J
.end method

.method private static native validateNinePatchChunk([B)J
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-object v3, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    iget v8, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v9, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Landroid/graphics/NinePatch;->nativeDraw(JLandroid/graphics/Rect;Landroid/graphics/Bitmap;JJII)V

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-object v3, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    iget v8, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v9, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Landroid/graphics/NinePatch;->nativeDraw(JLandroid/graphics/RectF;Landroid/graphics/Bitmap;JJII)V

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v2, v4, v5, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J

    move-result-wide v0

    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
