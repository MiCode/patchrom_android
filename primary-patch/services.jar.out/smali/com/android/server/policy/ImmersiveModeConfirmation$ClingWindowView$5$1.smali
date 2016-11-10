.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "c":I
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    iget-object v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$700(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method
