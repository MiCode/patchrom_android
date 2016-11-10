.class Landroid/animation/Animator$AnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    # setter for: Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;
    invoke-static {v0, p0}, Landroid/animation/Animator;->access$002(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public newInstance()Landroid/animation/Animator;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .local v0, "clone":Landroid/animation/Animator;
    # setter for: Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;
    invoke-static {v0, p0}, Landroid/animation/Animator;->access$002(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/Animator$AnimatorConstantState;->newInstance()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
