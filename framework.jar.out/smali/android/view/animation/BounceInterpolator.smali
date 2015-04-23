.class public Landroid/view/animation/BounceInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "BounceInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private static bounce(F)F
    .locals 2
    .param p0, "t"    # F

    .prologue
    mul-float v0, p0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createBounceInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr p1, v0

    const v0, 0x3eb4fdf4    # 0.3535f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3f3da512    # 0.7408f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x3f0c14a5

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3f76e2eb    # 0.9644f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x3f5a43fe    # 0.8526f

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x3f859168    # 1.0435f

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    add-float/2addr v0, v1

    goto :goto_0
.end method
