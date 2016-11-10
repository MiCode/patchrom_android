.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 1
    .param p1, "af"    # Landroid/media/AudioFormat;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    # getter for: Landroid/media/AudioFormat;->mEncoding:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$000(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    # getter for: Landroid/media/AudioFormat;->mSampleRate:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$100(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    # getter for: Landroid/media/AudioFormat;->mChannelMask:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$200(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    # getter for: Landroid/media/AudioFormat;->mChannelIndexMask:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$300(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    # getter for: Landroid/media/AudioFormat;->mPropertySetMask:I
    invoke-static {p1}, Landroid/media/AudioFormat;->access$400(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    new-instance v0, Landroid/media/AudioFormat;

    const/16 v1, 0x7bc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioFormat;-><init>(ILandroid/media/AudioFormat$1;)V

    .local v0, "af":Landroid/media/AudioFormat;
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    # setter for: Landroid/media/AudioFormat;->mEncoding:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$002(Landroid/media/AudioFormat;I)I

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    # setter for: Landroid/media/AudioFormat;->mSampleRate:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$102(Landroid/media/AudioFormat;I)I

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    # setter for: Landroid/media/AudioFormat;->mChannelMask:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$202(Landroid/media/AudioFormat;I)I

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    # setter for: Landroid/media/AudioFormat;->mChannelIndexMask:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$302(Landroid/media/AudioFormat;I)I

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    # setter for: Landroid/media/AudioFormat;->mPropertySetMask:I
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$402(Landroid/media/AudioFormat;I)I

    return-object v0
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelIndexMask"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel index mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for index mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelMask"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    :goto_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    :pswitch_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-lez p1, :cond_0

    const v0, 0x2ee00

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0
.end method
