.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# instance fields
.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentLength"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "contentLength"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    return-void
.end method

.method private getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    check-cast p1, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object p1

    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const-string p1, "\"\""

    :cond_0
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "call action:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v15, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v13

    .local v13, "requestData":[B
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    :goto_0
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "requestDump:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v5

    .local v5, "connection":Lorg/ksoap2/transport/ServiceConnection;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "connection:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v15, "User-Agent"

    const-string v16, "ksoap2-android/2.6.0+"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "envelope:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v16, 0x78

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const-string v15, "SOAPAction"

    move-object/from16 v0, p1

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p2

    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v16, 0x78

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const-string v15, "Content-Type"

    const-string v16, "application/soap+xml;charset=utf-8"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v15, "Connection"

    const-string v16, "close"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "Accept-Encoding"

    const-string v16, "gzip"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "Content-Length"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v13

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_5

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ksoap2/HeaderProperty;

    .local v8, "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v5    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v9    # "i":I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v5    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    :cond_4
    const-string v15, "Content-Type"

    const-string v16, "text/xml;charset=utf-8"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v15, "POST"

    invoke-interface {v5, v15}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_4
    if-eqz v13, :cond_6

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .local v11, "os":Ljava/io/OutputStream;
    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v15, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    const/4 v13, 0x0

    .end local v11    # "os":Ljava/io/OutputStream;
    :cond_6
    const/4 v14, 0x0

    .local v14, "retHeaders":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "gZippedContent":Z
    const/4 v2, 0x0

    .local v2, "bcaCert":Z
    :try_start_0
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getResponseProperties()Ljava/util/List;

    move-result-object v14

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HttpTransportSE] retHeaders = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_a

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ksoap2/HeaderProperty;

    .restart local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    if-nez v15, :cond_9

    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v2    # "bcaCert":Z
    .end local v7    # "gZippedContent":Z
    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v9    # "i":I
    .end local v14    # "retHeaders":Ljava/util/List;
    :cond_8
    const-string v15, "Connection"

    const-string v16, "close"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "Accept-Encoding"

    const-string v16, "gzip"

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "GET"

    invoke-interface {v5, v15}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_4

    .restart local v2    # "bcaCert":Z
    .restart local v7    # "gZippedContent":Z
    .restart local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .restart local v9    # "i":I
    .restart local v14    # "retHeaders":Ljava/util/List;
    :cond_9
    :try_start_1
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Encoding"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "gzip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    :cond_a
    if-eqz v7, :cond_e

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .end local v9    # "i":I
    .local v10, "is":Ljava/io/InputStream;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v15, :cond_c

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x2000

    new-array v4, v15, [B

    .local v4, "buf":[B
    :goto_8
    const/4 v15, 0x0

    const/16 v16, 0x2000

    move/from16 v0, v16

    invoke-virtual {v10, v4, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "rd":I
    const/4 v15, -0x1

    if-ne v12, v15, :cond_10

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "responseDump:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    new-instance v10, Ljava/io/ByteArrayInputStream;

    .end local v10    # "is":Ljava/io/InputStream;
    invoke-direct {v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buf":[B
    .end local v12    # "rd":I
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_c
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    :cond_d
    return-object v14

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "i":I
    :cond_e
    :try_start_2
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v9    # "i":I
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    if-eqz v7, :cond_f

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v10

    .restart local v10    # "is":Ljava/io/InputStream;
    :goto_9
    if-nez v10, :cond_b

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    throw v6

    .end local v10    # "is":Ljava/io/InputStream;
    :cond_f
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v12    # "rd":I
    :cond_10
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .local v1, "retVal":I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    .locals 2
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ServiceConnectionSE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    iget v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method
