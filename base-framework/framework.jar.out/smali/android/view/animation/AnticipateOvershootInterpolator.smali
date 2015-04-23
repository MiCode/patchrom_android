.class public Landroid/view/animation/AnticipateOvershootInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "AnticipateOvershootInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "tension"    # F

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "tension"    # F
    .param p2, "extraTension"    # F

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    mul-float v0, p1, p2

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->setChangingConfiguration(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method private static a(FF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "s"    # F

    .prologue
    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static o(FF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "s"    # F

    .prologue
    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createAnticipateOvershootInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    mul-float v0, p1, v2

    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->a(FF)F

    move-result v0

    mul-float/2addr v0, v3

    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v2

    sub-float/2addr v0, v2

    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->o(FF)F

    move-result v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    goto :goto_0
.end method
