.class Landroid/net/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/android/okhttp/internal/Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/Network;->maybeInitHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/Network$1;->this$0:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/Network$1;->this$0:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
