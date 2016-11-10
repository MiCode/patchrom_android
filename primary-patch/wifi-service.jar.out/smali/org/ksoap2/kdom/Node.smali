.class public Lorg/ksoap2/kdom/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final CDSECT:I = 0x5

.field public static final COMMENT:I = 0x9

.field public static final DOCDECL:I = 0xa

.field public static final DOCUMENT:I = 0x0

.field public static final ELEMENT:I = 0x2

.field public static final ENTITY_REF:I = 0x6

.field public static final IGNORABLE_WHITESPACE:I = 0x7

.field public static final PROCESSING_INSTRUCTION:I = 0x8

.field public static final TEXT:I = 0x4


# instance fields
.field protected children:Ljava/util/Vector;

.field protected types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "child"    # Ljava/lang/Object;

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    instance-of v0, p3, Lorg/ksoap2/kdom/Element;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Element obj expected)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p3

    check-cast v0, Lorg/ksoap2/kdom/Element;

    invoke-virtual {v0, p0}, Lorg/ksoap2/kdom/Element;->setParent(Lorg/ksoap2/kdom/Node;)V

    :cond_3
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    int-to-char v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return-void

    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "String expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/ksoap2/kdom/Node;->addChild(IILjava/lang/Object;)V

    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lorg/ksoap2/kdom/Element;

    invoke-direct {v0}, Lorg/ksoap2/kdom/Element;-><init>()V

    .local v0, "e":Lorg/ksoap2/kdom/Element;
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "namespace":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    iput-object p2, v0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getElement(I)Lorg/ksoap2/kdom/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/kdom/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ksoap2/kdom/Element;

    .end local v0    # "child":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "child":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/ksoap2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lorg/ksoap2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .local v1, "j":I
    if-eq v0, v5, :cond_0

    if-eq v1, v5, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Element {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v5, :cond_1

    const-string v2, " not found in "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v2, " more than once in "

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v2

    return-object v2
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .prologue
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    move-result v2

    .local v2, "len":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .local v0, "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .restart local v0    # "child":Lorg/ksoap2/kdom/Element;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isText(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getType(I)I

    move-result v0

    .local v0, "t":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    .local v1, "leave":Z
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    if-ne v2, v5, :cond_1

    const/4 v2, 0x4

    .end local v2    # "type":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_1
    if-eqz v1, :cond_0

    return-void

    .restart local v2    # "type":I
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    move-result-object v0

    .local v0, "child":Lorg/ksoap2/kdom/Element;
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Element;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChild(I)V
    .locals 5
    .param p1, "idx"    # I

    .prologue
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "n":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method public writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Node;->getType(I)I

    move-result v3

    .local v3, "type":I
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    check-cast v0, Lorg/ksoap2/kdom/Element;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
