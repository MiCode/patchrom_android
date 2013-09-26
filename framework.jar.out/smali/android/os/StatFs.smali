.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private mStat:Llibcore/io/StructStatFs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    return-void
.end method

.method private static doStat(Ljava/lang/String;)Llibcore/io/StructStatFs;
    .locals 4
    .parameter "path"

    .prologue
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Llibcore/io/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAvailableBlocks()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    iget-wide v0, v0, Llibcore/io/StructStatFs;->f_bavail:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    iget-wide v0, v0, Llibcore/io/StructStatFs;->f_blocks:J

    long-to-int v0, v0

    return v0
.end method

.method public getBlockSize()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    iget-wide v0, v0, Llibcore/io/StructStatFs;->f_bsize:J

    long-to-int v0, v0

    return v0
.end method

.method public getFreeBlocks()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    iget-wide v0, v0, Llibcore/io/StructStatFs;->f_bfree:J

    long-to-int v0, v0

    return v0
.end method

.method public restat(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatFs;->mStat:Llibcore/io/StructStatFs;

    return-void
.end method
