.class Landroid/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)V

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .local v1, "minValue":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .local v2, "newHour":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_0
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    goto :goto_0

    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "newHour":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_4
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method
