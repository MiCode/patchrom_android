.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorConstantState;,
        Landroid/animation/Animator$AnimatorPauseListener;,
        Landroid/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mChangingConfigurations:I

.field private mConstantState:Landroid/animation/Animator$AnimatorConstantState;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return-void
.end method

.method static synthetic access$002(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;
    .locals 0
    .param p0, "x0"    # Landroid/animation/Animator;
    .param p1, "x1"    # Landroid/animation/Animator$AnimatorConstantState;

    .prologue
    iput-object p1, p0, Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;

    return-object p1
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .prologue
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return-void
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 0

    .prologue
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 4

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "anim":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .end local v0    # "anim":Landroid/animation/Animator;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/animation/Animator$AnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/Animator$AnimatorConstantState;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public end()V
    .locals 0

    .prologue
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .prologue
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    iput p1, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return-void
.end method

.method public abstract setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public setupEndValues()V
    .locals 0

    .prologue
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    .prologue
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    return-void
.end method
