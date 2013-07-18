.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;
.super Ljava/lang/Object;
.source "KeyguardWidgetCarousel.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFactor:F

.field mInternal:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;->mInternal:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x4020

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;->mFactor:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;->mInternal:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;->mFactor:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
