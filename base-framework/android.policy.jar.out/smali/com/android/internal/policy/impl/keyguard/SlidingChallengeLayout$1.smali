.class final Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;
.super Landroid/util/FloatProperty;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;
    .locals 1
    .parameter "view"

    .prologue
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;->get(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)V
    .locals 0
    .parameter "view"
    .parameter "value"

    .prologue
    iput p2, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;->setValue(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)V

    return-void
.end method
