.class Landroid/view/ViewPropertyAnimator$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .restart local v0       #r:Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #r:Ljava/lang/Runnable;
    :cond_4
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .restart local v0       #r:Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #r:Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_4
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14
    .parameter "animation"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .local v4, propertyBundle:Landroid/view/ViewPropertyAnimator$PropertyBundle;
    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v12, :cond_3

    move v6, v10

    .local v6, useDisplayListProperties:Z
    :goto_1
    const/4 v0, 0x0

    .local v0, alphaHandled:Z
    if-nez v6, :cond_1

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->invalidateParentCaches()V

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .local v2, fraction:F
    iget v5, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .local v5, propertyMask:I
    and-int/lit16 v12, v5, 0x1ff

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11, v11}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_2
    iget-object v8, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .local v9, values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v12, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v13, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    mul-float/2addr v13, v2

    add-float v7, v12, v13

    .local v7, value:F
    iget v12, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/16 v13, 0x200

    if-ne v12, v13, :cond_4

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    move-result v0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #alphaHandled:Z
    .end local v1           #count:I
    .end local v2           #fraction:F
    .end local v3           #i:I
    .end local v5           #propertyMask:I
    .end local v6           #useDisplayListProperties:Z
    .end local v7           #value:F
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .end local v9           #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_3
    move v6, v11

    goto :goto_1

    .restart local v0       #alphaHandled:Z
    .restart local v1       #count:I
    .restart local v2       #fraction:F
    .restart local v3       #i:I
    .restart local v5       #propertyMask:I
    .restart local v6       #useDisplayListProperties:Z
    .restart local v7       #value:F
    .restart local v8       #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .restart local v9       #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_4
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget v13, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #calls: Landroid/view/ViewPropertyAnimator;->setValue(IF)V
    invoke-static {v12, v13, v7}, Landroid/view/ViewPropertyAnimator;->access$900(Landroid/view/ViewPropertyAnimator;IF)V

    goto :goto_3

    .end local v1           #count:I
    .end local v3           #i:I
    .end local v7           #value:F
    .end local v9           #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_5
    and-int/lit16 v12, v5, 0x1ff

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v10, v12, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-nez v6, :cond_6

    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget v13, v12, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v12, Landroid/view/View;->mPrivateFlags:I

    :cond_6
    if-eqz v0, :cond_7

    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto/16 :goto_0
.end method
