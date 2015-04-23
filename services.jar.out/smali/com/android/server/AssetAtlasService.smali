.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$ComputeWorker;,
        Lcom/android/server/AssetAtlasService$WorkerResult;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$Renderer;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x4

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "Atlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x300

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40

.field private static sInstance:Lcom/android/server/AssetAtlasService;


# instance fields
.field private mAtlasMap:[I

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/AssetAtlasService;->queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0x12c

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v6, 0x0

    .local v6, "totalPixelCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    .local v3, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v7, Lcom/android/server/AssetAtlasService$1;

    invoke-direct {v7, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/AssetAtlasService$Renderer;

    invoke-direct {v8, p0, v1, v6}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    sput-object p0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Landroid/view/GraphicBuffer;

    .prologue
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AssetAtlasService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/AssetAtlasService;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    return-object p1
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/AssetAtlasService;->deleteDataFile()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/GraphicBuffer;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GraphicBuffer;
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/graphics/Canvas;II)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/graphics/Canvas;I)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 3
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceBuildId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 3
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v1

    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p3}, Lcom/android/server/AssetAtlasService;->readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/AssetAtlasService;->writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 21
    .param p1, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .local p0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-string v7, "Atlas"

    const-string v8, "Computing best atlas configuration..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .local v11, "begin":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v13

    .local v13, "cpuCount":I
    const/4 v7, 0x1

    if-ne v13, v7, :cond_0

    new-instance v3, Lcom/android/server/AssetAtlasService$ComputeWorker;

    const/16 v4, 0x300

    const/16 v5, 0x800

    const/16 v6, 0x40

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    :goto_0
    new-instance v7, Lcom/android/server/AssetAtlasService$2;

    invoke-direct {v7}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v11

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v14, v7, v8

    .local v14, "delay":F
    const-string v7, "Atlas"

    const-string v8, "Found best atlas configuration in %.2fs"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_miui_0

    const/4 v7, 0x0

    return-object v7

    :cond_miui_0
    const/4 v7, 0x0

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AssetAtlasService$WorkerResult;

    .local v17, "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    new-instance v7, Lcom/android/server/AssetAtlasService$Configuration;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    .end local v14    # "delay":F
    .end local v17    # "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    :goto_1
    return-object v7

    :cond_0
    const/16 v4, 0x300

    .local v4, "start":I
    add-int/lit8 v7, v13, -0x1

    mul-int/lit8 v7, v7, 0x40

    rsub-int v5, v7, 0x800

    .local v5, "end":I
    mul-int/lit8 v6, v13, 0x40

    .local v6, "step":I
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .local v10, "signal":Ljava/util/concurrent/CountDownLatch;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_1

    new-instance v3, Lcom/android/server/AssetAtlasService$ComputeWorker;

    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .local v3, "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Atlas Worker #"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v4, v4, 0x40

    add-int/lit8 v5, v5, 0x40

    goto :goto_2

    .end local v3    # "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    :cond_1
    const-wide/16 v7, 0xa

    :try_start_0
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v8, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/InterruptedException;
    const-string v7, "Atlas"

    const-string v8, "Could not complete configuration computation"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static deleteDataFile()V
    .locals 2

    .prologue
    const-string v0, "Atlas"

    const-string v1, "Current configuration inconsistent with assets list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Atlas"

    const-string v1, "Could not delete the current configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    iget-object v0, v0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    iget-object v0, v0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    iget-object v0, v0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    invoke-virtual {v0}, Landroid/view/GraphicBuffer;->destroy()V

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    iput-object v2, v0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    sget-object v0, Lcom/android/server/AssetAtlasService;->sInstance:Lcom/android/server/AssetAtlasService;

    iput-object v2, v0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    :cond_0
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/AssetAtlasService;->getFrameworkResourcesFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "systemDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "framework_atlas.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I
.end method

.method private static native nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;I)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Atlas"

    const-string v4, "Could not get package info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v9, p2}, Lcom/android/server/AssetAtlasService;->checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    move-result-object v1

    .local v1, "type":Landroid/graphics/Atlas$Type;
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v2

    .local v2, "width":I
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v3

    .local v3, "height":I
    const/4 v10, 0x0

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v4

    .local v4, "count":I
    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v5

    .local v5, "flags":I
    new-instance v0, Lcom/android/server/AssetAtlasService$Configuration;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "type":Landroid/graphics/Atlas$Type;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "count":I
    .end local v5    # "flags":I
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :goto_0
    if-eqz v9, :cond_2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v0

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_3
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid parameter value in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_2
    move-exception v10

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_3
    move-exception v7

    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_1

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_4
    move-exception v10

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_5
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_1

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_6
    move-exception v10

    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v8, :cond_0

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_0
    :goto_6
    throw v10

    :catch_7
    move-exception v11

    goto :goto_6

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    :cond_1
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_1

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_0
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "config"    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v3}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v3

    :catch_5
    move-exception v4

    goto :goto_4

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMap()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompatible(I)Z
    .locals 1
    .param p1, "ppid"    # I

    .prologue
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public systemRunning()V
    .locals 0

    .prologue
    return-void
.end method
