.class Landroid/content/SyncAdaptersCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "SyncAdaptersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdaptersCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_NAME:Ljava/lang/String; = "sync-adapter"

.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final SERVICE_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/SyncAdaptersCache$MySerializer;

    invoke-direct {v0}, Landroid/content/SyncAdaptersCache$MySerializer;-><init>()V

    sput-object v0, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v2, "android.content.SyncAdapter"

    const-string v3, "android.content.SyncAdapter"

    const-string v4, "sync-adapter"

    sget-object v5, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    return-void
.end method


# virtual methods
.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;
    .locals 10
    .parameter "res"
    .parameter "packageName"
    .parameter "attrs"

    .prologue
    sget-object v0, Lcom/android/internal/R$styleable;->SyncAdapter:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .local v8, sa:Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, authority:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, accountType:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .local v3, userVisible:Z
    const/4 v0, 0x4

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .local v4, supportsUploading:Z
    const/4 v0, 0x6

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .local v5, isAlwaysSyncable:Z
    const/4 v0, 0x5

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .local v6, allowParallelSyncs:Z
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, settingsActivity:Ljava/lang/String;
    new-instance v0, Landroid/content/SyncAdapterType;

    invoke-direct/range {v0 .. v7}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #userVisible:Z
    .end local v4           #supportsUploading:Z
    .end local v5           #isAlwaysSyncable:Z
    .end local v6           #allowParallelSyncs:Z
    .end local v7           #settingsActivity:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/SyncAdaptersCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method
