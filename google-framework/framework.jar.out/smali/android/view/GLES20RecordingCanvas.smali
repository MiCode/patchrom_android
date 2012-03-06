.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/GLES20Canvas;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/GLES20RecordingCanvas;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayList:Landroid/view/GLES20DisplayList;

.field private mIsPooled:Z

.field private mNextPoolable:Landroid/view/GLES20RecordingCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/view/GLES20RecordingCanvas$1;

    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas$1;-><init>()V

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0, v0}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GLES20RecordingCanvas$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    return-void
.end method

.method static obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;
    .locals 2
    .parameter "displayList"

    .prologue
    .line 66
    sget-object v1, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pool;

    invoke-interface {v1}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 67
    .local v0, canvas:Landroid/view/GLES20RecordingCanvas;
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 68
    return-object v0
.end method

.method private recordShaderBitmap(Landroid/graphics/Paint;)V
    .locals 3
    .parameter "paint"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 88
    .local v0, shader:Landroid/graphics/Shader;
    instance-of v1, v0, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v1, v1, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    check-cast v0, Landroid/graphics/BitmapShader;

    .end local v0           #shader:Landroid/graphics/Shader;
    iget-object v2, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 132
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 139
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 141
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 146
    invoke-super/range {p0 .. p8}, Landroid/view/GLES20Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 156
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    .line 160
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 162
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 0
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 167
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 168
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 173
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 174
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 179
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 180
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/view/GLES20Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 185
    invoke-direct {p0, p1}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 197
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 203
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 209
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 210
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 221
    invoke-direct {p0, p3}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 214
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 215
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 226
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 228
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Landroid/view/GLES20Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    invoke-direct {p0, p2}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 240
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 245
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 246
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 256
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 257
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-direct {p0, p4}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 262
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 263
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 264
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 250
    invoke-super/range {p0 .. p6}, Landroid/view/GLES20Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 251
    invoke-direct {p0, p6}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 252
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 281
    invoke-super/range {p0 .. p5}, Landroid/view/GLES20Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 282
    invoke-direct {p0, p5}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 275
    invoke-super/range {p0 .. p7}, Landroid/view/GLES20Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 276
    invoke-direct {p0, p7}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 277
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 295
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    .line 296
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 297
    return-void
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 0
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 288
    invoke-super/range {p0 .. p9}, Landroid/view/GLES20Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 289
    invoke-direct {p0, p9}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 290
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 303
    invoke-super/range {p0 .. p12}, Landroid/view/GLES20Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 305
    invoke-direct {p0, p12}, Landroid/view/GLES20RecordingCanvas;->recordShaderBitmap(Landroid/graphics/Paint;)V

    .line 306
    return-void
.end method

.method end(I)I
    .locals 1
    .parameter "nativeDisplayList"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/GLES20RecordingCanvas;->getDisplayList(I)I

    move-result v0

    return v0
.end method

.method public getNextPoolable()Landroid/view/GLES20RecordingCanvas;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mNextPoolable:Landroid/view/GLES20RecordingCanvas;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/GLES20RecordingCanvas;->getNextPoolable()Landroid/view/GLES20RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/view/GLES20RecordingCanvas;->mIsPooled:Z

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 73
    invoke-virtual {p0}, Landroid/view/GLES20RecordingCanvas;->resetDisplayListRenderer()V

    .line 74
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 75
    return-void
.end method

.method public setNextPoolable(Landroid/view/GLES20RecordingCanvas;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 315
    iput-object p1, p0, Landroid/view/GLES20RecordingCanvas;->mNextPoolable:Landroid/view/GLES20RecordingCanvas;

    .line 316
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/view/GLES20RecordingCanvas;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/GLES20RecordingCanvas;->setNextPoolable(Landroid/view/GLES20RecordingCanvas;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .parameter "isPooled"

    .prologue
    .line 325
    iput-boolean p1, p0, Landroid/view/GLES20RecordingCanvas;->mIsPooled:Z

    .line 326
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    iget-object v0, v0, Landroid/view/GLES20DisplayList;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method
