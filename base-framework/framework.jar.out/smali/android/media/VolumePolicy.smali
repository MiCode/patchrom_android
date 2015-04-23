.class public final Landroid/media/VolumePolicy;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/media/VolumePolicy;


# instance fields
.field public final doNotDisturbWhenSilent:Z

.field public final vibrateToSilentDebounce:I

.field public final volumeDownToEnterSilent:Z

.field public final volumeUpToExitSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/media/VolumePolicy;

    const/4 v1, 0x1

    const/16 v2, 0x190

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    sput-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    new-instance v0, Landroid/media/VolumePolicy$1;

    invoke-direct {v0}, Landroid/media/VolumePolicy$1;-><init>()V

    sput-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iput-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iput-boolean p3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iput p4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

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
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/media/VolumePolicy;

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/media/VolumePolicy;

    .local v0, "other":Landroid/media/VolumePolicy;
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    iget v4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumePolicy[volumeDownToEnterSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",volumeUpToExitSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",doNotDisturbWhenSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vibrateToSilentDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
