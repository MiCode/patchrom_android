.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->finishKbMode()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$800(Landroid/widget/TimePickerClockDelegate;)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$900(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    # getter for: Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;
    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->access$900(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method
