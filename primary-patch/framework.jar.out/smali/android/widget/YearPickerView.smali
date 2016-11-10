.class Landroid/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YearPickerView$OnYearSelectedListener;,
        Landroid/widget/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/YearPickerView$YearAdapter;

.field private final mChildSize:I

.field private mCurrentTimeMillis:J

.field private mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private final mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .local v0, "frame":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x105012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/YearPickerView;->mViewSize:I

    const v2, 0x1050116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/widget/YearPickerView;->mChildSize:I

    new-instance v2, Landroid/widget/YearPickerView$1;

    invoke-direct {v2, p0}, Landroid/widget/YearPickerView$1;-><init>(Landroid/widget/YearPickerView;)V

    invoke-virtual {p0, v2}, Landroid/widget/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0}, Landroid/widget/YearPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/YearPickerView$YearAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    iget-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/YearPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/YearPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    return-object v0
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    iput-wide p1, p0, Landroid/widget/YearPickerView;->mCurrentTimeMillis:J

    return-void
.end method

.method public setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/YearPickerView$OnYearSelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .prologue
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YearPickerView$YearAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setSelectionCentered(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget v1, p0, Landroid/widget/YearPickerView;->mViewSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/YearPickerView;->mChildSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .local v0, "offset":I
    invoke-virtual {p0, p1, v0}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setYear(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    new-instance v0, Landroid/widget/YearPickerView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/YearPickerView$2;-><init>(Landroid/widget/YearPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
