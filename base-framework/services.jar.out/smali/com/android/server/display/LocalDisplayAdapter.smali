.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I = null

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

.field private final mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .parameter "syncRoot"
    .parameter "context"
    .parameter "handler"
    .parameter "listener"

    .prologue
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v0}, Landroid/view/Surface$PhysicalDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter;->scanDisplaysLocked()V

    return-void
.end method

.method private scanDisplaysLocked()V
    .locals 7

    .prologue
    sget-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v1, v0, v4

    .local v1, builtInDisplayId:I
    invoke-static {v1}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v3

    .local v3, displayToken:Landroid/os/IBinder;
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-static {v3, v6}, Landroid/view/Surface;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .local v2, device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v2, p0, v3, v1, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/Surface$PhysicalDisplayInfo;)V

    .restart local v2       #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v6}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-virtual {v2, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked(Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    invoke-virtual {p0, v2, v6}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_1

    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .restart local v2       #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v6, 0x3

    invoke-virtual {p0, v2, v6}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_1

    .end local v1           #builtInDisplayId:I
    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v3           #displayToken:Landroid/os/IBinder;
    :cond_3
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter;->scanDisplaysLocked()V

    return-void
.end method
