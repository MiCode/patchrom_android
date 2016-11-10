.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    iput-object p3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapShader;->nativeCreate(Landroid/graphics/Bitmap;II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BitmapShader;->init(J)V

    return-void
.end method

.method private static native nativeCreate(Landroid/graphics/Bitmap;II)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    .prologue
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .local v0, "copy":Landroid/graphics/BitmapShader;
    invoke-virtual {p0, v0}, Landroid/graphics/BitmapShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
