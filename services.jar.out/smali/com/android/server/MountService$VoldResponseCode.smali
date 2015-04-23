.class Lcom/android/server/MountService$VoldResponseCode;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoldResponseCode"
.end annotation


# static fields
.field public static final AsecListResult:I = 0x6f

.field public static final AsecPathResult:I = 0xd3

.field public static final BENCHMARK_RESULT:I = 0x295

.field public static final CryptfsGetfieldResult:I = 0x71

.field public static final DISK_CREATED:I = 0x280

.field public static final DISK_DESTROYED:I = 0x289

.field public static final DISK_LABEL_CHANGED:I = 0x282

.field public static final DISK_SCANNED:I = 0x283

.field public static final DISK_SIZE_CHANGED:I = 0x281

.field public static final DISK_SYS_PATH_CHANGED:I = 0x284

.field public static final MOVE_STATUS:I = 0x294

.field public static final OpFailedMediaBlank:I = 0x192

.field public static final OpFailedMediaCorrupt:I = 0x193

.field public static final OpFailedNoMedia:I = 0x191

.field public static final OpFailedStorageBusy:I = 0x195

.field public static final OpFailedStorageNotFound:I = 0x196

.field public static final OpFailedVolNotMounted:I = 0x194

.field public static final ShareEnabledResult:I = 0xd4

.field public static final ShareStatusResult:I = 0xd2

.field public static final StorageUsersListResult:I = 0x70

.field public static final TRIM_RESULT:I = 0x296

.field public static final VOLUME_CREATED:I = 0x28a

.field public static final VOLUME_DESTROYED:I = 0x293

.field public static final VOLUME_FS_LABEL_CHANGED:I = 0x28e

.field public static final VOLUME_FS_TYPE_CHANGED:I = 0x28c

.field public static final VOLUME_FS_UUID_CHANGED:I = 0x28d

.field public static final VOLUME_INTERNAL_PATH_CHANGED:I = 0x290

.field public static final VOLUME_PATH_CHANGED:I = 0x28f

.field public static final VOLUME_STATE_CHANGED:I = 0x28b

.field public static final VolumeListResult:I = 0x6e


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$VoldResponseCode;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
