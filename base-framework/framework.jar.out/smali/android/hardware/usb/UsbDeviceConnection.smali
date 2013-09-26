.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method private native native_bulk_request(I[BII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 1
    .parameter "endpoint"
    .parameter "buffer"
    .parameter "length"
    .parameter "timeout"

    .prologue
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BII)I

    move-result v0

    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 1
    .parameter "intf"
    .parameter "force"

    .prologue
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 1
    .parameter "requestType"
    .parameter "request"
    .parameter "value"
    .parameter "index"
    .parameter "buffer"
    .parameter "length"
    .parameter "timeout"

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BII)I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .parameter "name"
    .parameter "pfd"

    .prologue
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1
    .parameter "intf"

    .prologue
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .local v0, request:Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    :cond_0
    return-object v0
.end method
