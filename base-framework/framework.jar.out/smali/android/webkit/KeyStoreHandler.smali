.class Landroid/webkit/KeyStoreHandler;
.super Landroid/os/Handler;
.source "KeyStoreHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "KeyStoreHandler"


# instance fields
.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    iput-object p1, p0, Landroid/webkit/KeyStoreHandler;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public didReceiveData([BI)V
    .locals 3
    .parameter "data"
    .parameter "length"

    .prologue
    iget-object v1, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public installCert(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, type:Ljava/lang/String;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v4}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v4

    new-array v1, v4, [B

    .local v1, cert:[B
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_1
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v4}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_1

    invoke-static {p1, v3, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    monitor-exit v5

    goto :goto_0

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v2           #offset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v2       #offset:I
    :cond_1
    :try_start_1
    iget v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v6, 0x0

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v4, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v2, v4

    :cond_2
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
