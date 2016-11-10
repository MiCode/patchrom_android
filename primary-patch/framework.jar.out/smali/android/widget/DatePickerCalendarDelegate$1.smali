.class Landroid/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


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
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DayPickerView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # getter for: Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/widget/DatePickerCalendarDelegate;->access$100(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    return-void
.end method
