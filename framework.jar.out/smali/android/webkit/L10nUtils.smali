.class public Landroid/webkit/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;

.field private static mIdsArray:[I

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/L10nUtils;->mIdsArray:[I

    return-void

    :array_0
    .array-data 0x4
        0x22t 0x3t 0x4t 0x1t
        0x23t 0x3t 0x4t 0x1t
        0x24t 0x3t 0x4t 0x1t
        0x25t 0x3t 0x4t 0x1t
        0x26t 0x3t 0x4t 0x1t
        0x27t 0x3t 0x4t 0x1t
        0x28t 0x3t 0x4t 0x1t
        0x29t 0x3t 0x4t 0x1t
        0x2at 0x3t 0x4t 0x1t
        0x2bt 0x3t 0x4t 0x1t
        0x2ct 0x3t 0x4t 0x1t
        0x2dt 0x3t 0x4t 0x1t
        0x2et 0x3t 0x4t 0x1t
        0x2ft 0x3t 0x4t 0x1t
        0x30t 0x3t 0x4t 0x1t
        0x31t 0x3t 0x4t 0x1t
        0x32t 0x3t 0x4t 0x1t
        0x33t 0x3t 0x4t 0x1t
        0x34t 0x3t 0x4t 0x1t
        0x35t 0x3t 0x4t 0x1t
        0x36t 0x3t 0x4t 0x1t
        0x37t 0x3t 0x4t 0x1t
        0x38t 0x3t 0x4t 0x1t
        0x39t 0x3t 0x4t 0x1t
        0x3at 0x3t 0x4t 0x1t
        0x3bt 0x3t 0x4t 0x1t
        0x3ct 0x3t 0x4t 0x1t
        0x3dt 0x3t 0x4t 0x1t
        0x3et 0x3t 0x4t 0x1t
        0x3ft 0x3t 0x4t 0x1t
        0x40t 0x3t 0x4t 0x1t
        0x41t 0x3t 0x4t 0x1t
        0x42t 0x3t 0x4t 0x1t
        0x43t 0x3t 0x4t 0x1t
        0x44t 0x3t 0x4t 0x1t
        0x45t 0x3t 0x4t 0x1t
        0x46t 0x3t 0x4t 0x1t
        0x47t 0x3t 0x4t 0x1t
        0x48t 0x3t 0x4t 0x1t
        0x49t 0x3t 0x4t 0x1t
        0x4at 0x3t 0x4t 0x1t
        0x4bt 0x3t 0x4t 0x1t
        0x4ct 0x3t 0x4t 0x1t
        0x4dt 0x3t 0x4t 0x1t
        0x4et 0x3t 0x4t 0x1t
        0x4ft 0x3t 0x4t 0x1t
        0x50t 0x3t 0x4t 0x1t
        0x51t 0x3t 0x4t 0x1t
        0x52t 0x3t 0x4t 0x1t
        0x53t 0x3t 0x4t 0x1t
        0x54t 0x3t 0x4t 0x1t
        0x55t 0x3t 0x4t 0x1t
        0x56t 0x3t 0x4t 0x1t
        0x57t 0x3t 0x4t 0x1t
        0x58t 0x3t 0x4t 0x1t
        0x59t 0x3t 0x4t 0x1t
        0x5at 0x3t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 110
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 113
    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_0
    return-object v2

    .line 116
    :cond_0
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 117
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 118
    .local v0, needToLoad:Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    .end local v0           #needToLoad:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    .restart local v0       #needToLoad:Z
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 100
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    .line 104
    :cond_0
    sget-object v1, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, localisedString:Ljava/lang/String;
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    .line 97
    return-void
.end method
