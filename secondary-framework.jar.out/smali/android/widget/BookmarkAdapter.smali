.class public Landroid/widget/BookmarkAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BookmarkAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DISPLAY_HEIGHT:I = 0xa0

.field private static final DEFAULT_DISPLAY_WIDTH:I = 0x78

.field private static final DEFAULT_REFLECTION:F = 0.25f

.field private static final DEFAULT_REFLECTION_GAP:I = 0x4

.field private static final DELICON_MARGIN_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BookmarkAdapter"


# instance fields
.field private final mBitmapCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBookmarkItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteMode:Z

.field private mDispHeight:I

.field private mDispWidth:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mReflection:F

.field private mTotalDispHeight:I

.field private mTransMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, bookmarkItems:Ljava/util/List;,"Ljava/util/List<Landroid/widget/BookmarkItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    const/16 v0, 0xa0

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    const/high16 v0, 0x3e80

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    iput-object p1, p0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private dumpBitmapCacheInfo()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .local v2, size:I
    const-string v3, "BookmarkAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpBitmapCacheInfo: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    const-string v5, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpBitmapCacheInfo: i = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",bmp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",recycled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v4

    return-void

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p1, bmpCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, entry:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    monitor-exit v3

    .end local v0           #entry:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0       #entry:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .end local v0           #entry:Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v3

    const/4 v0, 0x0

    goto :goto_0

    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadImage(Landroid/widget/ImageView;I)V
    .locals 17
    .parameter "child"
    .parameter "position"

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Landroid/widget/BookmarkAdapter;->getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, cacheBitmap:Landroid/graphics/Bitmap;
    const-string v2, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadImage: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",cacheBitmap = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/BookmarkItem;

    .local v15, item:Landroid/widget/BookmarkItem;
    iget-object v2, v15, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget v2, v15, Landroid/widget/BookmarkItem;->mResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v15, Landroid/widget/BookmarkItem;->mResId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v15, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, v15, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    .local v1, originalImage:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    const-string v2, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No image valid for bookmark item "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .local v5, height:I
    const-string v2, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadImage: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",width = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",height = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",mDispWidth = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",mDispHeight = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v3, v3

    int-to-float v8, v4

    div-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f80

    const/high16 v8, -0x4080

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    sub-float/2addr v3, v8

    mul-float/2addr v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mReflection:F

    mul-float/2addr v2, v3

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .local v16, reflectedBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v7, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "BookmarkAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage cache reflection bitmap: position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",bitmapWithReflection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #bitmapWithReflection:Landroid/graphics/Bitmap;
    .end local v16           #reflectedBitmap:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    const-string v2, "BookmarkAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage cache scaled bitmap: position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",scaledBitmap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v8, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public add(Landroid/widget/BookmarkItem;)V
    .locals 1
    .parameter "item"

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public clearBitmapCache()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .local v2, size:I
    const-string v3, "BookmarkAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    const-string v5, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: i = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",bmp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",recycled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v4

    return-void

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    check-cast v0, Landroid/widget/BookmarkAdapter$ViewHolder;

    .restart local v0       #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    :goto_0
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->content:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Landroid/widget/BookmarkAdapter;->loadImage(Landroid/widget/ImageView;I)V

    iget-boolean v1, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    add-int/lit8 v3, v3, 0xa

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/BookmarkAdapter$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/BookmarkAdapter$1;-><init>(Landroid/widget/BookmarkAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p2

    :cond_0
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2070004

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/BookmarkAdapter$ViewHolder;

    .end local v0           #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    invoke-direct {v0}, Landroid/widget/BookmarkAdapter$ViewHolder;-><init>()V

    .restart local v0       #holder:Landroid/widget/BookmarkAdapter$ViewHolder;
    const v1, 0x20e0008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    const v1, 0x20e0009

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->content:Landroid/widget/ImageView;

    const v1, 0x20e000a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Landroid/widget/BookmarkAdapter$ViewHolder;->delIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public insert(Landroid/widget/BookmarkItem;I)V
    .locals 1
    .parameter "item"
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    return v0
.end method

.method public recycleBitmapContents()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, item:Landroid/widget/BookmarkItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Landroid/widget/BookmarkItem;
    check-cast v1, Landroid/widget/BookmarkItem;

    .restart local v1       #item:Landroid/widget/BookmarkItem;
    iget-object v3, v1, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #item:Landroid/widget/BookmarkItem;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, removed:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object v0
.end method

.method public remove(Landroid/widget/BookmarkItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, succ:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    :cond_0
    return v0
.end method

.method public replace(Landroid/widget/BookmarkItem;I)Landroid/widget/BookmarkItem;
    .locals 2
    .parameter "item"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .local v0, replaced:Landroid/widget/BookmarkItem;
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #replaced:Landroid/widget/BookmarkItem;
    check-cast v0, Landroid/widget/BookmarkItem;

    .restart local v0       #replaced:Landroid/widget/BookmarkItem;
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    :cond_0
    return-object v0
.end method

.method public setDeleteIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "deleteIcon"

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkAdapter;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "delMode"

    .prologue
    iput-boolean p1, p0, Landroid/widget/BookmarkAdapter;->mDeleteMode:Z

    return-void
.end method

.method public setImageDispSize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    iput p1, p0, Landroid/widget/BookmarkAdapter;->mDispWidth:I

    iput p2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    iget v2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    iget v4, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v4, v3

    const v5, 0x70ffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .local v0, shader:Landroid/graphics/LinearGradient;
    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Landroid/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setImageReflection(F)V
    .locals 3
    .parameter "reflect"

    .prologue
    iput p1, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    iget v0, p0, Landroid/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/BookmarkAdapter;->mTotalDispHeight:I

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/widget/BookmarkItem;>;"
    iget-object v0, p0, Landroid/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/widget/BookmarkAdapter;->notifyDataSetChanged()V

    return-void
.end method
