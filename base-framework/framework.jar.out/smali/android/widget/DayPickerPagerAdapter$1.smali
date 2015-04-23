.class Landroid/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerPagerAdapter;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerPagerAdapter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    # getter for: Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    # getter for: Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
