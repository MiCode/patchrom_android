.class public Lcom/android/internal/widget/FaceUnlockView;
.super Landroid/widget/RelativeLayout;
.source "FaceUnlockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceUnlockView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    const/4 v0, 0x0

    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    move v0, p2

    goto :goto_0

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, -0x8000

    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumWidth()I

    move-result v2

    .local v2, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumHeight()I

    move-result v1

    .local v1, minimumHeight:I
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v6

    .local v6, viewWidth:I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v5

    .local v5, viewHeight:I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, chosenSize:I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, newWidthMeasureSpec:I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, newHeightMeasureSpec:I
    invoke-super {p0, v4, v3}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
