.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;
.super Ljava/lang/Object;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "foc"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    const/high16 v3, 0x3f80

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
