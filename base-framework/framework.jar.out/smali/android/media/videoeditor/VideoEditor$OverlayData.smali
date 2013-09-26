.class public final Landroid/media/videoeditor/VideoEditor$OverlayData;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayData"
.end annotation


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mClear:Z

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mRenderingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method


# virtual methods
.method public needsRendering()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public renderOverlay(Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "destBitmap"

    .prologue
    const/4 v13, 0x0

    iget-boolean v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-eqz v11, :cond_1

    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v7, overlayCanvas:Landroid/graphics/Canvas;
    iget v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    packed-switch v11, :pswitch_data_0

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rendering mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v3, destRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v9, srcRect:Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v9, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v9           #srcRect:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .local v1, aROverlayImage:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .local v0, aRCanvas:F
    cmpl-float v11, v1, v0

    if-lez v11, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .local v5, newHeight:I
    const/4 v4, 0x0

    .local v4, left:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .local v10, top:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .local v8, right:I
    add-int v2, v10, v5

    .end local v5           #newHeight:I
    .local v2, bottom:I
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v3       #destRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v9       #srcRect:Landroid/graphics/Rect;
    goto :goto_1

    .end local v2           #bottom:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #left:I
    .end local v8           #right:I
    .end local v9           #srcRect:Landroid/graphics/Rect;
    .end local v10           #top:I
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .local v6, newWidth:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .restart local v4       #left:I
    const/4 v10, 0x0

    .restart local v10       #top:I
    add-int v8, v4, v6

    .restart local v8       #right:I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .restart local v2       #bottom:I
    goto :goto_2

    .end local v0           #aRCanvas:F
    .end local v1           #aROverlayImage:F
    .end local v2           #bottom:I
    .end local v4           #left:I
    .end local v6           #newWidth:I
    .end local v8           #right:I
    .end local v10           #top:I
    :pswitch_2
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .restart local v1       #aROverlayImage:F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .restart local v0       #aRCanvas:F
    cmpg-float v11, v1, v0

    if-gez v11, :cond_3

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .restart local v5       #newHeight:I
    const/4 v4, 0x0

    .restart local v4       #left:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .restart local v10       #top:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .restart local v8       #right:I
    add-int v2, v10, v5

    .end local v5           #newHeight:I
    .restart local v2       #bottom:I
    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v9       #srcRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v3       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_1

    .end local v2           #bottom:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #left:I
    .end local v8           #right:I
    .end local v9           #srcRect:Landroid/graphics/Rect;
    .end local v10           #top:I
    :cond_3
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .restart local v6       #newWidth:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .restart local v4       #left:I
    const/4 v10, 0x0

    .restart local v10       #top:I
    add-int v8, v4, v6

    .restart local v8       #right:I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .restart local v2       #bottom:I
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method set(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "overlayBitmap"
    .parameter "renderingMode"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method

.method setClear()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    return-void
.end method
