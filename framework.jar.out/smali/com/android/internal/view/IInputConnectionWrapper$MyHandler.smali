.class Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
.super Landroid/os/Handler;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/IInputConnectionWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;->this$0:Lcom/android/internal/view/IInputConnectionWrapper;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;->this$0:Lcom/android/internal/view/IInputConnectionWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 78
    return-void
.end method
