.class Landroid/util/ArraySet$1;
.super Landroid/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Landroid/util/ArraySet;)V
    .locals 0
    .parameter

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    iput-object p1, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "offset"

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget-object v0, v0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .locals 1

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget v0, v0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    #calls: Landroid/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Landroid/util/ArraySet;->access$000(Landroid/util/ArraySet;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #calls: Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Landroid/util/ArraySet;->access$100(Landroid/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 2
    .parameter "value"

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    #calls: Landroid/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Landroid/util/ArraySet;->access$000(Landroid/util/ArraySet;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #calls: Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Landroid/util/ArraySet;->access$100(Landroid/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/ArraySet$1;,"Landroid/util/ArraySet.1;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
