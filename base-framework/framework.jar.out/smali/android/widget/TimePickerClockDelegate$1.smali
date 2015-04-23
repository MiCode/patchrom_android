.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;I)V

    :goto_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->tryVibrate()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V
    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V
    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V
    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10203ea
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
