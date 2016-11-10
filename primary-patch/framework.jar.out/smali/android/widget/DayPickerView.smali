.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x109004c

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    new-instance v4, Landroid/widget/DayPickerView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v4, Landroid/widget/DayPickerView$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string v4, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    iget-object v5, v5, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .local v16, "firstDayOfWeek":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "minDate":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "maxDate":Ljava/lang/String;
    const/16 v4, 0xd

    const v5, 0x1030417

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .local v21, "monthTextAppearanceResId":I
    const/16 v4, 0xb

    const v5, 0x1030416

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .local v13, "dayOfWeekTextAppearanceResId":I
    const/16 v4, 0xc

    const v5, 0x1030415

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .local v15, "dayTextAppearanceResId":I
    const/16 v4, 0xe

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .local v14, "daySelectorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/widget/DayPickerPagerAdapter;

    const v5, 0x109004a

    const v26, 0x1020321

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-direct {v4, v0, v5, v1}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v13}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v15}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v14}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109004c

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .local v12, "content":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .local v11, "child":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v11    # "child":Landroid/view/View;
    :cond_0
    const v4, 0x1020326

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1020327

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1020325

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v26, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v24

    .local v24, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    .local v20, "monthColor":Landroid/content/res/ColorStateList;
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .end local v20    # "monthColor":Landroid/content/res/ColorStateList;
    .end local v24    # "ta":Landroid/content/res/TypedArray;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .local v25, "tempDate":Ljava/util/Calendar;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x76c

    const/4 v5, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "minDateMillis":J
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x834

    const/16 v5, 0xb

    const/16 v26, 0x1f

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .local v8, "maxDateMillis":J
    cmp-long v4, v8, v6

    if-gez v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "maxDate must be >= minDate"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v22

    .local v22, "setDateMillis":J
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/widget/DayPickerView;->setMinDate(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/DayPickerView;->setDate(JZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    new-instance v5, Landroid/widget/DayPickerView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {v4, v5}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DayPickerView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "diffYears":I
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v1, v2

    return v1
.end method

.method private getPositionFromDay(J)I
    .locals 5
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .local v1, "diffMonthMax":I
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .local v0, "diffMonth":I
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private setDate(JZZ)V
    .locals 3
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z
    .param p4, "setSelected"    # Z

    .prologue
    if-eqz p4, :cond_0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v0, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    iget-object v1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    move v1, v2

    .local v1, "hasPrev":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_1

    move v0, v2

    .local v0, "hasNext":Z
    :goto_1
    iget-object v5, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .end local v0    # "hasNext":Z
    .end local v1    # "hasPrev":Z
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1    # "hasPrev":Z
    :cond_1
    move v0, v3

    goto :goto_1

    .restart local v0    # "hasNext":Z
    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .local v6, "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .local v13, "rightButton":Landroid/widget/ImageButton;
    :goto_0
    sub-int v18, p4, p2

    .local v18, "width":I
    sub-int v5, p5, p3

    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/SimpleMonthView;

    .local v12, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result v11

    .local v11, "monthHeight":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result v4

    .local v4, "cellWidth":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    .local v8, "leftDW":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v7

    .local v7, "leftDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v19

    sub-int v20, v11, v7

    div-int/lit8 v20, v20, 0x2

    add-int v10, v19, v20

    .local v10, "leftIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v19

    sub-int v20, v4, v8

    div-int/lit8 v20, v20, 0x2

    add-int v9, v19, v20

    .local v9, "leftIconLeft":I
    add-int v19, v9, v8

    add-int v20, v10, v7

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v9, v10, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v15

    .local v15, "rightDW":I
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v14

    .local v14, "rightDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v19

    sub-int v20, v11, v14

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .local v17, "rightIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v19

    sub-int v19, v18, v19

    sub-int v20, v4, v15

    div-int/lit8 v20, v20, 0x2

    sub-int v16, v19, v20

    .local v16, "rightIconRight":I
    sub-int v19, v16, v15

    add-int v20, v17, v14

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void

    .end local v4    # "cellWidth":I
    .end local v5    # "height":I
    .end local v6    # "leftButton":Landroid/widget/ImageButton;
    .end local v7    # "leftDH":I
    .end local v8    # "leftDW":I
    .end local v9    # "leftIconLeft":I
    .end local v10    # "leftIconTop":I
    .end local v11    # "monthHeight":I
    .end local v12    # "monthView":Landroid/widget/SimpleMonthView;
    .end local v13    # "rightButton":Landroid/widget/ImageButton;
    .end local v14    # "rightDH":I
    .end local v15    # "rightDW":I
    .end local v16    # "rightIconRight":I
    .end local v17    # "rightIconTop":I
    .end local v18    # "width":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .restart local v6    # "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .restart local v13    # "rightButton":Landroid/widget/ImageButton;
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    iget-object v6, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .local v6, "viewPager":Lcom/android/internal/widget/ViewPager;
    invoke-virtual {p0, v6, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v3

    .local v3, "measuredWidthAndState":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    .local v2, "measuredHeightAndState":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v5

    .local v5, "pagerWidth":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    .local v4, "pagerHeight":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "buttonWidthSpec":I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "buttonHeightSpec":I
    iget-object v7, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    iget-object v7, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .locals 1
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerView$OnDaySelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
