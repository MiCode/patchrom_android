.class interface abstract Landroid/widget/TimePicker$TimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TimePickerDelegate"
.end annotation


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getCurrentHour()I
.end method

.method public abstract getCurrentMinute()I
.end method

.method public abstract is24HourView()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setCurrentHour(I)V
.end method

.method public abstract setCurrentMinute(I)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setIs24HourView(Z)V
.end method

.method public abstract setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
.end method

.method public abstract setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V
.end method
