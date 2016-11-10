.class final Lcom/android/server/am/LockTaskNotify$H;
.super Landroid/os/Handler;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LockTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final SHOW_TOAST:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LockTaskNotify;


# direct methods
.method private constructor <init>(Lcom/android/server/am/LockTaskNotify;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/LockTaskNotify;
    .param p2, "x1"    # Lcom/android/server/am/LockTaskNotify$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->handleShowToast(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
