.class public Lorg/ksoap2/serialization/SoapPrimitive;
.super Lorg/ksoap2/serialization/AttributeContainer;
.source "SoapPrimitive.java"


# instance fields
.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lorg/ksoap2/serialization/AttributeContainer;-><init>()V

    iput-object p1, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v4, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/ksoap2/serialization/SoapPrimitive;

    .local v0, "p":Lorg/ksoap2/serialization/SoapPrimitive;
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    iget-object v5, v0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_1
    move v1, v2

    .local v1, "varsEqual":Z
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapPrimitive;->attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    move v3, v2

    goto :goto_0

    .end local v1    # "varsEqual":Z
    :cond_2
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    iget-object v5, v0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    iget-object v5, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .restart local v1    # "varsEqual":Z
    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    return-object v0
.end method
