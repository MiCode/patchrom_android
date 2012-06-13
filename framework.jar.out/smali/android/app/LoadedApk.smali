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


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field public final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V
    .locals 3
    .parameter "activityThread"
    .parameter "aInfo"
    .parameter "compatInfo"
    .parameter "mainThread"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 96
    iput v2, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 112
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 113
    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 115
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 116
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 118
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 119
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 121
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 123
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 124
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 125
    iget-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p3}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 127
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 128
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 129
    invoke-static {p4}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 131
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p4, p3, v2}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 139
    :cond_0
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 140
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 142
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "activityThread"
    .parameter "name"
    .parameter "systemContext"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 96
    iput v2, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 146
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 147
    if-eqz p4, :cond_0

    .end local p4
    :goto_0
    iput-object p4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 153
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 155
    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 157
    iput-boolean v2, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 159
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 160
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 161
    iget-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p5}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 162
    return-void

    .line 147
    .restart local p4
    :cond_0
    new-instance p4, Landroid/content/pm/ApplicationInfo;

    .end local p4
    invoke-direct {p4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    goto :goto_0
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/16 v8, 0x3a

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 216
    .local v2, first:Z
    if-eqz p0, :cond_1

    .line 217
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 218
    .local v6, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x0

    .line 223
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 230
    .local v1, dupCheck:Z
    :goto_2
    if-eqz p1, :cond_5

    .line 231
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 232
    .restart local v6       #s:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 231
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 228
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dupCheck:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 236
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dupCheck:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 237
    const/4 v2, 0x0

    .line 241
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 239
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 245
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-interface {v2, p0, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 198
    :goto_0
    return-object v2

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 198
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 343
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 346
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 362
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v9, :cond_1

    move v6, v7

    .line 363
    .local v6, sharedUserIdSet:Z
    :goto_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v4, v7

    .line 366
    .local v4, processNameNotDefault:Z
    :goto_1
    if-nez v6, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    move v5, v7

    .line 367
    .local v5, sharable:Z
    :goto_2
    if-eqz v5, :cond_4

    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$1;)V

    .line 371
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 372
    return-void

    .line 347
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #processNameNotDefault:Z
    .end local v5           #sharable:Z
    .end local v6           #sharedUserIdSet:Z
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    move v6, v8

    .line 362
    goto :goto_0

    .restart local v6       #sharedUserIdSet:Z
    :cond_2
    move v4, v8

    .line 363
    goto :goto_1

    .restart local v4       #processNameNotDefault:Z
    :cond_3
    move v5, v8

    .line 366
    goto :goto_2

    .line 367
    .restart local v5       #sharable:Z
    :cond_4
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_3
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .parameter "context"
    .parameter "r"

    .prologue
    .line 586
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v5

    .line 587
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 588
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 589
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    .line 590
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 591
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    .line 592
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 594
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 599
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    .line 600
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 601
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unregistered here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 606
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 607
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 610
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 613
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 615
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    .line 616
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 617
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    .line 618
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 619
    .restart local v0       #ex:Ljava/lang/RuntimeException;
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

    .line 631
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 624
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 625
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

    .line 628
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
    .parameter "context"
    .parameter "c"

    .prologue
    .line 845
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 846
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 848
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 849
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    .line 850
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 851
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    .line 852
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 854
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 855
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 858
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 860
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    .line 861
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 862
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unbound here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 867
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 868
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 873
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 875
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    .line 876
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 877
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    .line 878
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 879
    .restart local v0       #ex:Ljava/lang/RuntimeException;
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

    .line 890
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 884
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 885
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

    .line 888
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
    .line 434
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 9

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 315
    :goto_0
    return-object v6

    .line 254
    :cond_0
    iget-boolean v6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 255
    iget-object v5, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 266
    .local v5, zip:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v6, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 268
    .local v0, instrumentationAppDir:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v6, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 270
    .local v1, instrumentationAppPackage:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v3, v6, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 272
    .local v3, instrumentedAppDir:Ljava/lang/String;
    const/4 v2, 0x0

    .line 274
    .local v2, instrumentationLibs:[Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 278
    invoke-static {v1}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_2
    iget-object v6, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    if-nez v6, :cond_3

    if-eqz v2, :cond_4

    .line 285
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/app/LoadedApk;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 302
    .local v4, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v6

    iget-object v7, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v6, v5, v7, v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 305
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 307
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 315
    .end local v0           #instrumentationAppDir:Ljava/lang/String;
    .end local v1           #instrumentationAppPackage:Ljava/lang/String;
    .end local v2           #instrumentationLibs:[Ljava/lang/String;
    .end local v3           #instrumentedAppDir:Ljava/lang/String;
    .end local v4           #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .end local v5           #zip:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_0

    .line 316
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 309
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v6, :cond_6

    .line 310
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 312
    :cond_6
    iget-object v6, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v6, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .parameter "r"
    .parameter "context"
    .parameter "handler"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 557
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 560
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    .line 561
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    .line 562
    if-eqz v7, :cond_3

    .line 563
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 566
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    .line 567
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

    .line 569
    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    .line 570
    if-nez v8, :cond_1

    .line 571
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 572
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :goto_1
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 580
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 577
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    .line 581
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 3
    .parameter "mainThread"
    
    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v2}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .parameter "c"
    .parameter "context"
    .parameter "handler"
    .parameter "flags"

    .prologue
    .line 823
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 826
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    .line 827
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 829
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    .line 830
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 831
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    .line 832
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 833
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 837
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    .line 840
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 8
    .parameter "forceDefaultAppClass"
    .parameter "instrumentation"

    .prologue
    .line 462
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_1

    .line 463
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 502
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    const/4 v0, 0x0

    .line 468
    .local v0, app:Landroid/app/Application;
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 469
    .local v1, appClass:Ljava/lang/String;
    if-nez p1, :cond_2

    if-nez v1, :cond_3

    .line 470
    :cond_2
    const-string v1, "android.app.Application"

    .line 474
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 475
    .local v3, cl:Ljava/lang/ClassLoader;
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 476
    .local v2, appContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p0, v5, v6}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 477
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 479
    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :cond_4
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 490
    if-eqz p2, :cond_0

    .line 492
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v4

    .line 494
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {p2, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 495
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 480
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 481
    .restart local v4       #e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 482
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 507
    iget-object v7, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 509
    .local v4, rmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 511
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 513
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked IntentReceiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "originally registered here. Are you missing a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "call to unregisterReceiver()?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 518
    .local v2, leak:Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 519
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v7

    goto :goto_0

    .line 528
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #leak:Landroid/app/IntentReceiverLeaked;
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v7, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 532
    .local v6, smap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v6, :cond_1

    .line 533
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 536
    .local v5, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v2, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked ServiceConnection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was originally bound here"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, leak:Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 540
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    :goto_2
    invoke-virtual {v5}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    goto :goto_1

    .line 550
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #leak:Landroid/app/ServiceConnectionLeaked;
    .end local v5           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    iget-object v7, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void

    .line 544
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #leak:Landroid/app/ServiceConnectionLeaked;
    .restart local v5       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catch_1
    move-exception v7

    goto :goto_2
.end method
