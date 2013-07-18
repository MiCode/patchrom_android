.class Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;
.super Ljava/lang/Object;
.source "UnReadHintAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    float-to-double v0, v3

    .local v0, r:D
    const-wide/high16 v3, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .local v2, rotation:F
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
