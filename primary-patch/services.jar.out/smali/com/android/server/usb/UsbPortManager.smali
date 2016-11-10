.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_DATA_ROLE_DEVICE:Ljava/lang/String; = "device"

.field private static final PORT_DATA_ROLE_HOST:Ljava/lang/String; = "host"

.field private static final PORT_MODE_DFP:Ljava/lang/String; = "dfp"

.field private static final PORT_MODE_UFP:Ljava/lang/String; = "ufp"

.field private static final PORT_POWER_ROLE_SINK:Ljava/lang/String; = "sink"

.field private static final PORT_POWER_ROLE_SOURCE:Ljava/lang/String; = "source"

.field private static final SYSFS_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final SYSFS_PORT_DATA_ROLE:Ljava/lang/String; = "data_role"

.field private static final SYSFS_PORT_MODE:Ljava/lang/String; = "mode"

.field private static final SYSFS_PORT_POWER_ROLE:Ljava/lang/String; = "power_role"

.field private static final SYSFS_PORT_SUPPORTED_MODES:Ljava/lang/String; = "supported_modes"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final UEVENT_FILTER:Ljava/lang/String; = "SUBSYSTEM=dual_role_usb"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHaveKernelSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v1, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    invoke-static {v2, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    invoke-static {v2, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/usb/UsbPortManager$2;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbPortManager$2;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/usb/UsbPortManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbPortManager$3;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/dual_role_usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    if-eq p3, p2, :cond_0

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    move/from16 v0, p7

    invoke-static {p5, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v8

    .local v8, "supportedRoleCombinations":I
    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    if-eqz p6, :cond_2

    if-eqz p8, :cond_2

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v2, v3

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v2, v3

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-direct {v1, p1, p2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    if-eqz p6, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    const/4 v2, 0x2

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_0

    :cond_3
    if-eqz p8, :cond_4

    const/4 v2, 0x1

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    const/4 v2, 0x2

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_1

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    goto :goto_0

    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :cond_6
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_1
.end method

.method private static canChangeDataRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "data_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private static canChangeMode(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "mode"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private static canChangePowerRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "power_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static readCurrentDataRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    const-string v1, "data_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentMode(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    const-string v1, "mode"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "dfp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "ufp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readCurrentPowerRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    const-string v1, "power_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "sink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readSupportedModes(Ljava/io/File;)I
    .locals 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .local v1, "modes":I
    const-string v2, "supported_modes"

    invoke-static {p0, v2}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "dfp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    const-string v2, "ufp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method private scheduleUpdatePorts()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "port"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "portStatus"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 22
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .local v15, "i":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    :goto_0
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v12, 0x3

    iput v12, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_0

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .local v14, "count":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    move-object/from16 v0, v21

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    move-object/from16 v0, v21

    iget-boolean v11, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v14    # "count":I
    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v20

    .local v20, "portDirs":[Ljava/io/File;
    if-eqz v20, :cond_3

    move-object/from16 v13, v20

    .local v13, "arr$":[Ljava/io/File;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v19, v13, v17

    .local v19, "portDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "portId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readSupportedModes(Ljava/io/File;)I

    move-result v5

    .local v5, "supportedModes":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentMode(Ljava/io/File;)I

    move-result v6

    .local v6, "currentMode":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->canChangeMode(Ljava/io/File;)Z

    move-result v7

    .local v7, "canChangeMode":Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentPowerRole(Ljava/io/File;)I

    move-result v8

    .local v8, "currentPowerRole":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->canChangePowerRole(Ljava/io/File;)Z

    move-result v9

    .local v9, "canChangePowerRole":Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->readCurrentDataRole(Ljava/io/File;)I

    move-result v10

    .local v10, "currentDataRole":I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbPortManager;->canChangeDataRole(Ljava/io/File;)Z

    move-result v11

    .local v11, "canChangeDataRole":Z
    move-object/from16 v3, p0

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_3

    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "portDir":Ljava/io/File;
    .end local v20    # "portDirs":[Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_4
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    packed-switch v3, :pswitch_data_0

    :goto_5
    :pswitch_0
    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_4

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_5

    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    const/4 v4, 0x1

    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_1
    return v4

    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "writer":Ljava/io/FileWriter;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", supportedModes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    const-string v1, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p6, :cond_2

    :cond_1
    const-string v1, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_2
    :try_start_1
    iget v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", powerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iput p2, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    iput-boolean p3, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    iput p4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    iput-boolean p5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    iput p6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    iput-boolean p7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    invoke-direct {p0, p8}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    const-string v1, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "USB Port State:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " (simulation active; end with \'dumpsys usb reset\')"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "  <no ports>"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbPort;

    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v3, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-object v2

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_0

    const-string v1, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 16
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_1

    if-eqz p4, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such USB port: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    monitor-exit v13

    :goto_0
    return-void

    :cond_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto :goto_0

    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    :try_start_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    .local v5, "currentDataRole":I
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    .local v7, "currentPowerRole":I
    move/from16 v0, p3

    if-ne v5, v0, :cond_4

    move/from16 v0, p2

    if-ne v7, v0, :cond_4

    if-eqz p4, :cond_3

    const-string v12, "No change."

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    monitor-exit v13

    goto :goto_0

    :cond_4
    iget-boolean v3, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .local v3, "canChangeMode":Z
    iget-boolean v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .local v4, "canChangePowerRole":Z
    iget-boolean v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .local v2, "canChangeDataRole":Z
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    .local v6, "currentMode":I
    if-nez v4, :cond_5

    move/from16 v0, p2

    if-ne v7, v0, :cond_6

    :cond_5
    if-nez v2, :cond_a

    move/from16 v0, p3

    if-eq v5, v0, :cond_a

    :cond_6
    if-eqz v3, :cond_8

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_8

    const/4 v8, 0x1

    .local v8, "newMode":I
    :goto_1
    const/4 v12, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting USB port mode and role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .local v11, "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-eqz v11, :cond_b

    iput v8, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    move/from16 v0, p2

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    move/from16 v0, p3

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v13

    goto/16 :goto_0

    .end local v8    # "newMode":I
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_8
    if-eqz v3, :cond_9

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_9

    const/4 v8, 0x2

    .restart local v8    # "newMode":I
    goto/16 :goto_1

    .end local v8    # "newMode":I
    :cond_9
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto/16 :goto_0

    :cond_a
    move v8, v6

    .restart local v8    # "newMode":I
    goto/16 :goto_1

    .restart local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v12, :cond_7

    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    move-object/from16 v0, p1

    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "portDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USB port not found: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto/16 :goto_0

    :cond_c
    if-eq v6, v8, :cond_e

    const-string v14, "mode"

    const/4 v12, 0x1

    if-ne v8, v12, :cond_d

    const-string v12, "dfp"

    :goto_2
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port mode: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto/16 :goto_0

    :cond_d
    const-string v12, "ufp"

    goto :goto_2

    :cond_e
    move/from16 v0, p2

    if-eq v7, v0, :cond_10

    const-string v14, "power_role"

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    const-string v12, "source"

    :goto_3
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port power role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto/16 :goto_0

    :cond_f
    const-string v12, "sink"

    goto :goto_3

    :cond_10
    move/from16 v0, p3

    if-eq v5, v0, :cond_7

    const-string v14, "data_role"

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_11

    const-string v12, "host"

    :goto_4
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port data role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    monitor-exit v13

    goto/16 :goto_0

    :cond_11
    const-string v12, "device"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=dual_role_usb"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    return-void
.end method
