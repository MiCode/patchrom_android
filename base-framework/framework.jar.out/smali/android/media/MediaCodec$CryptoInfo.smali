.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 0
    .parameter "newNumSubSamples"
    .parameter "newNumBytesOfClearData"
    .parameter "newNumBytesOfEncryptedData"
    .parameter "newKey"
    .parameter "newIV"
    .parameter "newMode"

    .prologue
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    return-void
.end method
