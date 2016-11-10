.class Landroid/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x1020052

    iget-object v2, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    # getter for: Landroid/transition/ChangeTransform;->mUseOverlay:Z
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$000(Landroid/transition/ChangeTransform;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x1020052

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x1020053

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v1}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    # invokes: Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$100(Landroid/view/View;)V

    return-void
.end method
