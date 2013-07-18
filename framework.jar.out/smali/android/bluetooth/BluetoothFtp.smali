.class public Landroid/bluetooth/BluetoothFtp;
.super Ljava/lang/Object;
.source "BluetoothFtp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothFtp$Client;,
        Landroid/bluetooth/BluetoothFtp$Server;,
        Landroid/bluetooth/BluetoothFtp$Remote;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_CLIENT:Ljava/lang/String; = "android.bluetooth.ftp.action.BIND_CLIENT"

.field public static final ACTION_BIND_SERVER:Ljava/lang/String; = "android.bluetooth.ftp.action.BIND_SERVER"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.ftp.action.STATE_CHANGED"

.field public static final BT_FTPCUI_ABORTING:I = 0x2d

.field public static final BT_FTPCUI_ACTIVE:I = 0x20

.field public static final BT_FTPCUI_AUTHEN_WAIT:I = 0x22

.field public static final BT_FTPCUI_BROWSED:I = 0x28

.field public static final BT_FTPCUI_BROWSING:I = 0x27

.field public static final BT_FTPCUI_CONNECTED:I = 0x23

.field public static final BT_FTPCUI_CONNECTING:I = 0x21

.field public static final BT_FTPCUI_DEACTVE:I = 0x1f

.field public static final BT_FTPCUI_DISCONNECTED:I = 0x31

.field public static final BT_FTPCUI_DISCONNECTING:I = 0x24

.field public static final BT_FTPCUI_ERROR:I = 0x32

.field public static final BT_FTPCUI_EVENT_NONE:I = 0x1e

.field public static final BT_FTPCUI_FILE_DELETED:I = 0x2e

.field public static final BT_FTPCUI_FOLDER_CREATED:I = 0x30

.field public static final BT_FTPCUI_FOLDER_DELETED:I = 0x2f

.field public static final BT_FTPCUI_MAX:I = 0x33

.field public static final BT_FTPCUI_PULLED:I = 0x2a

.field public static final BT_FTPCUI_PULLING:I = 0x29

.field public static final BT_FTPCUI_PUSHED:I = 0x26

.field public static final BT_FTPCUI_PUSHING:I = 0x25

.field public static final BT_FTPCUI_SETPATHED:I = 0x2c

.field public static final BT_FTPCUI_SETPATHING:I = 0x2b

.field public static final BT_FTPC_CONNECTION_FAILED:I = 0x1

.field public static final BT_FTPC_STATE_ABORTING:I = 0xd1

.field public static final BT_FTPC_STATE_ACTIVE:I = 0xc9

.field public static final BT_FTPC_STATE_AUTHORIZING:I = 0xca

.field public static final BT_FTPC_STATE_BROWSED:I = 0xd0

.field public static final BT_FTPC_STATE_BROWSING:I = 0xcf

.field public static final BT_FTPC_STATE_CONNECTED:I = 0xcb

.field public static final BT_FTPC_STATE_DISCONNECTED:I = 0xd2

.field public static final BT_FTPC_STATE_IDLE:I = 0xc8

.field public static final BT_FTPC_STATE_RECEIVING:I = 0xcd

.field public static final BT_FTPC_STATE_SENDING:I = 0xcc

.field public static final BT_FTPC_STATE_TOBROWSE:I = 0xce

.field public static final BT_FTPC_UNEXPECTED:I = 0x0

.field public static final BT_FTPC_USER_CANCELED:I = 0x2

.field public static final BT_FTPSUI_ABORTED:I = 0x16

.field public static final BT_FTPSUI_AUTHEN_WAIT:I = 0x4

.field public static final BT_FTPSUI_AUTHORIZING:I = 0x3

.field public static final BT_FTPSUI_BROWSED:I = 0xb

.field public static final BT_FTPSUI_BROWSE_START:I = 0x9

.field public static final BT_FTPSUI_BROWSING:I = 0xa

.field public static final BT_FTPSUI_CONNECTED:I = 0x6

.field public static final BT_FTPSUI_CONNECTING:I = 0x5

.field public static final BT_FTPSUI_DISABLED:I = 0x19

.field public static final BT_FTPSUI_DISCONNECTED:I = 0x17

.field public static final BT_FTPSUI_ERROR:I = 0x18

.field public static final BT_FTPSUI_EVENT_NONE:I = 0x0

.field public static final BT_FTPSUI_FILE_CREATE:I = 0x14

.field public static final BT_FTPSUI_FILE_DELETE:I = 0x12

.field public static final BT_FTPSUI_FOLDER_CREAT_START:I = 0x15

.field public static final BT_FTPSUI_FOLDER_DELETE:I = 0x13

.field public static final BT_FTPSUI_PULLED:I = 0x11

.field public static final BT_FTPSUI_PULLING:I = 0x10

.field public static final BT_FTPSUI_PULL_FILE_START:I = 0xf

.field public static final BT_FTPSUI_PUSHED:I = 0xe

.field public static final BT_FTPSUI_PUSHING:I = 0xd

.field public static final BT_FTPSUI_PUSH_FILE_START:I = 0xc

.field public static final BT_FTPSUI_READY:I = 0x2

.field public static final BT_FTPSUI_SET_FOLDERED:I = 0x8

.field public static final BT_FTPSUI_SET_FOLDER_START:I = 0x7

.field public static final BT_FTPSUI_SHUTDOWNING:I = 0x1

.field public static final BT_FTPS_FULLCTRL:I = 0x3e9

.field public static final BT_FTPS_READONLY:I = 0x3e8

.field public static final BT_FTPS_STATE_ACTIVE:I = 0x65

.field public static final BT_FTPS_STATE_AUTHORIZING:I = 0x66

.field public static final BT_FTPS_STATE_BROWSING:I = 0x6a

.field public static final BT_FTPS_STATE_CONNECTED:I = 0x67

.field public static final BT_FTPS_STATE_DISCONNECTED:I = 0x6b

.field public static final BT_FTPS_STATE_IDLE:I = 0x64

.field public static final BT_FTPS_STATE_RECEIVING:I = 0x69

.field public static final BT_FTPS_STATE_SENDING:I = 0x68

.field public static final BT_FTP_RSP_SUCCESS:I = 0x0

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.ftp.extra.STATE"

.field private static final TAG:Ljava/lang/String; = "BluetoothFtp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
