.class public Lcom/android/server/wifi/configparse/MIMEContainer;
.super Ljava/lang/Object;
.source "MIMEContainer.java"


# static fields
.field private static final Boundary:Ljava/lang/String; = "boundary="

.field private static final CharsetTag:Ljava/lang/String; = "charset="

.field private static final Encoding:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final Type:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mBase64:Z

.field private final mCharset:Ljava/nio/charset/Charset;

.field private final mContentType:Ljava/lang/String;

.field private final mLast:Z

.field private final mMimeContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMixed:Z

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V
    .locals 23
    .param p1, "in"    # Ljava/io/LineNumberReader;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v9

    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v18, "Content-Type"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .local v17, "type":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing Content-Type @ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    const/4 v13, 0x0

    .local v13, "multiPart":Z
    const/4 v12, 0x0

    .local v12, "mixed":Z
    const/4 v15, 0x0

    .local v15, "subBoundary":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .local v5, "charset":Ljava/nio/charset/Charset;
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "multipart/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v13, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "attribute":Ljava/lang/String;
    const-string v18, "boundary="

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "boundary="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/Utils;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .end local v3    # "attribute":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "/mixed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    if-eqz v13, :cond_c

    if-eqz v15, :cond_c

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-nez v11, :cond_8

    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected EOF before first boundary @ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .end local v11    # "line":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "text/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "attribute":Ljava/lang/String;
    const-string v18, "charset="

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "charset="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_1

    .end local v3    # "attribute":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_8
    const-string v18, "--"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v15, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    :cond_9
    new-instance v6, Lcom/android/server/wifi/configparse/MIMEContainer;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v15}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .local v6, "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v6}, Lcom/android/server/wifi/configparse/MIMEContainer;->isLast()Z

    move-result v18

    if-eqz v18, :cond_9

    .end local v6    # "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    .end local v11    # "line":Ljava/lang/String;
    :goto_2
    const-string v18, "Content-Transfer-Encoding"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .local v7, "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "quoted":Z
    const/4 v4, 0x0

    .local v4, "base64":Z
    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "text":Ljava/lang/String;
    const-string v18, "quoted-printable"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v14, 0x1

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "text":Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "%s MIME container, boundary \'%s\', type \'%s\', encoding %s"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    if-eqz v13, :cond_e

    const-string v18, "multipart"

    :goto_4
    aput-object v18, v21, v22

    const/16 v18, 0x1

    aput-object p2, v21, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v21, v18

    const/16 v18, 0x3

    aput-object v7, v21, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .local v8, "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v8}, Lcom/android/server/wifi/configparse/MIMEContainer;->getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    return-void

    .end local v4    # "base64":Z
    .end local v7    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v14    # "quoted":Z
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    goto/16 :goto_2

    .restart local v4    # "base64":Z
    .restart local v7    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "quoted":Z
    .restart local v16    # "text":Ljava/lang/String;
    :cond_d
    const-string v18, "base64"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "text":Ljava/lang/String;
    :cond_e
    const-string v18, "plain"

    goto :goto_4
.end method

.method private static boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fromStrictHex(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "quoted"    # Z
    .param p3, "eof"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "text":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected EOF file in body @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "end":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p3, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private isLast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    return v0
.end method

.method private static parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .locals 15
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x20

    const/4 v13, 0x0

    const/4 v8, 0x0

    .local v8, "value":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "header":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_0

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing body @ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    if-eqz v1, :cond_8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "values":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    array-length v11, v10

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .local v9, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v7, v0, v3

    .local v7, "segment":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "segment":Ljava/lang/String;
    .end local v9    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "values":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v11, v14, :cond_3

    if-nez v8, :cond_2

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Illegal blank prefix in header line \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' @ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    const/16 v11, 0x3a

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .local v6, "nameEnd":I
    if-gez v6, :cond_4

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad header line: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' @ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "values":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    array-length v11, v10

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v9    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v10

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v7, v0, v3

    .restart local v7    # "segment":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v7    # "segment":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "values":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "value":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v8    # "value":Ljava/lang/StringBuilder;
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .end local v6    # "nameEnd":I
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v9    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "values":[Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "values":[Ljava/lang/String;
    :cond_8
    return-object v2
.end method

.method private static recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "octets":[B
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nesting"    # I

    .prologue
    const/16 v8, 0xa

    mul-int/lit8 v3, p2, 0x4

    new-array v1, v3, [C

    .local v1, "indent":[C
    const/16 v3, 0x20

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    if-eqz v3, :cond_0

    const-string v3, "base64, type "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/configparse/MIMEContainer;

    .local v2, "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    if-eqz v3, :cond_1

    const-string v3, "mixed"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, "other"

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s, type %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x186a0

    if-ge v3, v4, :cond_4

    const-string v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chars\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static unescape(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad codepoint "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in quoted printable @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    move-result v1

    .local v1, "h1":I
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    move-result v2

    .local v2, "h2":I
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    shl-int/lit8 v5, v1, 0x4

    or-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v1    # "h1":I
    .restart local v2    # "h2":I
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    return v0
.end method

.method public isMixed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
