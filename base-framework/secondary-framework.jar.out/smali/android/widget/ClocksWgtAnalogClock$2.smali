.class Landroid/widget/ClocksWgtAnalogClock$2;
.super Ljava/lang/Object;
.source "ClocksWgtAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ClocksWgtAnalogClock;->onScreenStateChanged(II)V
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
    iput-object p1, p0, Landroid/widget/ClocksWgtAnalogClock$2;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$2;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    #calls: Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/ClocksWgtAnalogClock;->access$100(Landroid/widget/ClocksWgtAnalogClock;)V

    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock$2;->this$0:Landroid/widget/ClocksWgtAnalogClock;

    invoke-virtual {v0}, Landroid/widget/ClocksWgtAnalogClock;->invalidate()V

    return-void
.end method
