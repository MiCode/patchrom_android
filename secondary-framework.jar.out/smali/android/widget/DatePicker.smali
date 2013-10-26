.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;,
        Landroid/widget/DatePicker$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mLayoutResId:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "MM/dd/yyyy"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/DatePicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v13, Lcom/android/internal/R$styleable;->DatePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v13, 0x4

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .local v11, spinnersShown:Z
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .local v4, calendarViewShown:Z
    const/4 v13, 0x0

    const/16 v14, 0x76c

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .local v12, startYear:I
    const/4 v13, 0x1

    const/16 v14, 0x834

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .local v5, endYear:I
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, minDate:Ljava/lang/String;
    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, maxDate:Ljava/lang/String;
    const/4 v13, 0x6

    const v14, 0x1090036

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .local v7, layoutResourceId:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/DatePicker;->mLayoutResId:I

    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v7, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v10, Landroid/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    .local v10, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    new-instance v10, Landroid/widget/DatePicker$OnDateChangeListener;

    .end local v10           #onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/DatePicker$OnDateChangeListener;-><init>(Landroid/widget/DatePicker;)V

    .restart local v10       #onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v13, 0x102027b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    const v13, 0x102027f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v14, Landroid/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    const v13, 0x102027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v14, 0x102033f

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const v13, 0x102027c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v14, 0x102033f

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const v13, 0x102027e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v14, 0x102033f

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    if-nez v11, :cond_3

    if-nez v4, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMinDate(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMaxDate(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->reorderSpinners()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->setContentDescriptions()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "date"
    .parameter "outDate"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/text/ParseException;
    sget-object v1, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .local v1, order:[C
    array-length v2, v1

    .local v2, spinnerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :sswitch_0
    iget-object v3, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v0, v2}, Landroid/widget/DatePicker;->setPosState(Landroid/widget/NumberPicker;II)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v0, v2}, Landroid/widget/DatePicker;->setPosState(Landroid/widget/NumberPicker;II)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v0, v2}, Landroid/widget/DatePicker;->setPosState(Landroid/widget/NumberPicker;II)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private resetShortMonths()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/DatePicker;->mLayoutResId:I

    const v2, 0x6030024

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x1020340

    const v2, 0x102033e

    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c7

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c8

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c5

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c6

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c9

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404ca

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .parameter "locale"

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_miui_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
    
    :cond_miui_0
    invoke-direct {p0}, Landroid/widget/DatePicker;->resetShortMonths()V
    
    return-void
.end method

.method private setDate(III)V
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    const/4 v0, 0x5

    .local v0, imeOptions:I
    :goto_0
    const v2, 0x102033f

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void

    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private setPosState(Landroid/widget/NumberPicker;II)V
    .locals 2
    .parameter "v"
    .parameter "pos"
    .parameter "count"

    .prologue
    instance-of v1, p1, Lmiui/widget/NumberPicker;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    .local v0, state:I
    :goto_0
    check-cast p1, Lmiui/widget/NumberPicker;

    .end local p1
    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker;->setPositionState(I)V

    .end local v0           #state:I
    :cond_0
    return-void

    .restart local p1
    :cond_1
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    .restart local v0       #state:I
    goto :goto_0

    .end local v0           #state:I
    :cond_2
    const/4 v0, 0x3

    .restart local v0       #state:I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v9, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {v1, v2, v3, v8, v9}, Landroid/widget/DatePicker$Injector;->updateSpinners(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, displayedValues:[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void

    .end local v0           #displayedValues:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0x14

    .local v0, flags:I
    iget-object v2, p0, Landroid/widget/DatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .local v0, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1100(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    #getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1200(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    #getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1300(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
