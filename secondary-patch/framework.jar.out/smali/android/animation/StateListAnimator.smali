.class public Landroid/animation/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/StateListAnimator$StateListAnimatorConstantState;,
        Landroid/animation/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mChangingConfigurations:I

.field private mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

.field private mLastMatch:Landroid/animation/StateListAnimator$Tuple;

.field private mRunningAnimator:Landroid/animation/Animator;

.field private mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    iput-object v1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    return-void
.end method

.method static synthetic access$000(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Landroid/animation/StateListAnimator;

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Landroid/animation/StateListAnimator;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    .locals 0
    .param p0, "x0"    # Landroid/animation/StateListAnimator;
    .param p1, "x1"    # Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    .prologue
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    return-object p1
.end method

.method private cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private clearTarget()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator$Tuple;

    iget-object v2, v2, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    iput-object v3, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    iput-object v3, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private initAnimatorListener()V
    .locals 1

    .prologue
    new-instance v0, Landroid/animation/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$1;-><init>(Landroid/animation/StateListAnimator;)V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private start(Landroid/animation/StateListAnimator$Tuple;)V
    .locals 2
    .param p1, "match"    # Landroid/animation/StateListAnimator$Tuple;

    .prologue
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/Animator;)V
    .locals 3
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    new-instance v0, Landroid/animation/StateListAnimator$Tuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$1;)V

    .local v0, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v1, v0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return-void
.end method

.method public clone()Landroid/animation/StateListAnimator;
    .locals 8

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/StateListAnimator;

    .local v1, "clone":Landroid/animation/StateListAnimator;
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v1, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    iget-object v6, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "tupleSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v6, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/StateListAnimator$Tuple;

    .local v4, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v6, v4, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .local v0, "animatorClone":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, v4, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-virtual {v1, v6, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "animatorClone":Landroid/animation/Animator;
    .end local v4    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_0
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/animation/StateListAnimator;->setChangingConfigurations(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .end local v1    # "clone":Landroid/animation/StateListAnimator;
    .end local v3    # "i":I
    .end local v5    # "tupleSize":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "cannot clone state list animator"

    invoke-direct {v6, v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

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
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;-><init>(Landroid/animation/StateListAnimator;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return v0
.end method

.method public getRunningAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getTuples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return-void
.end method

.method public setState([I)V
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x0

    .local v2, "match":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .local v3, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_0
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-ne v2, v4, :cond_3

    :cond_1
    :goto_1
    return-void

    .restart local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_3
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroid/animation/StateListAnimator;->cancel()V

    :cond_4
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/animation/StateListAnimator;->start(Landroid/animation/StateListAnimator$Tuple;)V

    goto :goto_1
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/animation/StateListAnimator;->clearTarget()V

    :cond_2
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
