.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$Node;,
        Landroid/widget/TimePickerClockDelegate$SavedState;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimePickerClockDelegate"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private final mAmLabel:Landroid/widget/CheckedTextView;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mAmText:Ljava/lang/String;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mHeaderView:Landroid/view/View;

.field private final mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

.field private final mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private final mPmLabel:Landroid/widget/CheckedTextView;

.field private final mPmText:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 23
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    new-instance v19, Landroid/widget/TimePickerClockDelegate$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v19, Landroid/widget/TimePickerClockDelegate$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v19, Landroid/widget/TimePickerClockDelegate$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .local v12, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .local v16, "res":Landroid/content/res/Resources;
    const v19, 0x1040559

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    const v19, 0x104055a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "amPmStrings":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    const/16 v19, 0xa

    const v20, 0x10900f4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .local v13, "layoutResourceId":I
    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .local v15, "mainView":Landroid/view/View;
    const v19, 0x10203e9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    const v19, 0x10203ea

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v21, 0x1040559

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v19, 0x10203eb

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    const v19, 0x10203ec

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v21, 0x104055a

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->computeStableWidth(Landroid/widget/TextView;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->computeStableWidth(Landroid/widget/TextView;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v20, 0x0

    aget-object v20, v7, v20

    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    const/16 v22, 0x0

    aget-object v22, v7, v22

    invoke-direct/range {v21 .. v22}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .local v6, "amLabel":Landroid/text/SpannableStringBuilder;
    const v19, 0x10203ed

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x10203ee

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckedTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v7, v20

    invoke-static/range {v20 .. v20}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x10203ef

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckedTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v7, v20

    invoke-static/range {v20 .. v20}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x0

    .local v11, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .local v18, "timeHeaderTextAppearance":I
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .local v17, "textAppearance":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v17    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_0
    if-nez v11, :cond_1

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v19, 0x10203f5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->setupListeners()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    const v19, 0x104055f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    const v19, 0x104055d

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->generateLegalTimesTree()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .local v9, "currentHour":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .local v10, "currentMinute":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v10, v1, v2}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TimePickerClockDelegate;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->finishKbMode()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    return-object v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->deleteLastTypedKey()I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    move-result v0

    .local v0, "val":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    :cond_5
    move v1, v2

    goto :goto_0
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
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

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

.method private computeStableWidth(Landroid/widget/TextView;I)I
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "maxNumber"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v7, v7}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .local v3, "width":I
    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "width":I
    :cond_1
    return v1
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "deleted":I
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    :cond_0
    return v0
.end method

