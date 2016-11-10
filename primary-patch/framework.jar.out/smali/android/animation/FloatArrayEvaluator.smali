.class public Landroid/animation/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "reuseArray"    # [F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [F
    .param p3, "endValue"    # [F

    .prologue
    iget-object v0, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    .local v0, "array":[F
    if-nez v0, :cond_0

    array-length v4, p2

    new-array v0, v4, [F

    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget v3, p2, v2

    .local v3, "start":F
    aget v1, p3, v2

    .local v1, "end":F
    sub-float v4, v1, v3

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "end":F
    .end local v3    # "start":F
    :cond_1
    return-object v0
.end method
