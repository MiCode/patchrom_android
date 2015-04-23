.class public Lorg/ksoap2/serialization/SoapSerializationEnvelope;
.super Lorg/ksoap2/SoapEnvelope;
.source "SoapSerializationEnvelope.java"


# static fields
.field private static final ANY_TYPE_LABEL:Ljava/lang/String; = "anyType"

.field private static final ARRAY_MAPPING_NAME:Ljava/lang/String; = "Array"

.field private static final ARRAY_TYPE_LABEL:Ljava/lang/String; = "arrayType"

.field static final DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

.field private static final HREF_LABEL:Ljava/lang/String; = "href"

.field private static final ID_LABEL:Ljava/lang/String; = "id"

.field private static final ITEM_LABEL:Ljava/lang/String; = "item"

.field private static final NIL_LABEL:Ljava/lang/String; = "nil"

.field private static final NULL_LABEL:Ljava/lang/String; = "null"

.field protected static final QNAME_MARSHAL:I = 0x3

.field protected static final QNAME_NAMESPACE:I = 0x0

.field protected static final QNAME_TYPE:I = 0x1

.field private static final ROOT_LABEL:Ljava/lang/String; = "root"

.field private static final TYPE_LABEL:Ljava/lang/String; = "type"


# instance fields
.field protected addAdornments:Z

.field public avoidExceptionForUnknownProperty:Z

.field protected classToQName:Ljava/util/Hashtable;

.field public dotNet:Z

.field idMap:Ljava/util/Hashtable;

.field public implicitTypes:Z

.field multiRef:Ljava/util/Vector;

.field public properties:Ljava/util/Hashtable;

.field protected qNameToClass:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/ksoap2/serialization/DM;

    invoke-direct {v0}, Lorg/ksoap2/serialization/DM;-><init>()V

    sput-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapEnvelope;-><init>(I)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "Array"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    invoke-interface {v0, p0}, Lorg/ksoap2/serialization/Marshal;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;II)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "dflt"    # I

    .prologue
    if-nez p1, :cond_1

    .end local p3    # "dflt":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "dflt":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p4, "marshal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    check-cast p4, Lorg/ksoap2/serialization/Marshal;

    .end local p4    # "marshal":Ljava/lang/Object;
    invoke-interface {p4, p1, p2}, Lorg/ksoap2/serialization/Marshal;->writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    .end local p2    # "element":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p2    # "element":Ljava/lang/Object;
    .restart local p4    # "marshal":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/ksoap2/serialization/SoapObject;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    goto :goto_0

    .restart local p2    # "element":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lorg/ksoap2/serialization/KvmSerializable;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/ksoap2/serialization/KvmSerializable;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    goto :goto_0

    .restart local p2    # "element":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/util/Vector;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Vector;

    .end local p2    # "element":Ljava/lang/Object;
    iget-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    goto :goto_0

    .restart local p2    # "element":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    return-void
.end method

