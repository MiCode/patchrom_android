.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "MffEnvironment.java"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method protected constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    .end local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .restart local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    return-void
.end method


# virtual methods
.method public activateGLEnvironment()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No GLEnvironment in place to activate!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createGLEnvironment()V
    .locals 1

    .prologue
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method

.method public deactivateGLEnvironment()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No GLEnvironment in place to deactivate!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 1
    .param p1, "glEnvironment"    # Landroid/filterfw/core/GLEnvironment;

    .prologue
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method
