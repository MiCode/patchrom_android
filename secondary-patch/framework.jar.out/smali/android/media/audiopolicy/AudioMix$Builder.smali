.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackFlags:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-void
.end method


# virtual methods
.method public build()Landroid/media/audiopolicy/AudioMix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v6

    .local v6, "rate":I
    if-gtz v6, :cond_2

    const v6, 0xac44

    :cond_2
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .end local v6    # "rate":I
    :cond_3
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iget v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IILandroid/media/audiopolicy/AudioMix$1;)V

    return-object v0
.end method

.method public setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callback flags 0x"

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

    :cond_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    return-object p0
.end method

.method public setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object p0
.end method

.method public setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal empty route flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid route flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "when creating an AudioMix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    return-object p0
.end method
