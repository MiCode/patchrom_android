.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x6

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/widget/GridLayout$Alignment; = null

.field public static final BOTTOM:Landroid/widget/GridLayout$Alignment; = null

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/widget/GridLayout$Alignment; = null

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x4

.field static final DEBUG:Z = false

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final FILL:Landroid/widget/GridLayout$Alignment; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/widget/GridLayout$Alignment; = null

.field public static final LEFT:Landroid/widget/GridLayout$Alignment; = null

.field static final MAX_SIZE:I = 0x186a0

.field private static final ORIENTATION:I = 0x0

.field static final PRF:I = 0x1

.field public static final RIGHT:Landroid/widget/GridLayout$Alignment; = null

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x2

.field static final TAG:Ljava/lang/String; = null

.field public static final TOP:Landroid/widget/GridLayout$Alignment; = null

.field private static final TRAILING:Landroid/widget/GridLayout$Alignment; = null

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment; = null

.field private static final USE_DEFAULT_MARGINS:I = 0x5

.field public static final VERTICAL:I = 0x1


# instance fields
.field alignmentMode:I

.field defaultGap:I

.field final horizontalAxis:Landroid/widget/GridLayout$Axis;

.field layoutParamsValid:Z

.field orientation:I

.field useDefaultMargins:Z

.field final verticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->TAG:Ljava/lang/String;

    .line 2390
    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    .line 2396
    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    .line 2402
    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    .line 2412
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 2418
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    .line 2424
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    .line 2430
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    .line 2437
    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    .line 2450
    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0}, Landroid/widget/GridLayout$5;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    .line 2500
    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v3, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 234
    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    .line 235
    iput-boolean v2, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    .line 236
    iput v2, p0, Landroid/widget/GridLayout;->orientation:I

    .line 237
    iput-boolean v2, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    .line 238
    iput v3, p0, Landroid/widget/GridLayout;->alignmentMode:I

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout;->defaultGap:I

    .line 252
    sget-object v1, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 254
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 255
    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 256
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 257
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 258
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 259
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 260
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, b:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 548
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .parameter "flexibility"

    .prologue
    .line 2512
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3
    .parameter "minorRange"
    .parameter "minorWasDefined"
    .parameter "count"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v1

    .line 645
    .local v1, size:I
    if-nez p2, :cond_0

    .line 649
    .end local v1           #size:I
    :goto_0
    return v1

    .line 648
    .restart local v1       #size:I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 649
    .local v0, min:I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 648
    .end local v0           #min:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "graphics"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 758
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    .line 759
    .local v6, dx:I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v7

    .line 760
    .local v7, dy:I
    add-int v0, v6, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    add-int v0, v6, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 761
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 764
    int-to-float v1, p1

    int-to-float v2, p2

    add-int/lit8 v0, p3, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, p4, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 765
    return-void
.end method

