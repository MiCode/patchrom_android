.class Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListAnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/StateListAnimator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/StateListAnimator;

    .prologue
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    # setter for: Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public newInstance()Landroid/animation/StateListAnimator;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v1}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    .local v0, "clone":Landroid/animation/StateListAnimator;
    # setter for: Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->newInstance()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method
