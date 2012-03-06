.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeekView;,
        Landroid/widget/CalendarView$WeeksAdapter;,
        Landroid/widget/CalendarView$ScrollStateRunnable;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private final mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

.field private final mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private final mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekMinVisibleHeight:I

.field private final mWeekNumberColor:I

.field private final mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 331
    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 179
    const/16 v9, 0xc

    iput v9, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 184
    const/16 v9, 0x14

    iput v9, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 199
    const/4 v9, 0x7

    iput v9, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    .line 204
    const v9, 0x3d4ccccd

    iput v9, p0, Landroid/widget/CalendarView;->mFriction:F

    .line 209
    const v9, 0x3eaa7efa

    iput v9, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    .line 254
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 259
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 264
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    .line 274
    new-instance v9, Landroid/widget/CalendarView$ScrollStateRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V

    iput-object v9, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    .line 299
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd/yyyy"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 336
    sget-object v9, Lcom/android/internal/R$styleable;->CalendarView:[I

    const v10, 0x101035d

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 338
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 340
    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v10

    iget-object v10, v10, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 342
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, minDate:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v7, v9}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 344
    :cond_0
    const-string v9, "01/01/1900"

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v10}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 346
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, maxDate:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v9}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 348
    :cond_2
    const-string v9, "01/01/2100"

    iget-object v10, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v9, v10}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 350
    :cond_3
    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 351
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Max date cannot be before min date."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 353
    :cond_4
    const/4 v9, 0x4

    const/4 v10, 0x6

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 355
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 357
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 359
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 361
    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 363
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 364
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 367
    const/16 v9, 0xc

    const v10, 0x1030046

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 369
    .local v3, dateTextAppearanceResId:I
    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v3, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 371
    .local v2, dateTextAppearance:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    .line 373
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    const/16 v9, 0xb

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 378
    .local v8, weekDayTextAppearanceResId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 381
    .local v4, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v9, 0x1

    const/high16 v10, 0x4140

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 383
    const/4 v9, 0x1

    const/high16 v10, 0x4000

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 385
    const/4 v9, 0x1

    const/high16 v10, 0x41a0

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 387
    const/4 v9, 0x1

    const/high16 v10, 0x40c0

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    .line 389
    const/4 v9, 0x1

    const/high16 v10, 0x3f80

    invoke-static {v9, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    .line 392
    iget-object v9, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 394
    .local v5, layoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x109002c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, content:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 397
    const v9, 0x102000a

    invoke-virtual {p0, v9}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    .line 398
    const v9, 0x1020254

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 399
    const v9, 0x1020253

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    .line 401
    invoke-direct {p0, v8}, Landroid/widget/CalendarView;->setUpHeader(I)V

    .line 402
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpListView()V

    .line 403
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpAdapter()V

    .line 406
    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 407
    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 408
    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 415
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    .line 416
    return-void

    .line 409
    :cond_5
    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v10, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 410
    iget-object v9, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 412
    :cond_6
    iget-object v9, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/CalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic access$702(Landroid/widget/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    return v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 675
    :goto_0
    return-object v2

    .line 672
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 673
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 674
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 11
    .parameter "date"

    .prologue
    .line 955
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 956
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 959
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 961
    .local v2, endTimeMillis:J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 963
    .local v4, startTimeMillis:J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 965
    .local v0, dayOffsetMillis:J
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 8
    .parameter "date"
    .parameter "animate"
    .parameter "setSelected"
    .parameter "forceScroll"

    .prologue
    const/4 v7, 0x0

    .line 788
    iget-object v4, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 794
    .local v1, firstFullyVisiblePosition:I
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 795
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 796
    add-int/lit8 v1, v1, 0x1

    .line 798
    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 799
    .local v2, lastFullyVisiblePosition:I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    .line 800
    add-int/lit8 v2, v2, -0x1

    .line 802
    :cond_3
    if-eqz p3, :cond_4

    .line 803
    iget-object v4, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 806
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 810
    .local v3, position:I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    .line 812
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 813
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 815
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 818
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 819
    const/4 v3, 0x0

    .line 824
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 825
    if-eqz p2, :cond_8

    .line 826
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 837
    :cond_6
    :goto_1
    return-void

    .line 821
    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    .line 829
    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 831
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v7}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 833
    :cond_9
    if-eqz p3, :cond_6

    .line 835
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .parameter "firstDate"
    .parameter "secondDate"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 684
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 869
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 870
    .local v0, child:Landroid/widget/CalendarView$WeekView;
    if-nez v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    .line 878
    .local v1, currScroll:J
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    .line 879
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 890
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .line 891
    .local v6, offset:I
    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 892
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 899
    .restart local v0       #child:Landroid/widget/CalendarView$WeekView;
    :cond_2
    :goto_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 900
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 907
    .local v4, month:I
    :goto_4
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 908
    const/4 v5, 0x1

    .line 917
    .local v5, monthDiff:I
    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 918
    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v3

    .line 919
    .local v3, firstDay:Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 920
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 924
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 926
    .end local v3           #firstDay:Ljava/util/Calendar;
    :cond_5
    iput-wide v1, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    .line 927
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    goto :goto_0

    .line 880
    .end local v4           #month:I
    .end local v5           #monthDiff:I
    .end local v6           #offset:I
    :cond_6
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 881
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_1

    .line 890
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 893
    .restart local v6       #offset:I
    :cond_8
    if-eqz v6, :cond_2

    .line 894
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .restart local v0       #child:Landroid/widget/CalendarView$WeekView;
    goto :goto_3

    .line 902
    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4       #month:I
    goto :goto_4

    .line 909
    :cond_a
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 910
    const/4 v5, -0x1

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 912
    .end local v5           #monthDiff:I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 922
    .restart local v3       #firstDay:Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 860
    iget-object v0, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 861
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "date"
    .parameter "outDate"

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    const/4 v1, 0x1

    .line 851
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Ljava/text/ParseException;
    sget-object v1, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

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

    .line 851
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 654
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 656
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 657
    iget-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 658
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 659
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 9
    .parameter "calendar"

    .prologue
    .line 937
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 938
    .local v7, newMonthDisplayed:I
    iget v0, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-eq v0, v7, :cond_0

    .line 939
    iput v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 940
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget v3, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v3}, Landroid/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 941
    const/16 v6, 0x34

    .line 943
    .local v6, flags:I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 944
    .local v1, millis:J
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    const/16 v5, 0x34

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 945
    .local v8, newMonthName:Ljava/lang/String;
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 948
    .end local v1           #millis:J
    .end local v6           #flags:I
    .end local v8           #newMonthName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarView$WeeksAdapter;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    .line 694
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$1;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 706
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 711
    return-void
