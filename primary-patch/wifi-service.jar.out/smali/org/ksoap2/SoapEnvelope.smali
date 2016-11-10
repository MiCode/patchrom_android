.class public Lorg/ksoap2/SoapEnvelope;
.super Ljava/lang/Object;
.source "SoapEnvelope.java"


# static fields
.field public static final ENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENC2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-encoding"

.field public static final ENV:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final ENV2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final NS20:Ljava/lang/String; = "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

.field public static final VER10:I = 0x64

.field public static final VER11:I = 0x6e

.field public static final VER12:I = 0x78

.field public static final XSD:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSD1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema"

.field public static final XSI:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final XSI1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema-instance"


# instance fields
.field public bodyIn:Ljava/lang/Object;

.field public bodyOut:Ljava/lang/Object;

.field public enc:Ljava/lang/String;

.field public encodingStyle:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public headerIn:[Lorg/ksoap2/kdom/Element;

.field public headerOut:[Lorg/ksoap2/kdom/Element;

.field public ns:Ljava/lang/String;

.field public omadm:Ljava/lang/String;

.field public version:I

.field public xsd:Ljava/lang/String;

.field public xsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string v0, "http://www.w3.org/1999/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x78

    if-ge p1, v0, :cond_1

    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    :goto_1
    const-string v0, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "http://www.w3.org/2003/05/soap-encoding"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    goto :goto_1
.end method

.method public static stringToBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "booleanAsString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseBody(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v3, 0x78

    if-ge v2, v3, :cond_0

    new-instance v0, Lorg/ksoap2/SoapFault;

    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault;-><init>(I)V

    .local v0, "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/ksoap2/SoapFault12;

    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault12;-><init>(I)V

    .restart local v0    # "fault":Lorg/ksoap2/SoapFault;
    goto :goto_0

    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :cond_1
    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v2, v2, Lorg/ksoap2/kdom/Node;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v2, Lorg/ksoap2/kdom/Node;

    move-object v1, v2

    .local v1, "node":Lorg/ksoap2/kdom/Node;
    :goto_2
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "node":Lorg/ksoap2/kdom/Node;
    :cond_2
    new-instance v1, Lorg/ksoap2/kdom/Node;

    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    goto :goto_2
.end method

.method public parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    new-instance v3, Lorg/ksoap2/kdom/Node;

    invoke-direct {v3}, Lorg/ksoap2/kdom/Node;-><init>()V

    .local v3, "headers":Lorg/ksoap2/kdom/Node;
    invoke-virtual {v3, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .local v0, "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_1
    new-array v5, v1, [Lorg/ksoap2/kdom/Element;

    iput-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .restart local v0    # "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v5, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_3
    return-void
.end method

.method public setOutputSoapObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "soapObject"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "soap"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "spp"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeBody(Lorg/xmlpull/v1/XmlSerializer;)V

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    check-cast v0, Lorg/ksoap2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method public writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void
.end method
