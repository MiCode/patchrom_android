.class Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .locals 1
    .param p2, "host"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->access$600(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mYear:I
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->access$700(Landroid/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mMonth:I
    invoke-static {v2}, Landroid/widget/SimpleMonthView;->access$800(Landroid/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->access$600(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;
    invoke-static {v0}, Landroid/widget/SimpleMonthView;->access$900(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    add-float v2, p1, v3

    float-to-int v2, v2

    add-float/2addr v3, p2

    float-to-int v3, v3

    # invokes: Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I
    invoke-static {v1, v2, v3}, Landroid/widget/SimpleMonthView;->access$000(Landroid/widget/SimpleMonthView;II)I

    move-result v0

    .local v0, "day":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .end local v0    # "day":I
    :goto_0
    return v0

    .restart local v0    # "day":I
    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mDaysInMonth:I
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->access$100(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->onDayClicked(I)Z
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->access$500(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    # invokes: Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z
    invoke-static {v2, p1, v3}, Landroid/widget/SimpleMonthView;->access$200(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z

    move-result v0

    .local v0, "hasBounds":Z
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const-string v2, ""

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # invokes: Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z
    invoke-static {v2, p1}, Landroid/widget/SimpleMonthView;->access$300(Landroid/widget/SimpleMonthView;I)Z

    move-result v1

    .local v1, "isDayEnabled":Z
    if-eqz v1, :cond_2

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    # getter for: Landroid/widget/SimpleMonthView;->mActivatedDay:I
    invoke-static {v2}, Landroid/widget/SimpleMonthView;->access$400(Landroid/widget/SimpleMonthView;)I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_0
.end method