.method private static fits([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 621
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v1

    .line 624
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 625
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 4
    .parameter "gravity"
    .parameter "horizontal"

    .prologue
    .line 554
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 555
    .local v1, mask:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 556
    .local v2, shift:I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 557
    .local v0, flags:I
    packed-switch v0, :pswitch_data_0

    .line 567
    :pswitch_0
    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 554
    .end local v0           #flags:I
    .end local v1           #mask:I
    .end local v2           #shift:I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 555
    .restart local v1       #mask:I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 559
    .restart local v0       #flags:I
    .restart local v2       #shift:I
    :pswitch_1
    sget-object v3, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 561
    :pswitch_2
    sget-object v3, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 563
    :pswitch_3
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 565
    :pswitch_4
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->defaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .parameter "c"
    .parameter "isAtEdge"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 580
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultMarginValue(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 7
    .parameter "c"
    .parameter "p"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 584
    iget-boolean v5, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    if-nez v5, :cond_0

    .line 592
    :goto_0
    return v4

    .line 587
    :cond_0
    if-eqz p3, :cond_2

    iget-object v3, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 588
    .local v3, spec:Landroid/widget/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 589
    .local v0, axis:Landroid/widget/GridLayout$Axis;
    :goto_2
    iget-object v2, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 590
    .local v2, span:Landroid/widget/GridLayout$Interval;
    if-eqz p4, :cond_5

    iget v5, v2, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v5, :cond_4

    .line 592
    .local v1, isAtEdge:Z
    :cond_1
    :goto_3
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    goto :goto_0

    .line 587
    .end local v0           #axis:Landroid/widget/GridLayout$Axis;
    .end local v1           #isAtEdge:Z
    .end local v2           #span:Landroid/widget/GridLayout$Interval;
    .end local v3           #spec:Landroid/widget/GridLayout$Spec;
    :cond_2
    iget-object v3, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    .line 588
    .restart local v3       #spec:Landroid/widget/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    .restart local v0       #axis:Landroid/widget/GridLayout$Axis;
    .restart local v2       #span:Landroid/widget/GridLayout$Interval;
    :cond_4
    move v1, v4

    .line 590
    goto :goto_3

    :cond_5
    iget v5, v2, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v1, v4

    goto :goto_3
.end method

.method private getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 604
    iget v5, p0, Landroid/widget/GridLayout;->alignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 605
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 612
    :goto_0
    return v5

    .line 607
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 608
    .local v0, axis:Landroid/widget/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 609
    .local v3, margins:[I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 610
    .local v2, lp:Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 611
    .local v4, spec:Landroid/widget/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->min:I

    .line 612
    .local v1, index:I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 607
    .end local v0           #axis:Landroid/widget/GridLayout$Axis;
    .end local v1           #index:I
    .end local v2           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v3           #margins:[I
    .end local v4           #spec:Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    .line 608
    .restart local v0       #axis:Landroid/widget/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 610
    .restart local v2       #lp:Landroid/widget/GridLayout$LayoutParams;
    .restart local v3       #margins:[I
    :cond_3
    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    .line 611
    .restart local v4       #spec:Landroid/widget/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 925
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "child"
    .parameter "horizontal"

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    .line 713
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 714
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 716
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 717
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 724
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 726
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .parameter "a"
    .parameter "valueIfEmpty"

    .prologue
    .line 538
    move v2, p1

    .line 539
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 540
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4
    .parameter "child"
    .parameter "parentWidthSpec"
    .parameter "parentHeightSpec"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 855
    iget v2, p0, Landroid/widget/GridLayout;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/GridLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 857
    .local v1, childWidthSpec:I
    iget v2, p0, Landroid/widget/GridLayout;->mPaddingTop:I

    iget v3, p0, Landroid/widget/GridLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 859
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 860
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .parameter "widthSpec"
    .parameter "heightSpec"
    .parameter "firstPass"

    .prologue
    .line 863
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, N:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 864
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 865
    .local v3, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 866
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v19

    .line 867
    .local v19, lp:Landroid/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 868
    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 870
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GridLayout;->orientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 871
    .local v16, horizontal:Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 872
    .local v21, spec:Landroid/widget/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v4, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 873
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 874
    .local v20, span:Landroid/widget/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 875
    .local v14, axis:Landroid/widget/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 876
    .local v18, locations:[I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 877
    .local v15, cellSize:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 878
    .local v6, viewSize:I
    if-eqz v16, :cond_6

    .line 879
    move-object/from16 v0, v19

    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 870
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v20           #span:Landroid/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/widget/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 871
    .restart local v16       #horizontal:Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 874
    .restart local v20       #span:Landroid/widget/GridLayout$Interval;
    .restart local v21       #spec:Landroid/widget/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_4

    .line 881
    .restart local v6       #viewSize:I
    .restart local v14       #axis:Landroid/widget/GridLayout$Axis;
    .restart local v15       #cellSize:I
    .restart local v18       #locations:[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 886
    .end local v3           #c:Landroid/view/View;
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v19           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v20           #span:Landroid/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/widget/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .parameter "a"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 633
    array-length v0, p0

    .line 634
    .local v0, length:I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 635
    return-void
.end method

.method private protect(I)I
    .locals 1
    .parameter "alignment"

    .prologue
    .line 921
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method private static setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter "lp"
    .parameter "row"
    .parameter "rowSpan"
    .parameter "col"
    .parameter "colSpan"

    .prologue
    .line 638
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 639
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 640
    return-void
.end method

.method public static spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"

    .prologue
    .line 2326
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "size"

    .prologue
    .line 2314
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 6
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2287
    new-instance v0, Landroid/widget/GridLayout$Spec;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "alignment"

    .prologue
    .line 2301
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridLayout;->orientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 655
    .local v5, horizontal:Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 656
    .local v3, axis:Landroid/widget/GridLayout$Axis;
    :goto_1
    iget v0, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 658
    .local v4, count:I
    :goto_2
    const/4 v8, 0x0

    .line 659
    .local v8, major:I
    const/4 v14, 0x0

    .line 660
    .local v14, minor:I
    new-array v13, v4, [I

    .line 662
    .local v13, maxSizes:[I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, N:I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 663
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v7

    .line 665
    .local v7, lp:Landroid/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 666
    .local v11, majorSpec:Landroid/widget/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 667
    .local v9, majorRange:Landroid/widget/GridLayout$Interval;
    iget-boolean v12, v11, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 668
    .local v12, majorWasDefined:Z
    invoke-virtual {v9}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v10

    .line 669
    .local v10, majorSpan:I
    if-eqz v12, :cond_0

    .line 670
    iget v8, v9, Landroid/widget/GridLayout$Interval;->min:I

    .line 673
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 674
    .local v17, minorSpec:Landroid/widget/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 675
    .local v15, minorRange:Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 676
    .local v18, minorWasDefined:Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v16

    .line 677
    .local v16, minorSpan:I
    if-eqz v18, :cond_1

    .line 678
    iget v14, v15, Landroid/widget/GridLayout$Interval;->min:I

    .line 681
    :cond_1
    if-eqz v4, :cond_b

    .line 683
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 684
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 685
    if-eqz v18, :cond_8

    .line 686
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 654
    .end local v2           #N:I
    .end local v3           #axis:Landroid/widget/GridLayout$Axis;
    .end local v4           #count:I
    .end local v5           #horizontal:Z
    .end local v6           #i:I
    .end local v7           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v8           #major:I
    .end local v9           #majorRange:Landroid/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v13           #maxSizes:[I
    .end local v14           #minor:I
    .end local v15           #minorRange:Landroid/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 655
    .restart local v5       #horizontal:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    .line 656
    .restart local v3       #axis:Landroid/widget/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 665
    .restart local v2       #N:I
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v7       #lp:Landroid/widget/GridLayout$LayoutParams;
    .restart local v8       #major:I
    .restart local v13       #maxSizes:[I
    .restart local v14       #minor:I
    :cond_6
    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    .line 673
    .restart local v9       #majorRange:Landroid/widget/GridLayout$Interval;
    .restart local v10       #majorSpan:I
    .restart local v11       #majorSpec:Landroid/widget/GridLayout$Spec;
    .restart local v12       #majorWasDefined:Z
    :cond_7
    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 688
    .restart local v15       #minorRange:Landroid/widget/GridLayout$Interval;
    .restart local v16       #minorSpan:I
    .restart local v17       #minorSpec:Landroid/widget/GridLayout$Spec;
    .restart local v18       #minorWasDefined:Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 689
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 691
    :cond_9
    const/4 v14, 0x0

    .line 692
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 697
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    .line 700
    :cond_b
    if-eqz v5, :cond_c

    .line 701
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    .line 706
    :goto_7
    add-int v14, v14, v16

    .line 662
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 703
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 708
    .end local v7           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v9           #majorRange:Landroid/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v15           #minorRange:Landroid/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 709
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 742
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 747
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 752
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .parameter "alignment"
    .parameter "horizontal"

    .prologue
    .line 942
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/widget/GridLayout;->alignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    if-nez v0, :cond_0

    .line 734
    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    .line 737
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 597
    .local v0, lp:Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 600
    .local v1, margin:I
    :goto_0
    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMarginValue(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1           #margin:I
    :cond_0
    return v1

    .line 597
    :cond_1
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const/4 v0, 0x0

    .line 932
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Landroid/widget/GridLayout;->orientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method final isGone(Landroid/view/View;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "visibility"

    .prologue
    .line 843
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;I)V

    .line 844
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 845
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 813
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 962
    sub-int v38, p4, p2

    .line 963
    .local v38, targetWidth:I
    sub-int v37, p5, p3

    .line 965
    .local v37, targetHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v30

    .line 966
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v32

    .line 967
    .local v32, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v31

    .line 968
    .local v31, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v29

    .line 970
    .local v29, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v38, v30

    sub-int v49, v49, v31

    invoke-virtual/range {v48 .. v49}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v37, v32

    sub-int v49, v49, v29

    invoke-virtual/range {v48 .. v49}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v20

    .line 974
    .local v20, hLocations:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v42

    .line 976
    .local v42, vLocations:[I
    const/16 v22, 0x0

    .local v22, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    .local v3, N:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v3, :cond_3

    .line 977
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 978
    .local v7, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 976
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 979
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v24

    .line 980
    .local v24, lp:Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v24

    iget-object v14, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 981
    .local v14, columnSpec:Landroid/widget/GridLayout$Spec;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v36, v0

    .line 983
    .local v36, rowSpec:Landroid/widget/GridLayout$Spec;
    iget-object v13, v14, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 984
    .local v13, colSpan:Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v35, v0

    .line 986
    .local v35, rowSpan:Landroid/widget/GridLayout$Interval;
    iget v0, v13, Landroid/widget/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v44, v20, v48

    .line 987
    .local v44, x1:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/widget/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v46, v42, v48

    .line 989
    .local v46, y1:I
    iget v0, v13, Landroid/widget/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v45, v20, v48

    .line 990
    .local v45, x2:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/widget/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v47, v42, v48

    .line 992
    .local v47, y2:I
    sub-int v11, v45, v44

    .line 993
    .local v11, cellWidth:I
    sub-int v10, v47, v46

    .line 995
    .local v10, cellHeight:I
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v28

    .line 996
    .local v28, pWidth:I
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v27

    .line 998
    .local v27, pHeight:I
    iget-object v0, v14, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v19

    .line 999
    .local v19, hAlign:Landroid/widget/GridLayout$Alignment;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v41

    .line 1003
    .local v41, vAlign:Landroid/widget/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/GridLayout$Bounds;

    .line 1004
    .local v12, colBounds:Landroid/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/widget/GridLayout$Bounds;

    .line 1008
    .local v34, rowBounds:Landroid/widget/GridLayout$Bounds;
    const/16 v48, 0x0

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v12, v0}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v11, v49

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->protect(I)I

    move-result v8

    .line 1010
    .local v8, c2ax:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v10, v49

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->protect(I)I

    move-result v9

    .line 1012
    .local v9, c2ay:I
    const/16 v48, 0x1

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    .line 1013
    .local v23, leftMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v39

    .line 1014
    .local v39, topMargin:I
    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 1015
    .local v33, rightMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    .line 1018
    .local v6, bottomMargin:I
    add-int v48, v23, v28

    add-int v26, v48, v33

    .line 1019
    .local v26, mWidth:I
    add-int v48, v39, v27

    add-int v25, v48, v6

    .line 1022
    .local v25, mHeight:I
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v12, v7, v0, v1}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/widget/GridLayout$Alignment;I)I

    move-result v4

    .line 1023
    .local v4, a2vx:I
    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/widget/GridLayout$Alignment;I)I

    move-result v5

    .line 1025
    .local v5, a2vy:I
    add-int v48, v8, v4

    add-int v17, v48, v23

    .line 1026
    .local v17, dx:I
    add-int v48, v9, v5

    add-int v18, v48, v39

    .line 1028
    .local v18, dy:I
    add-int v48, v23, v33

    sub-int v11, v11, v48

    .line 1029
    add-int v48, v39, v6

    sub-int v10, v10, v48

    .line 1031
    const/16 v40, 0x1

    .line 1032
    .local v40, type:I
    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v11, v2}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v43

    .line 1033
    .local v43, width:I
    move-object/from16 v0, v41

    move/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v21

    .line 1035
    .local v21, height:I
    add-int v48, v30, v44

    add-int v15, v48, v17

    .line 1036
    .local v15, cx:I
    add-int v48, v32, v46

    add-int v16, v48, v18

    .line 1037
    .local v16, cy:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v48

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v48

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    .line 1038
    :cond_1
    const/high16 v48, 0x4000

    move/from16 v0, v43

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x4000

    move/from16 v0, v21

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1040
    :cond_2
    add-int v48, v15, v43

    add-int v49, v16, v21

    move/from16 v0, v16

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1042
    .end local v4           #a2vx:I
    .end local v5           #a2vy:I
    .end local v6           #bottomMargin:I
    .end local v7           #c:Landroid/view/View;
    .end local v8           #c2ax:I
    .end local v9           #c2ay:I
    .end local v10           #cellHeight:I
    .end local v11           #cellWidth:I
    .end local v12           #colBounds:Landroid/widget/GridLayout$Bounds;
    .end local v13           #colSpan:Landroid/widget/GridLayout$Interval;
    .end local v14           #columnSpec:Landroid/widget/GridLayout$Spec;
    .end local v15           #cx:I
    .end local v16           #cy:I
    .end local v17           #dx:I
    .end local v18           #dy:I
    .end local v19           #hAlign:Landroid/widget/GridLayout$Alignment;
    .end local v21           #height:I
    .end local v23           #leftMargin:I
    .end local v24           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v25           #mHeight:I
    .end local v26           #mWidth:I
    .end local v27           #pHeight:I
    .end local v28           #pWidth:I
    .end local v33           #rightMargin:I
    .end local v34           #rowBounds:Landroid/widget/GridLayout$Bounds;
    .end local v35           #rowSpan:Landroid/widget/GridLayout$Interval;
    .end local v36           #rowSpec:Landroid/widget/GridLayout$Spec;
    .end local v39           #topMargin:I
    .end local v40           #type:I
    .end local v41           #vAlign:Landroid/widget/GridLayout$Alignment;
    .end local v43           #width:I
    .end local v44           #x1:I
    .end local v45           #x2:I
    .end local v46           #y1:I
    .end local v47           #y2:I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 892
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 894
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 899
    iget v6, p0, Landroid/widget/GridLayout;->orientation:I

    if-nez v6, :cond_0

    .line 900
    iget-object v6, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .line 901
    .local v5, width:I
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 902
    iget-object v6, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 909
    .local v1, height:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    .line 910
    .local v0, hPadding:I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 912
    .local v4, vPadding:I
    add-int v6, v0, v5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 913
    .local v3, measuredWidth:I
    add-int v6, v4, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 915
    .local v2, measuredHeight:I
    invoke-static {v3, p1, v8}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v6

    invoke-static {v2, p2, v8}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    .line 918
    return-void

    .line 904
    .end local v0           #hPadding:I
    .end local v1           #height:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    .end local v4           #vPadding:I
    .end local v5           #width:I
    :cond_0
    iget-object v6, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 905
    .restart local v1       #height:I
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 906
    iget-object v6, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .restart local v5       #width:I
    goto :goto_0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 822
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 823
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 824
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 831
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 832
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 833
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 937
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 938
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 939
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter "alignmentMode"

    .prologue
    .line 459
    iput p1, p0, Landroid/widget/GridLayout;->alignmentMode:I

    .line 460
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 461
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 378
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 379
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 380
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter "columnOrderPreserved"

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 531
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 532
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 533
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 309
    iget v0, p0, Landroid/widget/GridLayout;->orientation:I

    if-eq v0, p1, :cond_0

    .line 310
    iput p1, p0, Landroid/widget/GridLayout;->orientation:I

    .line 311
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 312
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 314
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "rowCount"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 345
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 346
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 347
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter "rowOrderPreserved"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 495
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 496
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 497
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter "useDefaultMargins"

    .prologue
    .line 423
    iput-boolean p1, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    .line 424
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 425
    return-void
.end method
