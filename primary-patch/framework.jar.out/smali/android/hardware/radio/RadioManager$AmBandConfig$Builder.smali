.class public Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$AmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mStereo:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$AmBandConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 6
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getSpacing()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$AmBandConfig;
    .locals 7

    .prologue
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandConfig;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    invoke-direct/range {v0 .. v6}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(IIIIIZ)V

    .local v0, "config":Landroid/hardware/radio/RadioManager$AmBandConfig;
    return-object v0
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    return-object p0
.end method
