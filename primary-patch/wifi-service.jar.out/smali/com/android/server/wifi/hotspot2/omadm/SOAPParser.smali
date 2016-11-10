.class public Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SOAPParser.java"


# static fields
.field private static TagOnly:[Ljava/lang/String;

.field private static final sRevMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoapMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/String;

    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "spp:sppVersion"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "redirectURI"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "requestReason"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "spp:sessionID"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "spp:supportedSPPVersions"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    const-string v4, "spp:supportedMOList"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    const-string v4, "spp:sppPostDevDataResponse"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v6, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v7, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v6, 0x2

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v7, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v6, 0x3

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v7, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapMappings:Ljava/util/Map;

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->TagOnly:[Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private static extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 10
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/XMLNode;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    .local p2, "mos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    sget-object v8, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sSoapAttributes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "attributes":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v8, v2

    if-nez v8, :cond_2

    sget-object v8, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .local v4, "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getMOTree()Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v3, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v3, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .end local v3    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .local v1, "attribute":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->sRevMappings:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    .restart local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    if-eqz v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-interface {p1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "attribute":Ljava/lang/String;
    .end local v4    # "field":Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    .end local v6    # "len$":I
    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;

    invoke-direct {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;-><init>()V

    .local v5, "soapParser":Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;
    new-instance v6, Ljava/io/File;

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v4

    .local v4, "root":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Marshalled: "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->getMOs()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    .local v2, "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v0

    .local v0, "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "back":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v2    # "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "---"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addText([CII)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' doesn\'t match current node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    return-void

    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Failed to close element"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRequestDetail()Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
    .locals 3

    .prologue
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "mos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-static {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->extractFields(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/util/Map;Ljava/util/Collection;)V

    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;-><init>(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v2
.end method

.method public parse(Ljava/io/File;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {v1, v0, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .local v0, "parent":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", atts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/SOAPParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0
.end method
