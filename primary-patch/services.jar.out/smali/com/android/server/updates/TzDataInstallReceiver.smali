.class public Lcom/android/server/updates/TzDataInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "TzDataInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TZDataInstallReceiver"

.field private static final TZ_DATA_DIR:Ljava/io/File;

.field private static final UPDATE_CONTENT_FILE_NAME:Ljava/lang/String; = "tzdata_bundle.zip"

.field private static final UPDATE_DIR_NAME:Ljava/lang/String;

.field private static final UPDATE_METADATA_DIR_NAME:Ljava/lang/String; = "metadata/"

.field private static final UPDATE_VERSION_FILE_NAME:Ljava/lang/String; = "version"


# instance fields
.field private final installer:Llibcore/tzdata/update/TzDataBundleInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/zoneinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updates/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    sget-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    const-string v1, "tzdata_bundle.zip"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Llibcore/tzdata/update/TzDataBundleInstaller;

    const-string v1, "TZDataInstallReceiver"

    sget-object v2, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Llibcore/tzdata/update/TzDataBundleInstaller;

    return-void
.end method


# virtual methods
.method protected install([BI)V
    .locals 4
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Llibcore/tzdata/update/TzDataBundleInstaller;

    invoke-virtual {v1, p1}, Llibcore/tzdata/update/TzDataBundleInstaller;->install([B)Z

    move-result v0

    .local v0, "valid":Z
    const-string v1, "TZDataInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone data install valid for this device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    return-void
.end method
