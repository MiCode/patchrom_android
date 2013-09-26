.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static final TAG:Ljava/lang/String; = "DrmStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .local v3, lastDot:I
    if-lez v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v4

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "DrmStore"

    const-string v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v7, "IOException in DrmStore.addDrmFile()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 22
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    const/4 v10, 0x0

    .local v10, os:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .local v11, result:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v19

    const-string v20, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .local v4, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v4}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v9

    .local v9, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    .local v14, size:J
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v8

    .local v8, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v8, v4}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v13

    .local v13, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v4, v13}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v16

    .local v16, stream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .local v5, contentUri:Landroid/net/Uri;
    const-string v19, "audio/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    if-eqz v5, :cond_7

    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .local v18, values:Landroid/content/ContentValues;
    const-string v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v19, "mime_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    const/16 v19, 0x3e8

    move/from16 v0, v19

    new-array v3, v0, [B

    .local v3, buffer:[B
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, count:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v3, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3           #buffer:[B
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    const-string v19, "DrmStore"

    const-string v20, "pushing file failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v11

    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string v19, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unsupported mime type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    :goto_4
    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_5
    throw v19

    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v11           #result:Landroid/content/Intent;
    .local v12, result:Landroid/content/Intent;
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v11, v12

    .end local v3           #buffer:[B
    .end local v6           #count:I
    .end local v12           #result:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    .restart local v11       #result:Landroid/content/Intent;
    :cond_7
    if-eqz p1, :cond_8

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    .local v7, e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "DrmStore"

    const-string v21, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #result:Landroid/content/Intent;
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v12       #result:Landroid/content/Intent;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto :goto_4

    .end local v11           #result:Landroid/content/Intent;
    .restart local v12       #result:Landroid/content/Intent;
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto/16 :goto_2
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
