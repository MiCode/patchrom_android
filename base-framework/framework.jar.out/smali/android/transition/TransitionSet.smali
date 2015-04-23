.class public Landroid/transition/TransitionSet;
.super Landroid/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    iput-boolean v3, p0, Landroid/transition/TransitionSet;->mStarted:Z

    sget-object v2, Lcom/android/internal/R$styleable;->TransitionSet:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .local v1, "ordering":I
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupStartEndListeners()V
    .locals 4

    .prologue
    new-instance v2, Landroid/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v2, p0}, Landroid/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/transition/TransitionSet;)V

    .local v2, "listener":Landroid/transition/TransitionSet$TransitionSetListener;
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .end local v0    # "childTransition":Landroid/transition/Transition;
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    :cond_0
    return-object p0
.end method

.method protected cancel()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/transition/Transition;->cancel()V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    .local v0, "clone":Landroid/transition/TransitionSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getStartDelay()J

    move-result-wide v10

    .local v10, "startDelay":J
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "numTransitions":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "childTransition":Landroid/transition/Transition;
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v1, :cond_0

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v6

    .local v6, "childStartDelay":J
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    add-long v2, v10, v6

    invoke-virtual {v0, v2, v3}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .end local v6    # "childStartDelay":J
    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .restart local v6    # "childStartDelay":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto :goto_1

    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v6    # "childStartDelay":J
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public forceVisibility(IZ)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->forceVisibility(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTransitionAt(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getTransitionCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 7

    .prologue
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/transition/TransitionSet;->start()V

    invoke-virtual {p0}, Landroid/transition/TransitionSet;->end()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/transition/TransitionSet;->setupStartEndListeners()V

    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "numTransitions":I
    iget-boolean v5, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v5, :cond_3

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition;

    .local v4, "previousTransition":Landroid/transition/Transition;
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .local v2, "nextTransition":Landroid/transition/Transition;
    new-instance v5, Landroid/transition/TransitionSet$1;

    invoke-direct {v5, p0, v2}, Landroid/transition/TransitionSet$1;-><init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "nextTransition":Landroid/transition/Transition;
    .end local v4    # "previousTransition":Landroid/transition/Transition;
    :cond_2
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .local v0, "firstTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    goto :goto_0

    .end local v0    # "firstTransition":Landroid/transition/Transition;
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {v5}, Landroid/transition/Transition;->runAnimators()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/transition/TransitionSet;
    .locals 7
    .param p1, "duration"    # J

    .prologue
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    iget-wide v2, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public setOrdering(I)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    :goto_0
    return-object p0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Landroid/transition/TransitionPropagation;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/transition/Transition;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
