.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mDigital:Z

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mSubChannel:I

.field private final mTuned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZZZILandroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I
    .param p3, "tuned"    # Z
    .param p4, "stereo"    # Z
    .param p5, "digital"    # Z
    .param p6, "signalStrength"    # I
    .param p7, "metadata"    # Landroid/hardware/radio/RadioMetadata;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    iput p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    iput-boolean p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/radio/RadioManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

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
    instance-of v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .local v0, "other":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getChannel()I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSubChannel()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    move-result v4

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result v4

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    return v0
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    return v0
.end method

.method public getSubChannel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1f

    .local v0, "prime":I
    const/4 v1, 0x1

    .local v1, "result":I
    iget v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    add-int v1, v2, v5

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v5, :cond_2

    :goto_2
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v3, :cond_3

    :goto_3
    add-int v1, v2, v4

    return v1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_3
.end method

.method public isDigital()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    return v0
.end method

.method public isTuned()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramInfo [mChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTuned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDigital="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mMetadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
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
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
