.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private mMajorWeightMax:F

.field private mMajorWeightMin:F

.field private mMinorWeightMax:F

.field private mMinorWeightMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v1, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 51
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 59
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .local v3, screenWidth:I
    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v10, :cond_2

    const/4 v0, 0x1

    .line 62
    .local v0, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 64
    .local v7, widthMode:I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v6

    .line 67
    .local v6, width:I
    const/4 v1, 0x0

    .line 69
    .local v1, measure:Z
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 71
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 72
    .local v9, widthWeightMin:F
    :goto_1
    if-eqz v0, :cond_4

    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 73
    .local v8, widthWeightMax:F
    :goto_2
    const/high16 v10, -0x8000

    if-ne v7, v10, :cond_0

    .line 74
    int-to-float v10, v3

    mul-float/2addr v10, v9

    float-to-int v5, v10

    .line 75
    .local v5, weightedMin:I
    int-to-float v10, v3

    mul-float/2addr v10, v9

    float-to-int v4, v10

    .line 76
    .local v4, weightedMax:I
    cmpl-float v10, v9, v12

    if-lez v10, :cond_5

    if-ge v6, v5, :cond_5

    .line 77
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    const/4 v1, 0x1

    .line 87
    .end local v4           #weightedMax:I
    .end local v5           #weightedMin:I
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_1
    return-void

    .line 60
    .end local v0           #isPortrait:Z
    .end local v1           #measure:Z
    .end local v6           #width:I
    .end local v7           #widthMode:I
    .end local v8           #widthWeightMax:F
    .end local v9           #widthWeightMin:F
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .restart local v0       #isPortrait:Z
    .restart local v1       #measure:Z
    .restart local v6       #width:I
    .restart local v7       #widthMode:I
    :cond_3
    iget v9, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    goto :goto_1

    .line 72
    .restart local v9       #widthWeightMin:F
    :cond_4
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    goto :goto_2

    .line 79
    .restart local v4       #weightedMax:I
    .restart local v5       #weightedMin:I
    .restart local v8       #widthWeightMax:F
    :cond_5
    cmpl-float v10, v8, v12

    if-lez v10, :cond_0

    if-le v6, v4, :cond_0

    .line 80
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 81
    const/4 v1, 0x1

    goto :goto_3
.end method
