.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 4
    .param p2, "index"    # I

    .prologue
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    # getter for: Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v0

    .local v0, "size":Landroid/graphics/Point;
    # getter for: Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    # invokes: Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
    invoke-static {v2, v3, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->access$300(JILandroid/graphics/Point;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/pdf/PdfRenderer$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    # invokes: Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->access$500(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    # setter for: Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    return-void
.end method

.method private throwIfClosed()V
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    return-void
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
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
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

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 14
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported pixel format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "destBounds not in destination"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "transform not affine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported render mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only single render mode supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .local v7, "contentLeft":I
    :goto_0
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .local v8, "contentTop":I
    :goto_1
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .local v9, "contentRight":I
    :goto_2
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .local v10, "contentBottom":I
    :goto_3
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    iget-wide v11, v0, Landroid/graphics/Matrix;->native_instance:J

    .local v11, "transformPtr":J
    :goto_4
    iget-object v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    # getter for: Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J
    invoke-static {v2}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    move-object v6, p1

    move/from16 v13, p4

    # invokes: Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V
    invoke-static/range {v2 .. v13}, Landroid/graphics/pdf/PdfRenderer;->access$400(JJLandroid/graphics/Bitmap;IIIIJI)V

    return-void

    .end local v7    # "contentLeft":I
    .end local v8    # "contentTop":I
    .end local v9    # "contentRight":I
    .end local v10    # "contentBottom":I
    .end local v11    # "transformPtr":J
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7    # "contentLeft":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "contentTop":I
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    goto :goto_2

    .restart local v9    # "contentRight":I
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_3

    .restart local v10    # "contentBottom":I
    :cond_a
    const-wide/16 v11, 0x0

    goto :goto_4
.end method
