.class Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnificationSpec"
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 1.0f


# instance fields
.field public mMagnifiedRegionCenterX:F

.field public mMagnifiedRegionCenterY:F

.field public mScale:F

.field public mScaledOffsetX:F

.field public mScaledOffsetY:F

.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    return-void
.end method


# virtual methods
.method public initialize(FFF)V
    .locals 8
    .parameter "scale"
    .parameter "magnifiedRegionCenterX"
    .parameter "magnifiedRegionCenterY"

    .prologue
    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-object v6, v6, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .local v5, viewportWidth:I
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-object v6, v6, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .local v4, viewportHeight:I
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    div-float v2, v6, p1

    .local v2, minMagnifiedRegionCenterX:F
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-float v3, v6, p1

    .local v3, minMagnifiedRegionCenterY:F
    int-to-float v6, v5

    sub-float v0, v6, v2

    .local v0, maxMagnifiedRegionCenterX:F
    int-to-float v6, v4

    sub-float v1, v6, v3

    .local v1, maxMagnifiedRegionCenterY:F
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    mul-float/2addr v6, p1

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    mul-float/2addr v6, p1

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    return-void
.end method

.method public updateFrom(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;)V
    .locals 1
    .parameter "other"

    .prologue
    iget v0, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScale:F

    iget v0, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterX:F

    iget v0, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mMagnifiedRegionCenterY:F

    iget v0, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetX:F

    iget v0, p1, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$MagnificationSpec;->mScaledOffsetY:F

    return-void
.end method
