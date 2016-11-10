.class final Lcom/android/server/GraphicsStatsService$HistoricalData;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HistoricalData"
.end annotation


# instance fields
.field final mBuffer:[B

.field mPackageName:Ljava/lang/String;

.field mUid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GraphicsStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/GraphicsStatsService$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;ILandroid/os/MemoryFile;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "file"    # Landroid/os/MemoryFile;

    .prologue
    iput p2, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
