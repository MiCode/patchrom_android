.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-static {p1, p2}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I

    .prologue
    invoke-static/range {p1 .. p9}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I
    .param p10, "overX"    # I
    .param p11, "overY"    # I

    .prologue
    invoke-static/range {p1 .. p11}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIIIII)V

    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isOverScrolled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "finalX"    # I
    .param p4, "overX"    # I

    .prologue
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startY"    # I
    .param p3, "finalY"    # I
    .param p4, "overY"    # I

    .prologue
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIII)V

    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .prologue
    invoke-static/range {p1 .. p6}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method
