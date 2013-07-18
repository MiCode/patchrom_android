.class Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTempTransformationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field final synthetic val$this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->val$this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->mTempTransformationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;
    .locals 4
    .parameter "fraction"
    .parameter "fromSpec"
    .parameter "toSpec"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->mTempTransformationSpec:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    .local v0, result:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;
    iget v1, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v2, p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v3, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v1, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iget v2, p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iget v3, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iget v1, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v2, p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v3, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v1, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v2, p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v3, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v1, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    iget v2, p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    iget v3, p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    check-cast p2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    .end local p2
    check-cast p3, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->evaluate(FLcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;

    move-result-object v0

    return-object v0
.end method