.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "marshal"    # Lorg/ksoap2/serialization/Marshal;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v2, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v2, p1, p2, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    move-object v0, p3

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public addTemplate(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "so"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v1, Lorg/ksoap2/serialization/SoapPrimitive;

    iget-object v2, p1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    instance-of v3, p2, Lorg/ksoap2/serialization/SoapObject;

    if-nez v3, :cond_0

    instance-of v3, p2, Lorg/ksoap2/serialization/SoapPrimitive;

    if-eqz v3, :cond_3

    :cond_0
    move-object p1, p2

    .end local p1    # "type":Ljava/lang/Object;
    :cond_1
    :goto_0
    instance-of v3, p1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    .local v0, "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lorg/ksoap2/serialization/SoapObject;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    aput-object v5, v2, v9

    .end local v0    # "so":Lorg/ksoap2/serialization/SoapObject;
    :cond_2
    :goto_1
    return-object v2

    .restart local p1    # "type":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .local p1, "type":Ljava/lang/Class;
    goto :goto_0

    .end local p1    # "type":Ljava/lang/Class;
    :cond_4
    instance-of v3, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    if-eqz v3, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/ksoap2/serialization/SoapPrimitive;

    .local v1, "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapPrimitive;->getNamespace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapPrimitive;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    sget-object v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    aput-object v3, v2, v9

    goto :goto_1

    .end local v1    # "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    :cond_5
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_6

    sget-object v3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    if-eq p1, v3, :cond_6

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .local v2, "tmp":[Ljava/lang/Object;
    if-nez v2, :cond_2

    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_6
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "anyType"

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    aput-object v5, v2, v9

    goto :goto_1
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ksoap2/SoapFault;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v3, v3, Lorg/ksoap2/SoapFault;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v3, Lorg/ksoap2/SoapFault;

    throw v3

    :cond_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v1, Lorg/ksoap2/serialization/KvmSerializable;

    .local v1, "ks":Lorg/ksoap2/serialization/KvmSerializable;
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "ret":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v1, v0}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isAddAdornments()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    return v0
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    iput-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_1

    new-instance v7, Lorg/ksoap2/SoapFault;

    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    invoke-direct {v7, v0}, Lorg/ksoap2/SoapFault;-><init>(I)V

    .local v7, "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v7, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v7, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .end local v7    # "fault":Lorg/ksoap2/SoapFault;
    :cond_0
    return-void

    :cond_1
    new-instance v7, Lorg/ksoap2/SoapFault12;

    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    invoke-direct {v7, v0}, Lorg/ksoap2/SoapFault12;-><init>(I)V

    .restart local v7    # "fault":Lorg/ksoap2/SoapFault;
    goto :goto_0

    .end local v7    # "fault":Lorg/ksoap2/SoapFault;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "root"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "rootAttr":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "o":Ljava/lang/Object;
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    if-nez v0, :cond_4

    :cond_3
    iput-object v8, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, "elementName":Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "href"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "href":Ljava/lang/String;
    if-eqz v9, :cond_4

    if-nez p2, :cond_0

    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "href at root level?!?"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_0
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "obj":Ljava/lang/Object;
    if-eqz v13, :cond_1

    instance-of v0, v13, Lorg/ksoap2/serialization/FwdRef;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    :cond_1
    new-instance v7, Lorg/ksoap2/serialization/FwdRef;

    invoke-direct {v7}, Lorg/ksoap2/serialization/FwdRef;-><init>()V

    .local v7, "f":Lorg/ksoap2/serialization/FwdRef;
    check-cast v13, Lorg/ksoap2/serialization/FwdRef;

    .end local v13    # "obj":Ljava/lang/Object;
    iput-object v13, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move/from16 v0, p3

    iput v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "nil"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "nullAttr":Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "id":Ljava/lang/String;
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "null"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_5
    if-eqz v12, :cond_9

    invoke-static {v12}, Lorg/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/4 v13, 0x0

    .restart local v13    # "obj":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .end local v13    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_1
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "hlp":Ljava/lang/Object;
    instance-of v0, v8, Lorg/ksoap2/serialization/FwdRef;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    move-object v7, v8

    check-cast v7, Lorg/ksoap2/serialization/FwdRef;

    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_7
    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/ksoap2/serialization/KvmSerializable;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lorg/ksoap2/serialization/KvmSerializable;

    iget v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v13}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    :goto_2
    iget-object v7, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    if-nez v7, :cond_7

    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v8    # "hlp":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "type":Ljava/lang/String;
    if-eqz v15, :cond_d

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .local v5, "cut":I
    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_c

    const-string v14, ""

    .local v14, "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .end local v5    # "cut":I
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v15, :cond_b

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "obj":Ljava/lang/Object;
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_1

    .end local v13    # "obj":Ljava/lang/Object;
    .restart local v5    # "cut":I
    :cond_c
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .end local v5    # "cut":I
    :cond_d
    if-nez p5, :cond_a

    if-nez p4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "arrayType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    move-object/from16 p4, v0

    const-string p5, "Array"

    goto :goto_4

    :cond_e
    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .local v11, "names":[Ljava/lang/Object;
    const/16 v16, 0x0

    aget-object p4, v11, v16

    .end local p4    # "namespace":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .restart local p4    # "namespace":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object p5, v11, v16

    .end local p5    # "name":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .restart local p5    # "name":Ljava/lang/String;
    goto :goto_4

    .end local v11    # "names":[Ljava/lang/Object;
    .end local v15    # "type":Ljava/lang/String;
    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    .restart local v8    # "hlp":Ljava/lang/Object;
    :cond_f
    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Vector;

    iget v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_10
    if-eqz v8, :cond_8

    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "double ID"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v4, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v4, p2, p3, v2}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lorg/ksoap2/serialization/Marshal;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/ksoap2/serialization/Marshal;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/ksoap2/serialization/Marshal;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-virtual {p0, p1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V

    goto :goto_0

    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v2, Lorg/ksoap2/serialization/SoapObject;

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/ksoap2/serialization/SoapObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p2, p3}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "obj":Lorg/ksoap2/serialization/SoapObject;
    goto :goto_1

    .local v1, "obj":Ljava/lang/Object;
    :cond_3
    :try_start_0
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "obj":Ljava/lang/Object;
    goto :goto_1

    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    instance-of v2, v1, Lorg/ksoap2/serialization/KvmSerializable;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lorg/ksoap2/serialization/KvmSerializable;

    invoke-virtual {p0, p1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/util/Vector;

    iget-object v3, p4, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, v2, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no deserializer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p2

    instance-of v1, v0, Lorg/ksoap2/serialization/SoapObject;

    if-nez v1, :cond_8

    :cond_1
    new-instance v7, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v7}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .local v7, "info":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v15

    .local v15, "propertyCount":I
    const/16 v16, 0x0

    .local v16, "propertyFound":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v15, :cond_5

    if-nez v16, :cond_5

    invoke-virtual {v7}, Lorg/ksoap2/serialization/PropertyInfo;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v1, v7}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v16, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v1}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->avoidExceptionForUnknownProperty:Z

    if-eqz v1, :cond_7

    :cond_6
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v4    # "i":I
    .end local v7    # "info":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v15    # "propertyCount":I
    .end local v16    # "propertyFound":Z
    :cond_8
    move-object/from16 v1, p2

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v11

    move-object/from16 v2, p2

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v8 .. v14}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    goto/16 :goto_0

    .end local v13    # "name":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p2, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    return-void
