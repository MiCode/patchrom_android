.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$1;,
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .local v0, "visibility":I
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v5}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_6

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_5

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_4
    :goto_3
    if-nez p1, :cond_8

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_5
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_4

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_3

    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_3

    :cond_8
    if-nez p2, :cond_0

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v11

    .local v11, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v11, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_5

    const/4 v8, 0x0

    .local v8, "isTarget":Z
    iget-object v1, p0, Landroid/transition/Visibility;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/transition/Visibility;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_0
    if-eqz p2, :cond_6

    iget-object v10, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v10, "startView":Landroid/view/View;
    :goto_0
    if-eqz p3, :cond_7

    iget-object v7, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v7, "endView":Landroid/view/View;
    :goto_1
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    .local v9, "startId":I
    :goto_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v6

    .local v6, "endId":I
    :cond_1
    int-to-long v1, v9

    invoke-virtual {p0, v10, v1, v2}, Landroid/transition/Visibility;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_2

    int-to-long v1, v6

    invoke-virtual {p0, v7, v1, v2}, Landroid/transition/Visibility;->isValidTarget(Landroid/view/View;J)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    const/4 v8, 0x1

    .end local v6    # "endId":I
    .end local v7    # "endView":Landroid/view/View;
    .end local v9    # "startId":I
    .end local v10    # "startView":Landroid/view/View;
    :cond_3
    :goto_3
    if-nez v8, :cond_4

    iget-object v1, v11, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iget-object v1, v11, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v0, v11, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_a

    iget v3, v11, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v11, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .end local v8    # "isTarget":Z
    :cond_5
    :goto_4
    return-object v0

    .restart local v8    # "isTarget":Z
    :cond_6
    move-object v10, v0

    goto :goto_0

    .restart local v10    # "startView":Landroid/view/View;
    :cond_7
    move-object v7, v0

    goto :goto_1

    .restart local v7    # "endView":Landroid/view/View;
    :cond_8
    move v9, v6

    goto :goto_2

    .restart local v6    # "endId":I
    .restart local v9    # "startId":I
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .end local v6    # "endId":I
    .end local v7    # "endView":Landroid/view/View;
    .end local v9    # "startId":I
    .end local v10    # "startView":Landroid/view/View;
    :cond_a
    iget v3, v11, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v11, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_4
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
