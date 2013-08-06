.class Lcom/mediatek/hdmi/HDMIObserver$1;
.super Landroid/os/Handler;
.source "HDMIObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HDMIObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/HDMIObserver;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/HDMIObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/hdmi/HDMIObserver$1;->this$0:Lcom/mediatek/hdmi/HDMIObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-object v1, p0, Lcom/mediatek/hdmi/HDMIObserver$1;->this$0:Lcom/mediatek/hdmi/HDMIObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/hdmi/HDMIObserver;->sendIntents(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/hdmi/HDMIObserver;->access$000(Lcom/mediatek/hdmi/HDMIObserver;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/hdmi/HDMIObserver$1;->this$0:Lcom/mediatek/hdmi/HDMIObserver;

    #getter for: Lcom/mediatek/hdmi/HDMIObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/hdmi/HDMIObserver;->access$100(Lcom/mediatek/hdmi/HDMIObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
