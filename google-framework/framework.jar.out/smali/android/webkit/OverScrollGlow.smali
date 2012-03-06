.class public Landroid/webkit/OverScrollGlow;
.super Ljava/lang/Object;
.source "OverScrollGlow.java"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mHostView:Landroid/webkit/WebView;

.field private mOverScrollDeltaX:I

.field private mOverScrollDeltaY:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 46
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 47
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 48
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 49
    return-void
.end method


# virtual methods
.method public absorbGlow(IIIIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "rangeX"
    .parameter "rangeY"

    .prologue
    .line 123
    if-gtz p6, :cond_0

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    if-gez p2, :cond_3

    if-ltz p4, :cond_3

    .line 125
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 126
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 137
    :cond_1
    :goto_0
    if-lez p5, :cond_2

    .line 138
    if-gez p1, :cond_4

    if-ltz p3, :cond_4

    .line 139
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 140
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 150
    :cond_2
    :goto_1
    return-void

    .line 129
    :cond_3
    if-le p2, p6, :cond_1

    if-gt p4, p6, :cond_1

    .line 130
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 131
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 143
    :cond_4
    if-le p1, p5, :cond_2

    if-gt p3, p5, :cond_2

    .line 144
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 145
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public drawEdgeGlows(Landroid/graphics/Canvas;)Z
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 159
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    .line 160
    .local v3, scrollX:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 161
    .local v4, scrollY:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    .line 162
    .local v5, width:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 164
    .local v0, height:I
    const/4 v1, 0x0

    .line 165
    .local v1, invalidateForGlow:Z
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 168
    .local v2, restoreCount:I
    int-to-float v6, v3

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 170
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 171
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 173
    .end local v2           #restoreCount:I
    :cond_0
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 176
    .restart local v2       #restoreCount:I
    neg-int v6, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    const/high16 v6, 0x4334

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 179
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 180
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 181
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 183
    .end local v2           #restoreCount:I
    :cond_1
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 186
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 187
    neg-int v6, v0

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 189
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 190
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 192
    .end local v2           #restoreCount:I
    :cond_2
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 195
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 196
    int-to-float v6, v4

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 199
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 200
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 202
    .end local v2           #restoreCount:I
    :cond_3
    return v1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pullGlow(IIIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "maxX"
    .parameter "maxY"

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    if-ne p3, v2, :cond_4

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-ne p4, v2, :cond_4

    .line 67
    if-lez p5, :cond_1

    .line 68
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    add-int v0, p3, v2

    .line 69
    .local v0, pulledToX:I
    if-gez v0, :cond_5

    .line 70
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 71
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 80
    :cond_0
    :goto_0
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 83
    .end local v0           #pulledToX:I
    :cond_1
    if-gtz p6, :cond_2

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 84
    :cond_2
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    add-int v1, p4, v2

    .line 85
    .local v1, pulledToY:I
    if-gez v1, :cond_6

    .line 86
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 87
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 96
    :cond_3
    :goto_1
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 99
    .end local v1           #pulledToY:I
    :cond_4
    return-void

    .line 74
    .restart local v0       #pulledToX:I
    :cond_5
    if-le v0, p5, :cond_0

    .line 75
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 76
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 90
    .end local v0           #pulledToX:I
    .restart local v1       #pulledToY:I
    :cond_6
    if-le v1, p6, :cond_3

    .line 91
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 92
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 218
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 219
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 220
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 221
    return-void
.end method

.method public setOverScrollDeltas(II)V
    .locals 0
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 108
    iput p1, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 109
    iput p2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 110
    return-void
.end method
