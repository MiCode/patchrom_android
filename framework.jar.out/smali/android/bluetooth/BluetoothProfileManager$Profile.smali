.class public final enum Landroid/bluetooth/BluetoothProfileManager$Profile;
.super Ljava/lang/Enum;
.source "BluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/bluetooth/BluetoothProfileManager$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_AVRCP:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_BIP_Initiator:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_BIP_Responder:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_BPP_Sender:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_FTP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_MAP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_OPP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_OPP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_PAN_GN:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_PAN_NAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_PRXR:Landroid/bluetooth/BluetoothProfileManager$Profile;

.field public static final enum Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_HEADSET"

    invoke-direct {v0, v1, v4, v4}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_A2DP"

    invoke-direct {v0, v1, v5, v5}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_HID"

    invoke-direct {v0, v1, v6, v6}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_FTP_Client"

    invoke-direct {v0, v1, v7, v7}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_FTP_Server"

    invoke-direct {v0, v1, v8, v8}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_BIP_Initiator"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Initiator:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_BIP_Responder"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Responder:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_BPP_Sender"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BPP_Sender:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_SIMAP"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_PBAP"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_OPP_Server"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_OPP_Client"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_DUN"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_AVRCP"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_PRXM"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_PRXR"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXR:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_PAN_NAP"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_NAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_PAN_GN"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_GN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    new-instance v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "Bluetooth_MAP_Server"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_MAP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/bluetooth/BluetoothProfileManager$Profile;

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v4

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v5

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v6

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v7

    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Initiator:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BIP_Responder:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_BPP_Sender:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_SIMAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_OPP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_DUN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXM:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PRXR:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_NAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PAN_GN:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_MAP_Server:Landroid/bluetooth/BluetoothProfileManager$Profile;

    aput-object v2, v0, v1

    sput-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->$VALUES:[Landroid/bluetooth/BluetoothProfileManager$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "localizedString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/bluetooth/BluetoothProfileManager$Profile;->localizedString:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothProfileManager$Profile;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothProfileManager$Profile;
    .locals 1

    .prologue
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->$VALUES:[Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothProfileManager$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothProfileManager$Profile;

    return-object v0
.end method
