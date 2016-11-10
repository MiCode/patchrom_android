.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "CMD_START_DHCP"

    goto :goto_0

    :sswitch_1
    const-string v0, "CMD_STOP_DHCP"

    goto :goto_0

    :sswitch_2
    const-string v0, "CMD_RENEW_DHCP"

    goto :goto_0

    :sswitch_3
    const-string v0, "CMD_PRE_DHCP_ACTION"

    goto :goto_0

    :sswitch_4
    const-string v0, "CMD_PRE_DHCP_ACTION_COMPLETE"

    goto :goto_0

    :sswitch_5
    const-string v0, "CMD_POST_DHCP_ACTION"

    goto :goto_0

    :sswitch_6
    const-string v0, "CMD_KICK"

    goto :goto_0

    :sswitch_7
    const-string v0, "CMD_RECEIVED_PACKET"

    goto :goto_0

    :sswitch_8
    const-string v0, "CMD_TIMEOUT"

    goto :goto_0

    :sswitch_9
    const-string v0, "CMD_ONESHOT_TIMEOUT"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30001 -> :sswitch_0
        0x30002 -> :sswitch_1
        0x30003 -> :sswitch_2
        0x30004 -> :sswitch_3
        0x30005 -> :sswitch_5
        0x30007 -> :sswitch_4
        0x30065 -> :sswitch_6
        0x30066 -> :sswitch_7
        0x30067 -> :sswitch_8
        0x30068 -> :sswitch_9
    .end sparse-switch
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
