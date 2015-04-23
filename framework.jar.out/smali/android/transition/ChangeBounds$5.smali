.class final Landroid/transition/ChangeBounds$5;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$5;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .prologue
    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .local v1, "left":I
    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$5;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
