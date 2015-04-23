.class Landroid/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mIsBottomRightSet:Z

.field private mIsTopLeftSet:Z

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method

.method private setLeftTopRightBottom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iput-boolean v5, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    iput-boolean v5, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "bottomRight"    # Landroid/graphics/PointF;

    .prologue
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    iget-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "topLeft"    # Landroid/graphics/PointF;

    .prologue
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    iget-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method
