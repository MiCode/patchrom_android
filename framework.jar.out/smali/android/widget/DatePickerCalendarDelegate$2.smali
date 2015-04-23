.class Landroid/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Landroid/widget/YearPickerView;I)V
    .locals 7
    .param p1, "view"    # Landroid/widget/YearPickerView;
    .param p2, "year"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # getter for: Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "day":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # getter for: Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "month":I
    invoke-static {v2, p2}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v1

    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # getter for: Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # getter for: Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V
    invoke-static {v3, v5, v5}, Landroid/widget/DatePickerCalendarDelegate;->access$100(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v4, 0x0

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
    invoke-static {v3, v4}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;I)V

    return-void
.end method
