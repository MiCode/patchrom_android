.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAtlasBitmap:Landroid/graphics/Bitmap;

.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmap:I

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    return-void
.end method

.method private acquireCanvas(II)Landroid/graphics/Canvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .local v0, "canvas":Landroid/graphics/Canvas;
    # invokes: Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I
    invoke-static {v0, p1, p2}, Lcom/android/server/AssetAtlasService;->access$700(Landroid/graphics/Canvas;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    return-object v0
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    # invokes: Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V
    invoke-static {p1, v0}, Lcom/android/server/AssetAtlasService;->access$800(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 26
    .param p1, "buffer"    # Landroid/view/GraphicBuffer;
    .param p2, "atlas"    # Landroid/graphics/Atlas;
    .param p3, "packCount"    # I

    .prologue
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .local v15, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AssetAtlasService$Renderer;->acquireCanvas(II)Landroid/graphics/Canvas;

    move-result-object v5

    .local v5, "canvas":Landroid/graphics/Canvas;
    if-nez v5, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    new-instance v11, Landroid/graphics/Atlas$Entry;

    invoke-direct {v11}, Landroid/graphics/Atlas$Entry;-><init>()V

    .local v11, "entry":Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v21, v0

    mul-int/lit8 v22, p3, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    # setter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v21 .. v22}, Lcom/android/server/AssetAtlasService;->access$402(Lcom/android/server/AssetAtlasService;[I)[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v21 .. v21}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[I

    move-result-object v3

    .local v3, "atlasMap":[I
    const/4 v13, 0x0

    .local v13, "mapIndex":I
    const/16 v17, 0x0

    .local v17, "result":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .local v18, "startRender":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .local v6, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    move v14, v13

    .end local v13    # "mapIndex":I
    .local v14, "mapIndex":I
    :goto_1
    if-ge v12, v6, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v21 .. v21}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[I

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v14, v0, :cond_3

    # invokes: Lcom/android/server/AssetAtlasService;->deleteDataFile()V
    invoke-static {}, Lcom/android/server/AssetAtlasService;->access$500()V

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .local v7, "endRender":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    # invokes: Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;I)Z
    invoke-static {v0, v1}, Lcom/android/server/AssetAtlasService;->access$600(Landroid/view/GraphicBuffer;I)Z

    move-result v17

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .local v9, "endUpload":J
    sub-long v21, v7, v18

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v21, v21, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v16, v21, v22

    .local v16, "renderDuration":F
    sub-long v21, v9, v7

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v21, v21, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v20, v21, v22

    .local v20, "uploadDuration":F
    const-string v21, "Atlas"

    const-string v22, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-float v25, v16, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v7    # "endRender":J
    .end local v9    # "endUpload":J
    .end local v16    # "renderDuration":F
    .end local v20    # "uploadDuration":F
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget v0, v11, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v11, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v21, 0x42b40000    # 90.0f

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "mapIndex":I
    .restart local v13    # "mapIndex":I
    :try_start_3
    iget v0, v4, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move/from16 v21, v0

    aput v21, v3, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    :try_start_4
    iget v0, v11, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v21, v0

    aput v21, v3, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "mapIndex":I
    .restart local v13    # "mapIndex":I
    :try_start_5
    iget v0, v11, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v21, v0

    aput v21, v3, v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    :try_start_6
    iget-boolean v0, v11, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_2
    aput v21, v3, v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    move v13, v14

    .end local v14    # "mapIndex":I
    .restart local v13    # "mapIndex":I
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    .end local v13    # "mapIndex":I
    .restart local v14    # "mapIndex":I
    goto/16 :goto_1

    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "count":I
    .end local v12    # "i":I
    .end local v14    # "mapIndex":I
    .end local v18    # "startRender":J
    .restart local v13    # "mapIndex":I
    :catchall_0
    move-exception v21

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    throw v21

    .end local v13    # "mapIndex":I
    .restart local v6    # "count":I
    .restart local v12    # "i":I
    .restart local v14    # "mapIndex":I
    .restart local v18    # "startRender":J
    :catchall_1
    move-exception v21

    move v13, v14

    .end local v14    # "mapIndex":I
    .restart local v13    # "mapIndex":I
    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    .local v1, "config":Lcom/android/server/AssetAtlasService$Configuration;
    const-string v2, "Atlas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    const/16 v5, 0x100

    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    # setter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .end local v0    # "atlas":Landroid/graphics/Atlas;
    :cond_0
    return-void
.end method
