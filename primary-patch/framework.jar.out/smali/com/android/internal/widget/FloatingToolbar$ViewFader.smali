.class final Lcom/android/internal/widget/FloatingToolbar$ViewFader;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewFader"
.end annotation


# static fields
.field private static final FADE_IN_DURATION:I = 0x96

.field private static final FADE_OUT_DURATION:I = 0xfa


# instance fields
.field private final mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private final mFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/android/internal/widget/FloatingToolbar$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public fadeOut(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
