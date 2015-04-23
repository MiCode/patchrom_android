.class final Landroid/transition/Slide$2;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .local v1, "x":F
    :goto_1
    return v1

    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isRtl":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .restart local v1    # "x":F
    goto :goto_1
.end method
