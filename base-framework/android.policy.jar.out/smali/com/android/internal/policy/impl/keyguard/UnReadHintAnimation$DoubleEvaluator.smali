.class Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;
.super Ljava/lang/Object;
.source "UnReadHintAnimation.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoubleEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 8
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    float-to-double v2, p1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    check-cast p2, Ljava/lang/Double;

    .end local p2
    check-cast p3, Ljava/lang/Double;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;->evaluate(FLjava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
