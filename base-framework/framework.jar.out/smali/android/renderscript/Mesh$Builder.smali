.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mUsage:I

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "usage"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$Builder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .parameter "e"
    .parameter "size"
    .parameter "p"

    .prologue
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .local v0, indexType:Landroid/renderscript/Mesh$Builder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .local v0, indexType:Landroid/renderscript/Mesh$Builder$Entry;
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .parameter "t"
    .parameter "p"

    .prologue
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .local v0, indexType:Landroid/renderscript/Mesh$Builder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .parameter "e"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v13}, Landroid/renderscript/RenderScript;->validate()V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v12, v13, [I

    .local v12, vtx:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v6, v13, [I

    .local v6, idx:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [I

    .local v9, prim:[I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v11, v13, [Landroid/renderscript/Allocation;

    .local v11, vertexBuffers:[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v7, v13, [Landroid/renderscript/Allocation;

    .local v7, indexBuffers:[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v10, v13, [Landroid/renderscript/Mesh$Primitive;

    .local v10, primitives:[Landroid/renderscript/Mesh$Primitive;
    const/4 v3, 0x0

    .local v3, ct:I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    if-ge v3, v13, :cond_2

    const/4 v1, 0x0

    .local v1, alloc:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    aget-object v4, v13, v3

    .local v4, entry:Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v13, v14, v15}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    :cond_0
    :goto_1
    aput-object v1, v11, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v13}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v13

    aput v13, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v15, v4, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    goto :goto_1

    .end local v1           #alloc:Landroid/renderscript/Allocation;
    .end local v4           #entry:Landroid/renderscript/Mesh$Builder$Entry;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-ge v3, v13, :cond_6

    const/4 v1, 0x0

    .restart local v1       #alloc:Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/Mesh$Builder$Entry;

    .restart local v4       #entry:Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v13, v14, v15}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    :cond_3
    :goto_3
    if-nez v1, :cond_5

    const/4 v2, 0x0

    .local v2, allocID:I
    :goto_4
    aput-object v1, v7, v3

    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v13, v10, v3

    aput v2, v6, v3

    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v13, v13, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v13, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2           #allocID:I
    :cond_4
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v15, v4, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v13}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    goto :goto_4

    .end local v1           #alloc:Landroid/renderscript/Allocation;
    .end local v4           #entry:Landroid/renderscript/Mesh$Builder$Entry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v13, v12, v6, v9}, Landroid/renderscript/RenderScript;->nMeshCreate([I[I[I)I

    move-result v5

    .local v5, id:I
    new-instance v8, Landroid/renderscript/Mesh;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v8, v5, v13}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v8, newMesh:Landroid/renderscript/Mesh;
    iput-object v11, v8, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    iput-object v7, v8, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    iput-object v10, v8, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    return-object v8
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2
    .parameter "e"
    .parameter "size"

    .prologue
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .local v0, tb:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    return-object v1
.end method
