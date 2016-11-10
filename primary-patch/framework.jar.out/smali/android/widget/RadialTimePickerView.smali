.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final FADE_IN_DURATION:I = 0x1f4

.field private static final FADE_OUT_DURATION:I = 0x1f4

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectorColor:I

.field private final mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    sput-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v3, 0x169

    new-array v3, v3, [I

    sput-object v3, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .local v0, "angle":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    sget-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    sget-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v13, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/graphics/Paint;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v13, 0x2

    const/16 v14, 0xc

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v13, 0x2

    const/16 v14, 0xc

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/16 v13, 0xc

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    const/16 v13, 0xc

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .local v9, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1010033

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v9, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v13, "sans-serif"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x2

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v13, 0x5

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .local v12, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v13, 0x28

    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .local v11, "selectorActivatedColor":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v13, 0x28

    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    move-result-object v4

    .local v4, "activatedStateSet":[I
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x4

    const v15, 0x10600dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v13, 0x105010f

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    const v13, 0x1050110

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    const v13, 0x1050112

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    const v13, 0x1050111

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    const v15, 0x1050114

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x1

    const v15, 0x1050114

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x2

    const v15, 0x1050115

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v14, 0x0

    const v15, 0x1050113

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v14, 0x1

    const v15, 0x1050113

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v14, 0x2

    const v15, 0x10500a9

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    new-instance v13, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v13, 0xb

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .local v6, "currentHour":I
    const/16 v13, 0xc

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, "currentMinute":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private applyAlpha(II)I
    .locals 8
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v1, v2, 0xff

    .local v1, "srcAlpha":I
    int-to-double v2, v1

    int-to-double v4, p2

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    .local v0, "dstAlpha":I
    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .prologue
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v8

    sub-int v9, v0, v2

    .local v9, "innerNumbersRadius":I
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    int-to-float v3, v9

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v8

    int-to-float v6, v0

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .end local v9    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;F)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .local v9, "hoursAlpha":I
    if-lez v9, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v1, 0x0

    aget-object v6, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v1, 0x0

    aget-object v7, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private drawMinutes(Landroid/graphics/Canvas;F)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .local v9, "minutesAlpha":I
    if-lez v9, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v1, 0x1

    aget-object v6, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v1, 0x1

    aget-object v6, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    const/4 v10, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v11, v0, v1

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "selectorPath"    # Landroid/graphics/Path;
    .param p4, "alphaMod"    # F

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v10, v4

    .local v10, "alpha":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Landroid/widget/RadialTimePickerView;->applyAlpha(II)I

    move-result v13

    .local v13, "color":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    move/from16 v24, v0

    .local v24, "selRadius":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v5, v5, p2

    sub-int v23, v4, v5

    .local v23, "selLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, p2, 0x2

    aget v4, v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .local v20, "selAngleRad":D
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v4

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v6, v0

    mul-float/2addr v5, v6

    add-float v19, v4, v5

    .local v19, "selCenterX":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float v22, v4, v5

    .local v22, "selCenterY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v18, v4, v5

    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    move/from16 v0, v24

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, p2, 0x2

    aget v4, v4, v5

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_2

    const/16 v25, 0x1

    .local v25, "shouldDrawDot":Z
    :goto_0
    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v16, v4, v5

    .local v16, "dotPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .end local v16    # "dotPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .local v26, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .local v14, "cos":D
    sub-int v17, v23, v24

    .local v17, "lineLength":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v28, v0

    mul-double v28, v28, v26

    move-wide/from16 v0, v28

    double-to-int v5, v0

    add-int v11, v4, v5

    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v28, v0

    mul-double v28, v28, v14

    move-wide/from16 v0, v28

    double-to-int v5, v0

    sub-int v12, v4, v5

    .local v12, "centerY":I
    move/from16 v0, v17

    int-to-double v4, v0

    mul-double v4, v4, v26

    double-to-int v4, v4

    add-int/2addr v4, v11

    int-to-float v7, v4

    .local v7, "linePointX":F
    move/from16 v0, v17

    int-to-double v4, v0

    mul-double/2addr v4, v14

    double-to-int v4, v4

    sub-int v4, v12, v4

    int-to-float v8, v4

    .local v8, "linePointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v9, v4, v5

    .local v9, "linePaint":Landroid/graphics/Paint;
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .end local v7    # "linePointX":F
    .end local v8    # "linePointY":F
    .end local v9    # "linePaint":Landroid/graphics/Paint;
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v14    # "cos":D
    .end local v17    # "lineLength":I
    .end local v25    # "shouldDrawDot":Z
    .end local v26    # "sin":D
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    .prologue
    move-object/from16 v0, p8

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p8

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, p11

    int-to-float v9, v0

    const/high16 v10, 0x41f00000    # 30.0f

    div-float v5, v9, v10

    .local v5, "activatedIndex":F
    float-to-int v4, v5

    .local v4, "activatedFloor":I
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    rem-int/lit8 v3, v9, 0xc

    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v9, 0xc

    if-ge v7, v9, :cond_4

    if-eq v4, v7, :cond_0

    if-ne v3, v7, :cond_1

    :cond_0
    const/4 v2, 0x1

    .local v2, "activated":Z
    :goto_1
    if-eqz p12, :cond_2

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v2    # "activated":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "activated":Z
    :cond_2
    if-eqz p10, :cond_3

    if-eqz v2, :cond_3

    const/16 v9, 0x20

    :goto_3
    or-int/lit8 v8, v9, 0x8

    .local v8, "stateMask":I
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .local v6, "color":I
    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p9

    invoke-direct {p0, v6, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v9, p5, v7

    aget v10, p6, v7

    aget v11, p7, v7

    move-object/from16 v0, p8

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v2    # "activated":Z
    :cond_4
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0

    :cond_1
    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .local v11, "innerBound":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v12, "outerBound":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v13, v13

    sub-float v13, p1, v13

    float-to-double v4, v13

    .local v4, "dX":D
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v13, v13

    sub-float v13, p2, v13

    float-to-double v6, v13

    .local v6, "dY":D
    mul-double v14, v4, v4

    mul-double v16, v6, v6

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .local v8, "distFromCenter":D
    int-to-double v14, v11

    cmpg-double v13, v8, v14

    if-ltz v13, :cond_0

    if-eqz p3, :cond_4

    int-to-double v14, v12

    cmpl-double v13, v8, v14

    if-lez v13, :cond_4

    :cond_0
    const/4 v3, -0x1

    :cond_1
    :goto_1
    return v3

    .end local v4    # "dX":D
    .end local v6    # "dY":D
    .end local v8    # "distFromCenter":D
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v13, :cond_3

    const/4 v10, 0x0

    .local v10, "index":I
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v14, v14, v10

    sub-int v2, v13, v14

    .local v2, "center":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v11, v2, v13

    .restart local v11    # "innerBound":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int v12, v2, v13

    .restart local v12    # "outerBound":I
    goto :goto_0

    .end local v2    # "center":I
    .end local v10    # "index":I
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .restart local v4    # "dX":D
    .restart local v6    # "dY":D
    .restart local v8    # "distFromCenter":D
    .restart local v11    # "innerBound":I
    .restart local v12    # "outerBound":I
    :cond_4
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    .local v3, "degrees":I
    if-gez v3, :cond_1

    add-int/lit16 v3, v3, 0x168

    goto :goto_1
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 15
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const/high16 v3, 0x3e800000    # 0.25f

    .local v3, "delayMultiplier":F
    const/high16 v11, 0x3f800000    # 1.0f

    .local v11, "transitionDurationMultiplier":F
    const/high16 v10, 0x3fa00000    # 1.25f

    .local v10, "totalDurationMultiplier":F
    const/16 v9, 0x271

    .local v9, "totalDuration":I
    const v4, 0x3e4ccccd    # 0.2f

    .local v4, "delayPoint":F
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    .local v6, "kf0":Landroid/animation/Keyframe;
    const v12, 0x3e4ccccd    # 0.2f

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .local v7, "kf1":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .local v8, "kf2":Landroid/animation/Keyframe;
    const-string v12, "value"

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {p0, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x271

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const-string v1, "value"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    const/16 v0, 0xc

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1
    .param p1, "hour"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v0, v7

    .local v0, "dX":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    float-to-double v2, v7

    .local v2, "dY":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .local v4, "distFromCenter":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v7

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    .end local v0    # "dX":D
    .end local v2    # "dY":D
    .end local v4    # "distFromCenter":D
    :cond_0
    return v6
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v1

    .local v1, "isOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .local v0, "degrees":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v8, :cond_8

    invoke-static {v0, v6}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v8

    rem-int/lit16 v3, v8, 0x168

    .local v3, "snapDegrees":I
    iget-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v8, v1, :cond_2

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v8, v8, v6

    if-eq v8, v3, :cond_7

    :cond_2
    move v5, v7

    .local v5, "valueChanged":Z
    :goto_1
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v8, v6

    const/4 v4, 0x0

    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    .local v2, "newValue":I
    :goto_2
    if-nez v5, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_0

    :cond_3
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v6, v4, v2, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    if-nez v5, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_6
    move v6, v7

    goto :goto_0

    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_7
    move v5, v6

    goto :goto_1

    .end local v3    # "snapDegrees":I
    :cond_8
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v8

    rem-int/lit16 v3, v8, 0x168

    .restart local v3    # "snapDegrees":I
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v8, v8, v7

    if-eq v8, v3, :cond_9

    move v5, v7

    .restart local v5    # "valueChanged":Z
    :goto_3
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v8, v7

    const/4 v4, 0x1

    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    .restart local v2    # "newValue":I
    goto :goto_2

    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_9
    move v5, v6

    goto :goto_3
.end method

.method private initData()V
    .locals 5

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v4, :cond_1

    move v0, v2

    .local v0, "hoursAlpha":I
    :goto_1
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v4, :cond_2

    move v1, v3

    .local v1, "minutesAlpha":I
    :goto_2
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    return-void

    .end local v0    # "hoursAlpha":I
    .end local v1    # "minutesAlpha":I
    :cond_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .restart local v0    # "hoursAlpha":I
    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .local v0, "count":I
    const/16 v2, 0x8

    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v3, v4, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    const/4 v2, 0x7

    :goto_1
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v3, 0x0

    rem-int/lit8 v4, p1, 0xc

    mul-int/lit8 v1, v4, 0x1e

    .local v1, "degrees":I
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v1, v4, v3

    if-eqz p1, :cond_0

    rem-int/lit8 v4, p1, 0x18

    const/16 v5, 0xc

    if-ge v4, v5, :cond_4

    :cond_0
    move v0, v3

    .local v0, "amOrPm":I
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v2

    .local v2, "isOnInnerCircle":Z
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v0, :cond_1

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v2, :cond_2

    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v3, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_3
    return-void

    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    const/16 v2, 0x1e

    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p0, v0

    :goto_0
    return p0

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1e

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;F)V

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    return-void

    .end local v0    # "alphaMod":F
    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v2, 0x0

    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .local v1, "autoAdvance":Z
    if-nez v0, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_3
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_3

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_0
.end method
