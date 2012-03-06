.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 189
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 190
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 198
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 199
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 180
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 181
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0
    .parameter "text"
    .parameter "intent"
    .parameter "uri"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 208
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 209
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 210
    return-void
.end method


# virtual methods
.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"

    .prologue
    .line 257
    iget-object v7, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 258
    iget-object v7, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 314
    :cond_0
    :goto_0
    return-object v7

    .line 262
    :cond_1
    iget-object v7, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 267
    const/4 v6, 0x0

    .line 270
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v9, "text/*"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 272
    .local v2, descr:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .line 273
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 276
    .local v5, reader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v1, builder:Ljava/lang/StringBuilder;
    const/16 v7, 0x2000

    new-array v0, v7, [C

    .line 279
    .local v0, buffer:[C
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_3

    .line 280
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 284
    .end local v0           #buffer:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #descr:Landroid/content/res/AssetFileDescriptor;
    .end local v4           #len:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v7

    .line 294
    if-eqz v6, :cond_2

    .line 296
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 304
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 282
    .restart local v0       #buffer:[C
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #descr:Landroid/content/res/AssetFileDescriptor;
    .restart local v4       #len:I
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 294
    if-eqz v6, :cond_0

    .line 296
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v8

    goto :goto_0

    .line 288
    .end local v0           #buffer:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #descr:Landroid/content/res/AssetFileDescriptor;
    .end local v4           #len:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    .line 290
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "ClippedData"

    const-string v8, "Failure loading text"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 294
    if-eqz v6, :cond_0

    .line 296
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 297
    :catch_3
    move-exception v8

    goto :goto_0

    .line 294
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    .line 296
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 298
    :cond_4
    :goto_3
    throw v7

    .line 309
    .end local v6           #stream:Ljava/io/FileInputStream;
    :cond_5
    iget-object v7, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_6

    .line 310
    iget-object v7, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 314
    :cond_6
    const-string v7, ""

    goto :goto_0

    .line 297
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    goto :goto_2

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method
