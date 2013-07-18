.class public Lcom/netqin/NqSmsFilter;
.super Ljava/lang/Object;
.source "NqSmsFilter.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static filter:Lcom/netqin/NqSmsFilter;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/netqin/NqSmsFilter;->filter:Lcom/netqin/NqSmsFilter;

    const-string v0, "content://com.netqin.provider.SmsFilterProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/netqin/NqSmsFilter;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netqin/NqSmsFilter;->ctx:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/netqin/NqSmsFilter;
    .locals 2
    .parameter "context"

    .prologue
    const-class v1, Lcom/netqin/NqSmsFilter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netqin/NqSmsFilter;->filter:Lcom/netqin/NqSmsFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netqin/NqSmsFilter;

    invoke-direct {v0, p0}, Lcom/netqin/NqSmsFilter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netqin/NqSmsFilter;->filter:Lcom/netqin/NqSmsFilter;

    :cond_0
    sget-object v0, Lcom/netqin/NqSmsFilter;->filter:Lcom/netqin/NqSmsFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public nqGetNetQinLogo()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/netqin/NqSmsFilter;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "netqin_icon.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public nqGetNetQinText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-string v7, "Powered by NetQin"

    .local v7, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/netqin/NqSmsFilter;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/netqin/NqSmsFilter;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "NetqinText"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method public nqSmsFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "smsNumber"
    .parameter "smsContent"
    .parameter "packageName"
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .local v6, b:I
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v8

    const/4 v1, 0x2

    aput-object p3, v4, v1

    const/4 v1, 0x3

    aput-object p4, v4, v1

    .local v4, args:[Ljava/lang/String;
    iget-object v1, p0, Lcom/netqin/NqSmsFilter;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/netqin/NqSmsFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-ne v6, v8, :cond_2

    move v1, v8

    :goto_0
    return v1

    :cond_2
    move v1, v9

    goto :goto_0
.end method
