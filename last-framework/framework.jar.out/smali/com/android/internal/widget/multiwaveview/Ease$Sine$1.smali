.class final Lcom/android/internal/widget/multiwaveview/Ease$Sine$1;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/Ease$Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "input"

    .prologue
    const/high16 v5, 0x3f80

    .line 117
    const/high16 v0, -0x4080

    div-float v1, p1, v5

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
