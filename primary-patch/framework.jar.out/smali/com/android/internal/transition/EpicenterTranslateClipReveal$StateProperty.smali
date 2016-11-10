.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
.super Landroid/util/Property;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final TARGET_X:C = 'x'

.field public static final TARGET_Y:C = 'y'


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor <init>(C)V
    .locals 3
    .param p1, "targetDimension"    # C

    .prologue
    const-class v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "object"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .local v1, "tempState":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V
    .locals 4
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .prologue
    const/16 v3, 0x78

    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v3, :cond_1

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v3, :cond_2

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    return-void

    :cond_1
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V

    return-void
.end method
