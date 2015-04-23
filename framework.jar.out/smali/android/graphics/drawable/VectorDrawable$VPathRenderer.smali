.class Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mOpticalInsets:Landroid/graphics/Insets;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field private final mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field mTargetDensity:I

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/drawable/VectorDrawable$VGroup;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 11
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$700(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "child":Ljava/lang/Object;
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_1

    move-object v1, v9

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_0

    move-object v4, v9

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VPath;

    .local v4, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .end local v4    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    .end local v9    # "child":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 17
    .param p1, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "vPath"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    move/from16 v0, p4

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    div-float v10, v14, v15

    .local v10, "scaleX":F
    move/from16 v0, p5

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    div-float v11, v14, v15

    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .local v8, "minScale":F
    # getter for: Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
    invoke-static/range {p1 .. p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    move-result-object v5

    .local v5, "groupStackedMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v7

    .local v7, "matrixScale":F
    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/VectorDrawable$VPath;->toPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    .local v9, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->isClipPath()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v4, p2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .local v4, "fullPath":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    :cond_3
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    rem-float v12, v14, v15

    .local v12, "start":F
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    rem-float v1, v14, v15

    .local v1, "end":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v14, :cond_4

    new-instance v14, Landroid/graphics/PathMeasure;

    invoke-direct {v14}, Landroid/graphics/PathMeasure;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .local v6, "len":F
    mul-float/2addr v12, v6

    mul-float/2addr v1, v6

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    cmpl-float v14, v12, v1

    if-lez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v6, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v1, v9, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .end local v1    # "end":F
    .end local v6    # "len":F
    .end local v12    # "start":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_6

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .local v2, "fillPaint":Landroid/graphics/Paint;
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    # invokes: Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I
    invoke-static {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->access$800(IF)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v2    # "fillPaint":Landroid/graphics/Paint;
    :cond_7
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v14, :cond_8

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .local v13, "strokePaint":Landroid/graphics/Paint;
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v14, :cond_9

    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_9
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_a

    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_a
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    # invokes: Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I
    invoke-static {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->access$800(IF)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v3, v8, v7

    .local v3, "finalStrokeScale":F
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    mul-float/2addr v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v3    # "finalStrokeScale":F
    .end local v13    # "strokePaint":Landroid/graphics/Paint;
    .restart local v1    # "end":F
    .restart local v6    # "len":F
    .restart local v12    # "start":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v1, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_1
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 12
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x4

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    .local v5, "unitVectors":[F
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v6, v5, v8

    aget v7, v5, v9

    invoke-static {v6, v7}, Landroid/util/MathUtils;->mag(FF)F

    move-result v3

    .local v3, "scaleX":F
    aget v6, v5, v10

    aget v7, v5, v11

    invoke-static {v6, v7}, Landroid/util/MathUtils;->mag(FF)F

    move-result v4

    .local v4, "scaleY":F
    aget v6, v5, v8

    aget v7, v5, v9

    aget v8, v5, v10

    aget v9, v5, v11

    invoke-static {v6, v7, v8, v9}, Landroid/util/MathUtils;->cross(FFFF)F

    move-result v0

    .local v0, "crossProduct":F
    invoke-static {v3, v4}, Landroid/util/MathUtils;->max(FF)F

    move-result v2

    .local v2, "maxScale":F
    const/4 v1, 0x0

    .local v1, "matrixScale":F
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v6

    div-float v1, v6, v2

    :cond_0
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v5, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v5, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->applyTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .end local v0    # "child":Ljava/lang/Object;
    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_3
    return-void
.end method

.method private recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z
    .locals 7
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    const/4 v5, 0x1

    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    instance-of v6, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v6, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v0    # "child":Ljava/lang/Object;
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_0
    :goto_1
    return v5

    .restart local v0    # "child":Ljava/lang/Object;
    :cond_1
    instance-of v6, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v6, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "child":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    return-void
.end method
