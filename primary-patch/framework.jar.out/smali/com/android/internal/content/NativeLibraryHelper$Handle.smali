.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final apkHandles:[J

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z


# direct methods
.method constructor <init>([JZZ)V
    .locals 2
    .param p1, "apkHandles"    # [J
    .param p2, "multiArch"    # Z
    .param p3, "extractNativeLibs"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    iput-boolean p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v3, v0, v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 3
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 10
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    new-array v0, v4, [J

    .local v0, "apkHandles":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "path":Ljava/lang/String;
    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->access$000(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v1

    aget-wide v6, v0, v1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    aget-wide v6, v0, v2

    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V
    invoke-static {v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open APK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    invoke-direct {v5, v0, p1, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZ)V

    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .local v0, "apkHandle":J
    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "apkHandle":J
    :cond_0
    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
