.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p0, "edgeEffect"    # Ljava/lang/Object;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0
    .param p0, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "edgeEffect"    # Ljava/lang/Object;
    .param p1, "velocity"    # I

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 1
    .param p0, "edgeEffect"    # Ljava/lang/Object;
    .param p1, "deltaDistance"    # F

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    move-object v0, p0

    check-cast v0, Landroid/widget/EdgeEffect;

    .local v0, "eff":Landroid/widget/EdgeEffect;
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    return v1
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "edgeEffect"    # Ljava/lang/Object;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method
