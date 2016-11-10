.class Landroid/widget/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/DayPickerPagerAdapter;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerView;->access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerView;->access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerView$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerView;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
