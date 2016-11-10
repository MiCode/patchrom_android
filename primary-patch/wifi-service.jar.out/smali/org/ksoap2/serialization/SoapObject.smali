.class public Lorg/ksoap2/serialization/SoapObject;
.super Lorg/ksoap2/serialization/AttributeContainer;
.source "SoapObject.java"

# interfaces
.implements Lorg/ksoap2/serialization/KvmSerializable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected properties:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lorg/ksoap2/serialization/AttributeContainer;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    iput-object p1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    return-void
.end method

.method private propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .end local v0    # "i":I
    :goto_1
    return-object v1

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addPropertyIfValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object p0

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    iget-object v0, p1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object p0

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "soapObject"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    instance-of v5, p1, Lorg/ksoap2/serialization/SoapObject;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .local v1, "otherSoapObject":Lorg/ksoap2/serialization/SoapObject;
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    iget-object v6, v1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, "numProperties":I
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v0, v5, :cond_0

    const/4 v2, 0x0

    .local v2, "propIndex":I
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "thisProp":Ljava/lang/Object;
    invoke-virtual {v1, v3, v2}, Lorg/ksoap2/serialization/SoapObject;->isPropertyEqual(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "thisProp":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z

    move-result v4

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-object v2

    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Lorg/ksoap2/serialization/NullSoapObject;

    invoke-direct {v2}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_0
.end method

.method public getPrimitivePropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-object v2

    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local v0    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    invoke-virtual {p0, p1, p3}, Lorg/ksoap2/serialization/SoapObject;->getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V

    return-void
.end method

.method public getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "element":Ljava/lang/Object;
    instance-of v2, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .local v1, "p":Lorg/ksoap2/serialization/PropertyInfo;
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    iput v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iget-boolean v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    iput-boolean v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    .end local v1    # "p":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-void

    :cond_0
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iput v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v0, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iput-boolean v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/NullSoapObject;

    invoke-direct {v1}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "defaultThing":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "foo":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v2, ""

    .end local v0    # "foo":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v0    # "foo":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "foo":Ljava/lang/Object;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "property":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "property":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1    # "property":Ljava/lang/Object;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .end local v1    # "property":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyEqual(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "otherProp"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v6

    if-lt p2, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v6, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "thisProp":Ljava/lang/Object;
    instance-of v6, p1, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    instance-of v6, v2, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .local v0, "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    move-object v3, v2

    check-cast v3, Lorg/ksoap2/serialization/PropertyInfo;

    .local v3, "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .end local v0    # "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v3    # "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_2
    instance-of v6, p1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    instance-of v6, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .local v1, "otherPropSoap":Lorg/ksoap2/serialization/SoapObject;
    move-object v4, v2

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .local v4, "thisPropSoap":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public newInstance()Lorg/ksoap2/serialization/SoapObject;
    .locals 10

    .prologue
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v9, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "o":Lorg/ksoap2/serialization/SoapObject;
    const/4 v5, 0x0

    .local v5, "propIndex":I
    :goto_0
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "prop":Ljava/lang/Object;
    instance-of v8, v4, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ksoap2/serialization/PropertyInfo;

    .local v6, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v6}, Lorg/ksoap2/serialization/PropertyInfo;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ksoap2/serialization/PropertyInfo;

    .local v7, "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v3, v7}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "prop":Ljava/lang/Object;
    .end local v6    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v7    # "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v4    # "prop":Ljava/lang/Object;
    :cond_1
    instance-of v8, v4, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v8, :cond_0

    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "prop":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/ksoap2/serialization/SoapObject;->addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .local v0, "attribIndex":I
    :goto_2
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    move-result v8

    if-ge v0, v8, :cond_3

    new-instance v2, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v2}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .local v2, "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {p0, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    move-object v1, v2

    .local v1, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v1}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v2    # "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_3
    return-object v3
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "prop":Ljava/lang/Object;
    instance-of v3, v2, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    check-cast v2, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
