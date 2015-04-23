.class Landroid/widget/ActionMenuPresenter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter;->runItemAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    iget-object v1, v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
