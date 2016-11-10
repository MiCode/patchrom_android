.class public Landroid/animation/IntArrayEvaluator;
.super Ljava/lang/Object;
.source "IntArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[I>;"
    }
.end annotation


# instance fields
.field private mArray:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "reuseArray"    # [I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p2, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/IntArrayEvaluator;->evaluate(F[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[I[I)[I
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [I
    .param p3, "endValue"    # [I

    .prologue
    iget-object v0, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    .local v0, "array":[I
    if-nez v0, :cond_0

    array-length v4, p2

    new-array v0, v4, [I

    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget v3, p2, v2

    .local v3, "start":I
    aget v1, p3, v2

    .local v1, "end":I
    int-to-float v4, v3

    sub-int v5, v1, v3

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_1
    return-object v0
.end method
