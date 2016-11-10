.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mCurrentDate:Ljava/util/Calendar;

.field private mCurrentView:I

.field private mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$3;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .local v10, "locale":Ljava/util/Locale;
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/16 v15, 0x76c

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v15, 0x834

    const/16 v16, 0xb

    const/16 v17, 0x1f

    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/16 v14, 0x11

    const v15, 0x1090049

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .local v8, "layoutResourceId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v15, 0x0

    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x1020319

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .local v5, "header":Landroid/view/ViewGroup;
    const v14, 0x102031a

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x102031b

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    .local v6, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .local v11, "monthHeaderTextAppearance":I
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v16, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .local v13, "textAppearance":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .local v9, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .end local v9    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v13    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_0
    if-nez v6, :cond_1

    const/16 v14, 0x12

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x1020322

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x1020323

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMinDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x1020324

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/YearPickerView;->setDate(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    const v14, 0x104055b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    const v14, 0x104055c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/DatePickerCalendarDelegate;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    const v11, 0x10102fe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_1
    const v6, 0x10100a1

    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "activatedColor":I
    const/16 v6, 0x8

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .local v2, "defaultColor":I
    :goto_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_4

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .restart local v0    # "activatedColor":I
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    move-result v2

    .restart local v2    # "defaultColor":I
    goto :goto_1

    .end local v3    # "disabledAlpha":F
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_4
    new-array v4, v10, [[I

    new-array v6, v9, [I

    aput v11, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v9

    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    aput v0, v1, v8

    aput v2, v1, v9

    .local v1, "colors":[I
    new-instance p1, Landroid/content/res/ColorStateList;

    .end local p1    # "color":Landroid/content/res/ColorStateList;
    invoke-direct {p1, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1f

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .prologue
    const v3, 0xffffff

    and-int v2, p1, v3

    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v1, v3, 0xff

    .local v1, "srcAlpha":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .local v0, "dstAlpha":I
    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v3, v2

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .locals 8
    .param p1, "announce"    # Z

    .prologue
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .local v5, "year":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .local v4, "monthDay":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, "millis":J
    const/16 v0, 0x14

    .local v0, "flags":I
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/16 v7, 0x14

    invoke-static {v6, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onDateChanged(ZZ)V
    .locals 6
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "year":I
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "monthOfYear":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .end local v0    # "dayOfMonth":I
    .end local v1    # "monthOfYear":I
    :cond_0
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/DayPickerView;->setDate(J)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_1
    return-void
.end method

.method private setCurrentView(I)V
    .locals 6
    .param p1, "viewIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/YearPickerView;->setDate(J)V

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tryVibrate()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-direct {p0, v2, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .local v1, "headerYear":Landroid/widget/TextView;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "EMMMd"

    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "y"

    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v3, p1

    check-cast v3, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    .local v3, "ss":Landroid/widget/DatePickerCalendarDelegate$SavedState;
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedYear()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedMonth()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedDay()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMinDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMaxDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getCurrentView()I

    move-result v0

    .local v0, "currentView":I
    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPosition()I

    move-result v1

    .local v1, "listPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v1}, Landroid/widget/DayPickerView;->setPosition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPositionOffset()I

    move-result v2

    .local v2, "listPositionOffset":I
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v1, v2}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "year":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "month":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "day":I
    const/4 v11, -0x1

    .local v11, "listPosition":I
    const/4 v12, -0x1

    .local v12, "listPositionOffset":I
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v11

    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget v10, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v13, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$1;)V

    return-object v1

    :cond_1
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v11

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v12

    goto :goto_0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
