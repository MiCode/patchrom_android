.class public final Lcom/mediatek/stereo3d/Stereo3DConversion;
.super Ljava/lang/Object;
.source "Stereo3DConversion.java"

# interfaces
.implements Lcom/mediatek/common/stereo3d/IStereo3DConversion;


# static fields
.field private static final IMG_MAX_HEIGHT:I = 0x800

.field private static final IMG_MAX_WIDTH:I = 0x800

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Stereo3DConversion"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ipto3d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ipto3djni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native close3DConversion()I
.end method

.method public static execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/stereo3d/Stereo3DConversion;->execute(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "outputWidth"
    .parameter "outputHeight"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/stereo3d/Stereo3DConversion;->execute(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "outputWidth"
    .parameter "outputHeight"
    .parameter "isMutable"

    .prologue
    const/16 v7, 0x800

    const-string v5, "Stereo3DConversion"

    const-string v6, "perform2DTo3DConversion"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v2, v5, 0x2

    .local v2, defaultOutputWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, defaultOutputHeight:I
    if-eqz p0, :cond_0

    if-gt p1, v7, :cond_0

    if-gt p2, v7, :cond_0

    if-gt v2, v7, :cond_0

    if-le v1, v7, :cond_1

    :cond_0
    const-string v5, "Stereo3DConversion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output image is null or too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/mediatek/stereo3d/Stereo3DConversion;->generateSmallImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, smallImage:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, convertedBitmap:Landroid/graphics/Bitmap;
    const/4 v3, -0x1

    .local v3, result:I
    const-class v6, Lcom/mediatek/stereo3d/Stereo3DConversion;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v5, v7, v8, v9}, Lcom/mediatek/stereo3d/Stereo3DConversion;->init3DConversion(IIII)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v4, p1, p2, p3}, Lcom/mediatek/stereo3d/Stereo3DConversion;->process3DConversion(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/mediatek/stereo3d/Stereo3DConversion;->close3DConversion()I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public static execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "isMutable"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/mediatek/stereo3d/Stereo3DConversion;->execute(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static generateSmallImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "oldBitmap"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, height:I
    const-string v0, "Stereo3DConversion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Large bitmap size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " x "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x3daaa8eb

    .local v7, scale:F
    const-string v0, "Stereo3DConversion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scale: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static native init3DConversion(IIII)I
.end method

.method private static native process3DConversion(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
.end method