.method private finishKbMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    .local v0, "values":[I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .end local v0    # "values":[I
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v4}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 23

    .prologue
    const/4 v6, 0x7

    .local v6, "k0":I
    const/16 v7, 0x8

    .local v7, "k1":I
    const/16 v8, 0x9

    .local v8, "k2":I
    const/16 v9, 0xa

    .local v9, "k3":I
    const/16 v10, 0xb

    .local v10, "k4":I
    const/16 v11, 0xc

    .local v11, "k5":I
    const/16 v12, 0xd

    .local v12, "k6":I
    const/16 v13, 0xe

    .local v13, "k7":I
    const/16 v14, 0xf

    .local v14, "k8":I
    const/16 v15, 0x10

    .local v15, "k9":I
    new-instance v20, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    new-instance v16, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v16, "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v17, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v17, "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v4, "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v18, "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v19, "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_5

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_6

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_7

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .end local v16    # "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v17    # "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :goto_0
    return-void

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :cond_0
    new-instance v3, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v3, "ampm":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_9

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v5, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_b

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .local v5, "fourthDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    invoke-virtual {v5, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_c

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_d

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_e

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_10

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_11

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_4
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_8
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_c
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 14
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, -0x1

    iget v9, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    if-eq v9, v8, :cond_0

    iget v9, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    if-ne v9, v8, :cond_1

    :cond_0
    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .local v2, "amText":Ljava/lang/CharSequence;
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    iget-object v10, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .local v7, "pmText":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, "amChar":C
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "pmChar":C
    if-eq v1, v6, :cond_4

    new-array v9, v13, [C

    aput-char v1, v9, v11

    aput-char v6, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_3

    array-length v9, v3

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    aget-object v9, v3, v11

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    iput v9, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    aget-object v9, v3, v13

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    iput v9, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v3    # "events":[Landroid/view/KeyEvent;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    if-nez p1, :cond_5

    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    :cond_2
    :goto_2
    return v8

    .restart local v0    # "N":I
    .restart local v1    # "amChar":C
    .restart local v2    # "amText":Ljava/lang/CharSequence;
    .restart local v3    # "events":[Landroid/view/KeyEvent;
    .restart local v4    # "i":I
    .restart local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v6    # "pmChar":C
    .restart local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "TimePickerClockDelegate"

    const-string v10, "Unable to find keycodes for AM and PM."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_5
    if-ne p1, v12, :cond_2

    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    goto :goto_2
.end method

.method private getCurrentItemShowing()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getEnteredTime([Z)[I
    .locals 11
    .param p1, "enteredZeros"    # [Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, -0x1

    .local v0, "amOrPm":I
    const/4 v5, 0x1

    .local v5, "startIndex":I
    iget-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "keyCode":I
    invoke-direct {p0, v10}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    .local v4, "minute":I
    const/4 v1, -0x1

    .local v1, "hour":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7

    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    move-result v6

    .local v6, "val":I
    if-ne v2, v5, :cond_4

    move v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v9}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v6    # "val":I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_5

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    aput-boolean v9, p1, v9

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6

    move v1, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_2

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    if-eqz p1, :cond_2

    if-nez v6, :cond_2

    aput-boolean v9, p1, v10

    goto :goto_2

    .end local v6    # "val":I
    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private getTypedTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private inKbMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    return v0
.end method

.method private initialize(IIZI)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .prologue
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    move-result-object v0

    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .end local v0    # "values":[I
    :goto_0
    return v1

    .restart local v0    # "values":[I
    :cond_0
    move v1, v2

    goto :goto_0

    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    .local v2, "node":Landroid/widget/TimePickerClockDelegate$Node;
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "keyCode":I
    invoke-virtual {v2, v1}, Landroid/widget/TimePickerClockDelegate$Node;->canReach(I)Landroid/widget/TimePickerClockDelegate$Node;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    .end local v1    # "keyCode":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .prologue
    array-length v3, p1

    .local v3, "lengthAny":I
    if-lez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-char v4, p1, v2

    if-ne v0, v4, :cond_0

    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_2
    return v1

    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private static modulo12(IZ)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "startWithZero"    # Z

    .prologue
    rem-int/lit8 v0, p0, 0xc

    .local v0, "value":I
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0xc

    :cond_0
    return v0
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

.method private static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v4, 0x43

    if-ne p1, v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->deleteLastTypedKey()I

    move-result v0

    .local v0, "deleted":I
    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_0
    move v2, v3

    :cond_1
    :goto_1
    return v2

    .restart local v0    # "deleted":I
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_3

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_3
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x7

    if-eq p1, v4, :cond_5

    const/16 v4, 0x8

    if-eq p1, v4, :cond_5

    const/16 v4, 0x9

    if-eq p1, v4, :cond_5

    const/16 v4, 0xa

    if-eq p1, v4, :cond_5

    const/16 v4, 0xb

    if-eq p1, v4, :cond_5

    const/16 v4, 0xc

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd

    if-eq p1, v4, :cond_5

    const/16 v4, 0xe

    if-eq p1, v4, :cond_5

    const/16 v4, 0xf

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_5

    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    :cond_5
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    if-nez v4, :cond_7

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    if-nez v3, :cond_6

    const-string v3, "TimePickerClockDelegate"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->tryStartingKbMode(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    goto :goto_1
.end method

.method private setAmOrPm(I)V
    .locals 1
    .param p1, "amOrPm"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 4
    .param p1, "isAmPmAtStart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private setInKbMode(Z)V
    .locals 0
    .param p1, "inKbMode"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    return-void
.end method

.method private setTypedTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "typeTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p0}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 5
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v2

    .local v0, "isAm":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-ne p1, v2, :cond_1

    move v1, v2

    .local v1, "isPm":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    .end local v0    # "isAm":Z
    .end local v1    # "isPm":Z
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0    # "isAm":Z
    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private updateDisplay(Z)V
    .locals 11
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    if-nez p1, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .local v1, "hour":I
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v4

    .local v4, "minute":I
    const/4 v8, 0x0

    invoke-direct {p0, v1, v8}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v8, :cond_0

    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-direct {p0, v8}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :cond_0
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [Z

    fill-array-data v0, :array_0

    .local v0, "enteredZeros":[Z
    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    move-result-object v7

    .local v7, "values":[I
    const/4 v8, 0x0

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_4

    const-string v2, "%02d"

    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_5

    const-string v5, "%02d"

    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-nez v8, :cond_1

    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    goto :goto_1

    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_5
    const-string v5, "%2d"

    goto :goto_3

    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private updateHeaderAmPm()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v3, "hm"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateHeaderHour(IZ)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_4

    const-string v8, "Hm"

    :goto_0
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "lengthPattern":I
    const/4 v4, 0x0

    .local v4, "hourWithTwoDigit":Z
    const/4 v3, 0x0

    .local v3, "hourFormat":C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v8, 0x48

    if-eq v1, v8, :cond_0

    const/16 v8, 0x68

    if-eq v1, v8, :cond_0

    const/16 v8, 0x4b

    if-eq v1, v8, :cond_0

    const/16 v8, 0x6b

    if-ne v1, v8, :cond_5

    :cond_0
    move v3, v1

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_1

    const/4 v4, 0x1

    .end local v1    # "c":C
    :cond_1
    if-eqz v4, :cond_6

    const-string v2, "%02d"

    .local v2, "format":Ljava/lang/String;
    :goto_2
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v8, :cond_7

    const/16 v8, 0x6b

    if-ne v3, v8, :cond_2

    if-nez p1, :cond_2

    const/16 p1, 0x18

    :cond_2
    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_3
    return-void

    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "hourWithTwoDigit":Z
    .end local v5    # "i":I
    .end local v6    # "lengthPattern":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_4
    const-string v8, "hm"

    goto :goto_0

    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "hourWithTwoDigit":Z
    .restart local v5    # "i":I
    .restart local v6    # "lengthPattern":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "c":C
    :cond_6
    const-string v2, "%d"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_2

    :cond_7
    const/16 v8, 0x4b

    if-ne v3, v8, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-static {p1, v8}, Landroid/widget/TimePickerClockDelegate;->modulo12(IZ)I

    move-result p1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private updateHeaderMinute(IZ)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "announceForAccessibility"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, v0, v5}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    .prologue
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v4, :cond_0

    const-string v4, "Hm"

    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_0

    .local v2, "hourFormats":[C
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    .local v1, "hIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v3, ":"

    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hIndex":I
    .end local v2    # "hourFormats":[C
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_0
    const-string v4, "hm"

    goto :goto_0

    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hIndex":I
    .restart local v2    # "hourFormats":[C
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .restart local v0    # "currentHour":I
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    :pswitch_0
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x80

    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .local v1, "selectedDate":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .end local v1    # "selectedDate":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    .local v0, "ss":Landroid/widget/TimePickerClockDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->inKbMode()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setInKbMode(Z)V

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getTypesTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setTypedTimes(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->tryStartingKbMode(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->inKbMode()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getTypedTimes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$1;)V

    return-object v0
.end method

.method public onValueSelected(IIZ)V
    .locals 4
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, v2}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0, v1, v1, v2}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->finishKbMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentHour(I)V
    .locals 4
    .param p1, "currentHour"    # I

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    .prologue
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Z)V
    .locals 2
    .param p1, "is24HourView"    # Z

    .prologue
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->generateLegalTimesTree()V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .local v0, "hour":I
    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->invalidate()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
