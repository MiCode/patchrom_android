.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$TextureType;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 77
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .locals 3
    .parameter "a"
    .parameter "slot"

    .prologue
    .line 88
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getID()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getID()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Allocation type does not match slot type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getID()I

    move-result v0

    .line 96
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindConstants(III)V

    .line 97
    return-void

    .line 95
    .end local v0           #id:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .locals 3
    .parameter "vs"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 133
    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Sampler;->getID()I

    move-result v0

    .line 138
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindSampler(III)V

    .line 139
    return-void

    .line 137
    .end local v0           #id:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .locals 3
    .parameter "va"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 109
    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_1

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v1, v1, p2

    sget-object v2, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-eq v1, v2, :cond_2

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getID()I

    move-result v0

    .line 118
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0}, Landroid/renderscript/Program;->getID()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindTexture(III)V

    .line 119
    return-void

    .line 117
    .end local v0           #id:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
