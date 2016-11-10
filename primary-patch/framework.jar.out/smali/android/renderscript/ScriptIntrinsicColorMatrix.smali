.class public final Landroid/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"


# instance fields
.field private final mAdd:Landroid/renderscript/Float4;

.field private final mMatrix:Landroid/renderscript/Matrix4f;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v0

    return-object v0
.end method

.method private setMatrix()V
    .locals 2

    .prologue
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsuported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsuported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAdd(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p1, v1, Landroid/renderscript/Float4;->x:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p2, v1, Landroid/renderscript/Float4;->y:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p3, v1, Landroid/renderscript/Float4;->z:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p4, v1, Landroid/renderscript/Float4;->w:F

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setAdd(Landroid/renderscript/Float4;)V
    .locals 3
    .param p1, "f"    # Landroid/renderscript/Float4;

    .prologue
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    iput v2, v1, Landroid/renderscript/Float4;->x:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    iput v2, v1, Landroid/renderscript/Float4;->y:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    iput v2, v1, Landroid/renderscript/Float4;->z:F

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    iput v2, v1, Landroid/renderscript/Float4;->w:F

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .local v0, "fp":Landroid/renderscript/FieldPacker;
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix3f;

    .prologue
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix3f;)V

    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/renderscript/Matrix4f;

    .prologue
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setGreyscale()V
    .locals 7

    .prologue
    const v6, 0x3e991687    # 0.299f

    const v5, 0x3de978d5    # 0.114f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v2, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v2, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v4, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v4, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3e991687    # 0.299f

    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3de978d5    # 0.114f

    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x41e956c1    # -0.14713f

    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x416c1a8b    # -0.28886f

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3edf3b64    # 0.436f

    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f1d70a4    # 0.615f

    invoke-virtual {v0, v2, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x40fc299e

    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x42332df5    # -0.10001f

    invoke-virtual {v0, v4, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v2, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v2, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x3f91e5f3    # 1.13983f

    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x4135f06f

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x40eb5dcc    # -0.5806f

    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v4, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x40020e17

    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v4, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method
