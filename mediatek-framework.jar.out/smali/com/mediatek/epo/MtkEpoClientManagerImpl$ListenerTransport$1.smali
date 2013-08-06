.class Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;
.super Landroid/os/Handler;
.source "MtkEpoClientManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerImpl;Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

.field final synthetic val$this$0:Lcom/mediatek/epo/MtkEpoClientManagerImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;Lcom/mediatek/epo/MtkEpoClientManagerImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

    iput-object p2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;->val$this$0:Lcom/mediatek/epo/MtkEpoClientManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->handleMessageInt(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;Landroid/os/Message;)V

    return-void
.end method
