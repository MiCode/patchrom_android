.class public Landroid/renderscript/ProgramFragment$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "rs"

    .prologue
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragment;
    .locals 9

    .prologue
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7}, Landroid/renderscript/RenderScript;->validate()V

    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    iget v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .local v6, tmp:[I
    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    new-array v5, v7, [Ljava/lang/String;

    .local v5, texNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    if-ge v0, v7, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    if-ge v0, v7, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    if-ge v0, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    if-ge v0, v7, :cond_3

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v7, v7, v0

    iget v7, v7, Landroid/renderscript/Program$TextureType;->mID:I

    aput v7, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/ProgramFragment$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    .local v1, id:I
    new-instance v4, Landroid/renderscript/ProgramFragment;

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v7}, Landroid/renderscript/ProgramFragment;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v4, pf:Landroid/renderscript/ProgramFragment;
    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramFragment$Builder;->initProgram(Landroid/renderscript/Program;)V

    return-object v4
.end method
