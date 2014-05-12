.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clicks:I

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$letter:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->clicks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->clicks:I

    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->clicks:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->performLongClick()Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    int-to-float v0, v1

    .local v0, offset:F
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    const/16 v1, 0x168

    :goto_1
    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 v1, -0x168

    goto :goto_1
.end method
