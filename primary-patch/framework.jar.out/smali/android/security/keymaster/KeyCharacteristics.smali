.class public Landroid/security/keymaster/KeyCharacteristics;
.super Ljava/lang/Object;
.source "KeyCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeyCharacteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hwEnforced:Landroid/security/keymaster/KeymasterArguments;

.field public swEnforced:Landroid/security/keymaster/KeymasterArguments;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyCharacteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 3
    .param p1, "tag"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .local v0, "result":Ljava/util/Date;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/util/Date;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/util/Date;
    :cond_0
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnum(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    const/4 v1, -0x1

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnums(I)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getUnsignedInt(IJ)J
    .locals 2
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    .prologue
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUnsignedLongs(I)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
