.class Landroid/widget/ClocksWgtAnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "ClocksWgtAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ClocksWgtAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ClocksWgtAnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/ClocksWgtAnalogClock;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    #getter for: Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z
    invoke-static {v0}, Landroid/widget/ClocksWgtAnalogClock;->access$000(Landroid/widget/ClocksWgtAnalogClock;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    #calls: Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/ClocksWgtAnalogClock;->access$100(Landroid/widget/ClocksWgtAnalogClock;)V

    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$1;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-virtual {v0}, Landroid/widget/ClocksWgtAnalogClock;->invalidate()V

    goto :goto_0
.end method
