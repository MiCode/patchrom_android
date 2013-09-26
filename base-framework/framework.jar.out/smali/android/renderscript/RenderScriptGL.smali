.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 17
    .parameter "ctx"
    .parameter "sc"

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v4, sdkVersion:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    .local v16, dpi:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v6, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIIIIIIIIIIIIFI)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(I)V

    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "s"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "sur"
    .parameter "w"
    .parameter "h"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    const/4 v0, 0x0

    .local v0, s:Landroid/view/Surface;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "sur"
    .parameter "w"
    .parameter "h"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScriptGL;->nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V

    return-void
.end method
