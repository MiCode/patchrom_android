.class public Landroid/hardware/radio/RadioManager$FmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$FmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIZZZZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z
    .param p7, "rds"    # Z
    .param p8, "ta"    # Z
    .param p9, "af"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    .local v0, "other":Landroid/hardware/radio/RadioManager$FmBandConfig;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    iget-boolean v4, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    iget-boolean v4, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    iget-boolean v4, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    iget-boolean v4, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAf()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return v0
.end method

.method public getRds()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    return v0
.end method

.method public getStereo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    return v0
.end method

.method public getTa()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1f

    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v1

    .local v1, "result":I
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eqz v5, :cond_3

    :goto_3
    add-int v1, v2, v3

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
