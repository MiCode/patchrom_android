.class Landroid/net/dhcp/DhcpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;

.field final synthetic val$cmd:I


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$1;->this$0:Landroid/net/dhcp/DhcpClient;

    iput p2, p0, Landroid/net/dhcp/DhcpClient$1;->val$cmd:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$1;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v1, p0, Landroid/net/dhcp/DhcpClient$1;->val$cmd:I

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    return-void
.end method
