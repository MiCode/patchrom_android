.class Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
.super Ljava/lang/Object;
.source "BluetoothHealthProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHealthProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HealthChannel"
.end annotation


# instance fields
.field private mChannelFd:Landroid/os/ParcelFileDescriptor;

.field private mChannelPath:Ljava/lang/String;

.field private mChannelType:I

.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mId:I

.field private mMainChannel:Z

.field private mState:I

.field final synthetic this$0:Landroid/server/BluetoothHealthProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/os/ParcelFileDescriptor;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "device"
    .parameter "config"
    .parameter "fd"
    .parameter "mainChannel"
    .parameter "channelPath"

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    iput-boolean p5, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z

    iput-object p6, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getChannelId()I
    invoke-static {p1}, Landroid/server/BluetoothHealthProfileHandler;->access$000(Landroid/server/BluetoothHealthProfileHandler;)I

    move-result v0

    iput v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I

    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I

    return v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelType:I

    return v0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelType:I

    return p1
.end method

.method static synthetic access$1400(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method static synthetic access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I

    return v0
.end method

.method static synthetic access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I

    return p1
.end method
