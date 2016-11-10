.class Lcom/android/server/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field ipChanged:Z

.field isNewNetwork:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "ip"    # Z
    .param p2, "proxy"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean p2, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public isNewNetwork()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return v0
.end method

.method public setIpChanged(Z)V
    .locals 0
    .param p1, "ip"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    return-void
.end method

.method public setIsNewNetwork(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    return-void
.end method

.method public setProxyChanged(Z)V
    .locals 0
    .param p1, "proxy"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method
