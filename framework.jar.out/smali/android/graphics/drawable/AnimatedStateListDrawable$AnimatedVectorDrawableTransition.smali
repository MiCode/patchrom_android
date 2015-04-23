.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mHasReversibleFlag:Z

.field private final mReversed:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V
    .locals 1
    .param p1, "avd"    # Landroid/graphics/drawable/AnimatedVectorDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-boolean p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reverse()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reverse()V

    :goto_0
    return-void

    :cond_0
    # getter for: Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/graphics/drawable/AnimatedStateListDrawable;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t reverse, either the reversible is set to false, or the AnimatedVectorDrawable can\'t reverse"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->reverse()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method