.end method

.method protected readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "typeNamespace"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .local v15, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v16

    .local v16, "namespace":Ljava/lang/String;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .local v13, "attributeInfoVector":Ljava/util/Vector;
    const/4 v11, 0x0

    .local v11, "attributeCount":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v11, v4, :cond_0

    new-instance v12, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v12}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .local v12, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setValue(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setNamespace(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setType(Ljava/lang/Object;)V

    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v12    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/16 v17, 0x0

    .local v17, "result":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "text":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    new-instance v18, Lorg/ksoap2/serialization/SoapPrimitive;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v18, "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    move-object/from16 v17, v18

    .local v17, "result":Lorg/ksoap2/serialization/SoapPrimitive;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_1

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/ksoap2/serialization/SoapPrimitive;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .end local v14    # "i":I
    .end local v17    # "result":Lorg/ksoap2/serialization/SoapPrimitive;
    .end local v18    # "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Malformed input: Mixed content"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .local v17, "result":Ljava/lang/Object;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    new-instance v6, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v6, v4}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v17, v6

    .local v17, "result":Lorg/ksoap2/serialization/SoapObject;
    goto :goto_2

    .end local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    .end local v17    # "result":Lorg/ksoap2/serialization/SoapObject;
    :cond_5
    new-instance v6, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v6, v4}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_5

    :cond_7
    move-object/from16 v17, v6

    .end local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    :cond_8
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method

.method protected readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "v"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v11

    .local v11, "size":I
    const/4 v9, 0x1

    .local v9, "dynamic":Z
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "arrayType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "type":Ljava/lang/String;
    if-eqz v12, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .local v7, "cut0":I
    const-string v0, "["

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .local v8, "cut1":I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    const-string v10, ""

    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-direct {p0, v12, v8, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v11

    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    const/4 v9, 0x0

    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "offset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    .local v3, "position":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "position"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    if-eqz v9, :cond_2

    if-lt v3, v11, :cond_2

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1

    .end local v3    # "position":I
    .restart local v7    # "cut0":I
    .restart local v8    # "cut1":I
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .restart local v3    # "position":I
    :cond_4
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAddAdornments(Z)V
    .locals 0
    .param p1, "addAdornments"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    return-void
.end method

.method public setBodyOutEmpty(Z)V
    .locals 1
    .param p1, "emptyBody"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "qName":[Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_3

    const-string v1, ""

    move-object v2, v1

    :goto_0
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_0

    const-string v2, "xmlns"

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    if-eqz v1, :cond_1

    const-string v2, "id"

    aget-object v1, v0, v3

    if-nez v1, :cond_4

    const-string v1, "o0"

    :goto_1
    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v2, "root"

    const-string v3, "1"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-direct {p0, p1, v1, v4, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_5

    const-string v1, ""

    move-object v2, v1

    :goto_2
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v0    # "qName":[Ljava/lang/Object;
    :cond_2
    return-void

    .restart local v0    # "qName":[Ljava/lang/Object;
    :cond_3
    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    :cond_4
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_5
    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_2
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 18
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    .local v3, "cnt":I
    new-instance v10, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v10}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .local v10, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_b

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "prop":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v14, v10}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    instance-of v14, v9, Lorg/ksoap2/serialization/SoapObject;

    if-nez v14, :cond_1

    iget v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_0

    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v15, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v15, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v9

    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    .local v7, "nestedSoap":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .local v11, "qName":[Ljava/lang/Object;
    const/4 v14, 0x0

    aget-object v6, v11, v14

    check-cast v6, Ljava/lang/String;

    .local v6, "namespace":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v12, v11, v14

    check-cast v12, Ljava/lang/String;

    .local v12, "type":Ljava/lang/String;
    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    iget-object v5, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .local v5, "name":Ljava/lang/String;
    :goto_2
    const-string v14, "DevInfo"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "DevDetail"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "PerProviderSubscription"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "MgmtTree"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v13}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    .local v13, "xw":Lorg/xmlpull/v1/XmlSerializer;
    const-string v14, "UTF-8"

    invoke-interface {v13, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v14, :cond_6

    const-string v14, ""

    :goto_3
    invoke-interface {v13, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v14, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .local v8, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v15, "type"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v8    # "prefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v14, :cond_4

    const-string v6, ""

    .end local v6    # "namespace":Ljava/lang/String;
    :cond_4
    invoke-interface {v13, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "namespace":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x1

    aget-object v5, v11, v14

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "name":Ljava/lang/String;
    goto/16 :goto_2

    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6
    move-object v14, v6

    goto :goto_3

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v14, :cond_a

    const-string v14, ""

    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v15, "type"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v8    # "prefix":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v14, :cond_9

    const-string v6, ""

    .end local v6    # "namespace":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .restart local v6    # "namespace":Ljava/lang/String;
    :cond_a
    move-object v14, v6

    goto :goto_4

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "nestedSoap":Lorg/ksoap2/serialization/SoapObject;
    .end local v9    # "prop":Ljava/lang/Object;
    .end local v11    # "qName":[Ljava/lang/Object;
    .end local v12    # "type":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v3, p2

    .local v3, "soapObject":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    move-result v1

    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v2, v0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    return-void
.end method

.method protected writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 9
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v8, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, "qName":[Ljava/lang/Object;
    iget-boolean v3, p3, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    if-nez v3, :cond_1

    aget-object v3, v2, v6

    if-eqz v3, :cond_4

    :cond_1
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    const-string v4, "href"

    aget-object v3, v2, v6

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#o"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {p1, v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v2, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    iget-boolean v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    if-eq v3, v4, :cond_6

    :cond_5
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v1    # "prefix":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 11
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "vector"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v4, "item"

    .local v4, "itemsTagName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "itemsNamespace":Ljava/lang/String;
    if-nez p3, :cond_2

    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    .local v1, "cnt":I
    iget-object v6, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "arrType":[Ljava/lang/Object;
    iget-boolean v6, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v6, :cond_1

    iget-object v7, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v8, "arrayType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v10

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const/4 v5, 0x0

    .local v5, "skipped":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arrType":[Ljava/lang/Object;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    .end local v5    # "skipped":Z
    :cond_2
    instance-of v6, p3, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_0

    iget-object v6, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iget-object v3, p3, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    goto :goto_0

    .restart local v0    # "arrType":[Ljava/lang/Object;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    .restart local v5    # "skipped":Z
    :cond_3
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v5, :cond_4

    iget-object v6, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v7, "position"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6, p3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_5
    return-void
.end method
