.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 4
    .parameter "bitmap"
    .parameter "tileX"
    .parameter "tileY"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    .line 41
    .local v0, b:I
    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v2, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(III)I

    move-result v1

    iput v1, p0, Landroid/graphics/BitmapShader;->native_instance:I

    .line 42
    iget v1, p0, Landroid/graphics/BitmapShader;->native_instance:I

    iget v2, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;->nativePostCreate(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/BitmapShader;->native_shader:I

    .line 43
    return-void
.end method

.method private static native nativeCreate(III)I
.end method

.method private static native nativePostCreate(IIII)I
.end method
