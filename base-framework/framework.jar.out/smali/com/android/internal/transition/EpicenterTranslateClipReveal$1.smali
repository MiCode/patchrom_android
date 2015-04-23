.class final Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$terminalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
