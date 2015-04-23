.class Lcom/android/internal/transition/TransitionConstants;
.super Ljava/lang/Object;
.source "TransitionConstants.java"


# static fields
.field static final FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

.field static final LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
