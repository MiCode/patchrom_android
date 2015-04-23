.class final Landroid/security/keymaster/KeymasterArgument$1;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/security/keymaster/KeymasterArgument;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "tag":I
    invoke-static {v1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Landroid/os/ParcelFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(ILandroid/os/Parcel;)V

    :goto_0
    return-object v2

    :sswitch_1
    new-instance v2, Landroid/security/keymaster/KeymasterLongArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(ILandroid/os/Parcel;)V

    goto :goto_0

    :sswitch_2
    new-instance v2, Landroid/security/keymaster/KeymasterDateArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILandroid/os/Parcel;)V

    goto :goto_0

    :sswitch_3
    new-instance v2, Landroid/security/keymaster/KeymasterBlobArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(ILandroid/os/Parcel;)V

    goto :goto_0

    :sswitch_4
    new-instance v2, Landroid/security/keymaster/KeymasterBooleanArgument;

    invoke-direct {v2, v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(ILandroid/os/Parcel;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        -0x70000000 -> :sswitch_3
        -0x60000000 -> :sswitch_1
        0x10000000 -> :sswitch_0
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
        0x50000000 -> :sswitch_1
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeymasterArgument;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/security/keymaster/KeymasterArgument;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->newArray(I)[Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    return-object v0
.end method
