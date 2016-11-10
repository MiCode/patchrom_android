.class public Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$FmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAf:Z

.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mRds:Z

.field private mStereo:Z

.field private mTa:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$FmBandConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getTa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getAf()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 6
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 10

    .prologue
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    iget-boolean v7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    iget-boolean v8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    iget-boolean v9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(IIIIIZZZZ)V

    .local v0, "config":Landroid/hardware/radio/RadioManager$FmBandConfig;
    return-object v0
.end method

.method public setAf(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    return-object p0
.end method

.method public setRds(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    return-object p0
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    return-object p0
.end method

.method public setTa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    return-object p0
.end method
