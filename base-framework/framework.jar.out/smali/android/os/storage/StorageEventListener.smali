.class public Landroid/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 0
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 0
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    return-void
.end method
