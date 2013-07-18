.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .parameter "securityMessageDisplay"
    .parameter "ecaView"
    .parameter "bouncerFrame"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_3

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-lez p3, :cond_4

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0       #anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .parameter "securityMessageDisplay"
    .parameter "ecaView"
    .parameter "bouncerFrame"
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-lez p3, :cond_3

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-lez p3, :cond_4

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0       #anim:Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method
