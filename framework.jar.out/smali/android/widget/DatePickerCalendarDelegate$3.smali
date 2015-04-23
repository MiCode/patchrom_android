.class Landroid/widget/DatePickerCalendarDelegate$3;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V
    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->access$300(Landroid/widget/DatePickerCalendarDelegate;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x0

    # invokes: Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102031a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