.end method

.method private setUpHeader(I)V
    .locals 9
    .parameter "weekDayTextAppearanceResId"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 717
    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    .line 718
    iget v2, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .local v2, i:I
    iget v4, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 719
    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    .line 720
    .local v0, calendarDay:I
    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #calendarDay:I
    :cond_0
    move v0, v2

    .line 719
    goto :goto_1

    .line 724
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 725
    .local v3, label:Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    .line 726
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 731
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #label:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 732
    .restart local v3       #label:Landroid/widget/TextView;
    const/4 v4, -0x1

    if-le p1, v4, :cond_2

    .line 733
    iget-object v4, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 735
    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 736
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 728
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 739
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 742
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 743
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 751
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 752
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 753
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$2;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 766
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 767
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 768
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 432
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .parameter "date"

    .prologue
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 620
    return-void
.end method

.method public setDate(JZZ)V
    .locals 2
    .parameter "date"
    .parameter "animate"
    .parameter "center"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 638
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 420
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 421
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .parameter "firstDayOfWeek"

    .prologue
    .line 577
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 580
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 581
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 582
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 583
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 505
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 511
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 512
    .local v0, date:Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 519
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 457
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 465
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$100(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 466
    .local v0, date:Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 470
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    #calls: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$200(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 471
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 478
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 592
    iput-object p1, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 593
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .parameter "showWeekNumber"

    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 532
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 533
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 534
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method
