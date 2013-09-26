.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 2
    .parameter "a"
    .parameter "p"

    .prologue
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .local v0, indexType:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 2
    .parameter "p"

    .prologue
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .local v0, indexType:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 3
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 13

    .prologue
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v11}, Landroid/renderscript/RenderScript;->validate()V

    iget v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v10, v11, [I

    .local v10, vtx:[I
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v4, v11, [I

    .local v4, idx:[I
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v7, v11, [I

    .local v7, prim:[I
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v5, v11, [Landroid/renderscript/Allocation;

    .local v5, indexBuffers:[Landroid/renderscript/Allocation;
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v8, v11, [Landroid/renderscript/Mesh$Primitive;

    .local v8, primitives:[Landroid/renderscript/Mesh$Primitive;
    iget v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v9, v11, [Landroid/renderscript/Allocation;

    .local v9, vertexBuffers:[Landroid/renderscript/Allocation;
    const/4 v1, 0x0

    .local v1, ct:I
    :goto_0
    iget v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    if-ge v1, v11, :cond_0

    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    aget-object v2, v11, v1

    .local v2, entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v11, v9, v1

    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v12, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v11, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v11

    aput v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v1, v11, :cond_2

    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .restart local v2       #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    if-nez v11, :cond_1

    const/4 v0, 0x0

    .local v0, allocID:I
    :goto_2
    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v11, v5, v1

    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v11, v8, v1

    aput v0, v4, v1

    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v11, v11, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v11, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #allocID:I
    :cond_1
    iget-object v11, v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v12, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v11, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    goto :goto_2

    .end local v2           #entry:Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    :cond_2
    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v11, v10, v4, v7}, Landroid/renderscript/RenderScript;->nMeshCreate([I[I[I)I

    move-result v3

    .local v3, id:I
    new-instance v6, Landroid/renderscript/Mesh;

    iget-object v11, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v6, v3, v11}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v6, newMesh:Landroid/renderscript/Mesh;
    iput-object v9, v6, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    iput-object v5, v6, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    iput-object v8, v6, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    return-object v6
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
