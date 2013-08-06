.class Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;
.super Lcom/mediatek/common/epo/IMtkEpoStatusListener$Stub;
.source "MtkEpoClientManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoClientManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final STATUS_CHANGED:I = 0x1


# instance fields
.field private mListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mediatek/epo/MtkEpoClientManagerImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerImpl;Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerImpl;

    invoke-direct {p0}, Lcom/mediatek/common/epo/IMtkEpoStatusListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->mListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    new-instance v0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport$1;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;Lcom/mediatek/epo/MtkEpoClientManagerImpl;)V

    iput-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->handleMessageInt(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessageInt(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, status:I
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->mListener:Lcom/mediatek/common/epo/MtkEpoStatusListener;

    invoke-interface {v2, v1}, Lcom/mediatek/common/epo/MtkEpoStatusListener;->onStatusChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 3
    .parameter "status"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerImpl$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
