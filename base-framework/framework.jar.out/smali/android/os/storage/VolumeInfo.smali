.class public Landroid/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final DOCUMENT_ROOT_PRIMARY_EMULATED:Ljava/lang/String; = "primary"

.field public static final EXTRA_VOLUME_ID:Ljava/lang/String; = "android.os.storage.extra.VOLUME_ID"

.field public static final EXTRA_VOLUME_STATE:Ljava/lang/String; = "android.os.storage.extra.VOLUME_STATE"

.field public static final ID_EMULATED_INTERNAL:Ljava/lang/String; = "emulated"

.field public static final ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final MOUNT_FLAG_VISIBLE:I = 0x2

.field public static final STATE_BAD_REMOVAL:I = 0x8

.field public static final STATE_CHECKING:I = 0x1

.field public static final STATE_EJECTING:I = 0x5

.field public static final STATE_FORMATTING:I = 0x4

.field public static final STATE_MOUNTED:I = 0x2

.field public static final STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final STATE_REMOVED:I = 0x7

.field public static final STATE_UNMOUNTABLE:I = 0x6

.field public static final STATE_UNMOUNTED:I = 0x0

.field public static final TYPE_ASEC:I = 0x3

.field public static final TYPE_EMULATED:I = 0x2

.field public static final TYPE_OBB:I = 0x4

.field public static final TYPE_PRIVATE:I = 0x1

.field public static final TYPE_PUBLIC:I

.field private static final sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnvironmentToBroadcast:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateToDescrip:Landroid/util/SparseIntArray;

.field private static sStateToEnvironment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final disk:Landroid/os/storage/DiskInfo;

.field public fsLabel:Ljava/lang/String;

.field public fsType:Ljava/lang/String;

.field public fsUuid:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public internalPath:Ljava/lang/String;

.field public mountFlags:I

.field public mountUserId:I

.field public final partGuid:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public state:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/os/storage/VolumeInfo$1;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "unmounted"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "checking"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "mounted"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const-string v1, "unmounted"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "ejecting"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "unmountable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "removed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "bad_removal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "unmounted"

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "checking"

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "mounted"

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "mounted_ro"

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "ejecting"

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "unmountable"

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "removed"

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v1, "bad_removal"

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040404

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040405

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040406

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040407

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104040c

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x104040b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1040409

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x1040403

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1040408

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/os/storage/VolumeInfo$2;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$2;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "disk"    # Landroid/os/storage/DiskInfo;
    .param p4, "partGuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iput p2, p0, Landroid/os/storage/VolumeInfo;->type:I

    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    return-void
.end method

.method public static buildStableMtpStorageId(Ljava/lang/String;)I
    .locals 5
    .param p0, "fsUuid"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x10000

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v0

    and-int v0, v2, v4

    if-nez v0, :cond_2

    const/high16 v0, 0x20000

    :cond_2
    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_3

    const/high16 v0, 0x20000

    :cond_3
    if-ne v0, v4, :cond_4

    const/high16 v0, -0x20000

    :cond_4
    or-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method

.method public static getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "envState"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBroadcastForState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getEnvironmentForState(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    sget-object v1, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "envState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "envState":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "envState":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public buildBrowseIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_0

    const-string v2, "com.android.externalstorage.documents"

    iget-object v3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v0

    :cond_0
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.externalstorage.documents"

    const-string v3, "primary"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    .prologue
    const-class v2, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/storage/StorageManager;

    .local v20, "storage":Landroid/os/storage/StorageManager;
    const/16 v18, 0x0

    .local v18, "allowMassStorage":Z
    if-eqz p3, :cond_5

    const-string v17, "unmounted"

    .local v17, "envState":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v5

    .local v5, "userPath":Ljava/io/File;
    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    .end local v5    # "userPath":Ljava/io/File;
    const-string v2, "/dev/null"

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "userPath":Ljava/io/File;
    :cond_0
    const/4 v6, 0x0

    .local v6, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "derivedFsUuid":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .local v10, "mtpReserveSize":J
    const-wide/16 v13, 0x0

    .local v13, "maxFileSize":J
    const/4 v4, 0x0

    .local v4, "mtpStorageId":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v9, 0x1

    .local v9, "emulated":Z
    invoke-virtual/range {v20 .. v21}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v19

    .local v19, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v19, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    const v4, 0x10001

    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    const-string v2, "emulated"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v8, 0x0

    .end local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v8, "removable":Z
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    const v2, 0x104000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    new-instance v2, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v7

    const/4 v12, 0x0

    new-instance v15, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v2 .. v17}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .end local v4    # "mtpStorageId":I
    .end local v5    # "userPath":Ljava/io/File;
    .end local v6    # "description":Ljava/lang/String;
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v10    # "mtpReserveSize":J
    .end local v13    # "maxFileSize":J
    .end local v16    # "derivedFsUuid":Ljava/lang/String;
    .end local v17    # "envState":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .restart local v4    # "mtpStorageId":I
    .restart local v5    # "userPath":Ljava/io/File;
    .restart local v6    # "description":Ljava/lang/String;
    .restart local v9    # "emulated":Z
    .restart local v10    # "mtpReserveSize":J
    .restart local v13    # "maxFileSize":J
    .restart local v16    # "derivedFsUuid":Ljava/lang/String;
    .restart local v17    # "envState":Ljava/lang/String;
    .restart local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_6
    const/4 v8, 0x1

    .restart local v8    # "removable":Z
    goto :goto_1

    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_9

    const/4 v9, 0x0

    .restart local v9    # "emulated":Z
    const/4 v8, 0x1

    .restart local v8    # "removable":Z
    invoke-virtual/range {v20 .. v21}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_8

    const v4, 0x10001

    :goto_2
    const-string v2, "vfat"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide v13, 0xffffffffL

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->buildStableMtpStorageId(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected volume type "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Landroid/os/storage/VolumeInfo;
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string v0, "type"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TYPE_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "diskId"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "partGuid"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mountFlags"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "MOUNT_FLAG_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mountUserId"

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "state"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "STATE_"

    iget v3, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "fsType"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fsUuid"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fsLabel"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "path"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "internalPath"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "private"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "emulated"

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040480

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalPathForUser(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string v2, "/storage/"

    const-string v3, "/mnt/media_rw/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getMountUserId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public getPath()Ljava/io/File;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPathForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getStateDescription()I
    .locals 3

    .prologue
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMountedReadable()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMountedWritable()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryPhysical()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleForRead(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-eq v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisibleForWrite(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
