.class final Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "RippleForeground.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogDecelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:F

.field private final mDrift:F

.field private final mOutputScale:F

.field private final mTimeScale:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "base"    # F
    .param p2, "timeScale"    # F
    .param p3, "drift"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    iput p3, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    div-float v0, v1, p2

    iput v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    return-void
.end method

.method private computeLog(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    float-to-double v2, v1

    neg-float v1, p1

    iget v4, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    iget v1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr v0, v1

    return v0
.end method
