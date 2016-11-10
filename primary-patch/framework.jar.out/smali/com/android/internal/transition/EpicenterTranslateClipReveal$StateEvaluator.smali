.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p3, "endValue"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .prologue
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    check-cast p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-result-object v0

    return-object v0
.end method
