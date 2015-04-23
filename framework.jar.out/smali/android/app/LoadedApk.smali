.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$1;,
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LoadedApk"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field private final mOverlayDirs:[Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRegisterPackage:Z

.field private final mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mSplitAppDirs:[Ljava/lang/String;

.field private final mSplitResDirs:[Ljava/lang/String;

.field private final mUnboundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/LoadedApk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/LoadedApk;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 4
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    iput v3, p0, Landroid/app/LoadedApk;->mClientCount:I

    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    iput-object v2, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-boolean v3, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    iput-boolean v3, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V
    .locals 3
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z
    .param p7, "registerPackage"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/LoadedApk;->mClientCount:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .local v0, "myUid":I
    invoke-static {p2}, Landroid/app/LoadedApk;->adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_1

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    iput-boolean p7, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    iget-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    return-void

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v1

    .local v1, "runtimeIsa":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "secondaryIsa":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.dalvik.vm.isa."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .local v0, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .end local v0    # "modified":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "runtimeIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v1    # "runtimeIsa":Ljava/lang/String;
    .restart local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .restart local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    goto :goto_0

    .end local v1    # "runtimeIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v3, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get package info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; is package not installed?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get package info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; is system dying?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v9, :cond_2

    move v6, v7

    .local v6, "sharedUserIdSet":Z
    :goto_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .local v4, "processNameNotDefault":Z
    :goto_1
    if-nez v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    move v5, v7

    .local v5, "sharable":Z
    :goto_2
    if-eqz v5, :cond_5

    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$1;)V

    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void

    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "processNameNotDefault":Z
    .end local v5    # "sharable":Z
    .end local v6    # "sharedUserIdSet":Z
    :cond_2
    move v6, v8

    goto :goto_0

    .restart local v6    # "sharedUserIdSet":Z
    :cond_3
    move v4, v8

    goto :goto_1

    .restart local v4    # "processNameNotDefault":Z
    :cond_4
    move v5, v8

    goto :goto_2

    .restart local v5    # "sharable":Z
    :cond_5
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_3
.end method

.method private rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 8
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "onResourcesLoaded"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "callback":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v0    # "callback":Ljava/lang/reflect/Method;
    .end local v3    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "LoadedApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No resource references to update in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "callback":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v2

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to rewrite resource references for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .restart local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_1
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unregistered here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    .prologue
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unbound here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 25

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v23, v0

    monitor-exit p0

    :goto_0
    return-object v23

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/LoadedApk;->mIncludeCode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "android"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .local v16, "isa":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v16    # "isa":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    move/from16 v23, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v23, :cond_2

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .local v11, "instrumentationPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .local v8, "instrumentationAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v12, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .local v12, "instrumentationSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .local v9, "instrumentationLibDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v13, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .local v13, "instrumentedAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v15, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .local v15, "instrumentedSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v14, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .local v14, "instrumentedLibDir":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "instrumentationLibs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_5

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_6

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {v11}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :cond_7
    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    aget-object v18, v6, v7

    .local v18, "lib":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "lib":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_b

    move-object v6, v10

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v7, v0, :cond_b

    aget-object v18, v6, v7

    .restart local v18    # "lib":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "lib":Ljava/lang/String;
    :cond_b
    sget-object v23, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    .local v21, "zip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "apk":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "!/lib/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v4    # "apk":Ljava/lang/String;
    .end local v5    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "instrumentationAppDir":Ljava/lang/String;
    .end local v9    # "instrumentationLibDir":Ljava/lang/String;
    .end local v10    # "instrumentationLibs":[Ljava/lang/String;
    .end local v11    # "instrumentationPackageName":Ljava/lang/String;
    .end local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v13    # "instrumentedAppDir":Ljava/lang/String;
    .end local v14    # "instrumentedLibDir":Ljava/lang/String;
    .end local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v19    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "zip":Ljava/lang/String;
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v23

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v23

    .restart local v5    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "instrumentationAppDir":Ljava/lang/String;
    .restart local v9    # "instrumentationLibDir":Ljava/lang/String;
    .restart local v10    # "instrumentationLibs":[Ljava/lang/String;
    .restart local v11    # "instrumentationPackageName":Ljava/lang/String;
    .restart local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .restart local v13    # "instrumentedAppDir":Ljava/lang/String;
    .restart local v14    # "instrumentedLibDir":Ljava/lang/String;
    .restart local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .restart local v19    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "zip":Ljava/lang/String;
    .restart local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :try_start_5
    sget-object v23, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "lib":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v20

    .local v20, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local v5    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "instrumentationAppDir":Ljava/lang/String;
    .end local v9    # "instrumentationLibDir":Ljava/lang/String;
    .end local v10    # "instrumentationLibs":[Ljava/lang/String;
    .end local v11    # "instrumentationPackageName":Ljava/lang/String;
    .end local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v13    # "instrumentedAppDir":Ljava/lang/String;
    .end local v14    # "instrumentedLibDir":Ljava/lang/String;
    .end local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v18    # "lib":Ljava/lang/String;
    .end local v19    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v21    # "zip":Ljava/lang/String;
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v23, v0

    monitor-exit p0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v23, v0

    if-nez v23, :cond_e

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .restart local v5    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v23

    goto/16 :goto_2

    .end local v5    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "isa":Ljava/lang/String;
    :catch_1
    move-exception v23

    goto/16 :goto_1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayDirs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .prologue
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v10

    const/4 v1, 0x0

    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/ArrayMap;

    move-object v7, v0

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    :try_start_1
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    if-nez v8, :cond_1

    :try_start_2
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v5

    const/4 v2, 0x0

    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    :try_start_2
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method public getSplitAppDirs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitResDirs()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object v0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    sget-boolean v0, Landroid/app/LoadedApk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 12
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v9, :cond_1

    iget-object v1, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .local v1, "app":Landroid/app/Application;
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .local v2, "appClass":Ljava/lang/String;
    if-nez p1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "android.app.Application"

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .local v4, "cl":Ljava/lang/ClassLoader;
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    :cond_4
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v9, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v3

    .local v3, "appContext":Landroid/app/ContextImpl;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v4, v2, v3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "appContext":Landroid/app/ContextImpl;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_5
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, v9, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz p2, :cond_6

    :try_start_1
    invoke-virtual {p2, v1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {p0, v9}, Landroid/app/LoadedApk;->getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v8

    .local v8, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .local v7, "id":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_7

    const/16 v9, 0x7f

    if-ne v7, v9, :cond_8

    :cond_7
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to instantiate application "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {p2, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create application "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v7    # "id":I
    .restart local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v10, v9, v7}, Landroid/app/LoadedApk;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    move-result v3

    .local v3, "reportRegistrationLeaks":Z
    iget-object v8, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .local v4, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    .local v2, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v1, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has leaked IntentReceiver "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " that was "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "originally registered here. Are you missing a "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "call to unregisterReceiver()?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .local v1, "leak":Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const-string v7, "ActivityThread"

    invoke-virtual {v1}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1
    :try_start_2
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v8, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_3
    iget-object v7, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .local v6, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v6, :cond_3

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk$ServiceDispatcher;

    .local v5, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v1, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has leaked ServiceConnection "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " that was originally bound here"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .local v1, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const-string v7, "ActivityThread"

    invoke-virtual {v1}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v4    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .restart local v4    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_3
    :try_start_7
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    return-void

    .end local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    .restart local v0    # "i":I
    .restart local v1    # "leak":Landroid/app/ServiceConnectionLeaked;
    .restart local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catch_0
    move-exception v7

    goto :goto_3

    .end local v5    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v6    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .local v1, "leak":Landroid/app/IntentReceiverLeaked;
    .restart local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    return-void
.end method
