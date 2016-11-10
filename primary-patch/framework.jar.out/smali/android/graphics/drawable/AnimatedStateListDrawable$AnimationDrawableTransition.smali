.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 9
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .local v1, "frameCount":I
    if-eqz p2, :cond_0

    add-int/lit8 v2, v1, -0x1

    .local v2, "fromFrame":I
    :goto_0
    if-eqz p2, :cond_1

    move v4, v5

    .local v4, "toFrame":I
    :goto_1
    new-instance v3, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;

    invoke-direct {v3, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .local v3, "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    const-string v6, "currentIndex"

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v5

    aput v4, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    return-void

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "fromFrame":I
    .end local v3    # "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    .end local v4    # "toFrame":I
    :cond_0
    move v2, v5

    goto :goto_0

    .restart local v2    # "fromFrame":I
    :cond_1
    add-int/lit8 v4, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public reverse()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method
