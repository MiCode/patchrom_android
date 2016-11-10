.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAConstructed.java"


# instance fields
.field private final mChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_1
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, p0

    .local v5, "target":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_2
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v6, "/"

    invoke-virtual {p4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .local v2, "element":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No child node \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add child to leaf node: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v2    # "element":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, p3, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v1

    goto :goto_1
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .end local p0    # "this":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path too short for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public marshal(Ljava/io/OutputStream;I)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->marshal(Ljava/io/OutputStream;I)V

    goto :goto_0

    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    const-string v2, ".\n"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2bt
        0xat
    .end array-data
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method
