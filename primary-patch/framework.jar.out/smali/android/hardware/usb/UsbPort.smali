.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbPort;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final MODE_DFP:I = 0x1

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_UFP:I = 0x2

.field private static final NUM_DATA_ROLES:I = 0x3

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/usb/UsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return-void
.end method

.method public static checkRoles(II)V
    .locals 3
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string v0, "powerRole"

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    const-string v0, "dataRole"

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static combineRolesAsBit(II)I
    .locals 2
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    mul-int/lit8 v1, p0, 0x3

    add-int v0, v1, p1

    .local v0, "index":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "no-data"

    goto :goto_0

    :pswitch_1
    const-string v0, "host"

    goto :goto_0

    :pswitch_2
    const-string v0, "device"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    :pswitch_1
    const-string v0, "dfp"

    goto :goto_0

    :pswitch_2
    const-string v0, "ufp"

    goto :goto_0

    :pswitch_3
    const-string v0, "dual"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "no-power"

    goto :goto_0

    :pswitch_1
    const-string v0, "source"

    goto :goto_0

    :pswitch_2
    const-string v0, "sink"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "combo"    # I

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .local v1, "first":Z
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .local v2, "index":I
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr p0, v5

    div-int/lit8 v3, v2, 0x3

    .local v3, "powerRole":I
    rem-int/lit8 v0, v2, 0x3

    .local v0, "dataRole":I
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "dataRole":I
    .end local v2    # "index":I
    .end local v3    # "powerRole":I
    :cond_1
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedModes()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
