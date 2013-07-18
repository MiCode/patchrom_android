.class Lcom/android/internal/telephony/cat/TransportProtocol;
.super Ljava/lang/Object;
.source "BipUtils.java"


# instance fields
.field public portNumber:I

.field public protocolType:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "type"
    .parameter "port"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iput v0, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iput p1, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iput p2, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    return-void
.end method
