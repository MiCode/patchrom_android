.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SizeChangeEffect.java"


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "filterClass"
    .parameter "inputName"
    .parameter "outputName"
    .parameter "finalParameters"

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 9
    .parameter "inputTexId"
    .parameter "width"
    .parameter "height"
    .parameter "outputTexId"

    .prologue
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->beginGLEffect()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    .local v0, inputFrame:Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/media/effect/SizeChangeEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/effect/SizeChangeEffect;->mInputName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .local v4, resultFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .local v3, outputWidth:I
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .local v2, outputHeight:I
    invoke-virtual {p0, p4, v3, v2}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v1

    .local v1, outputFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->endGLEffect()V

    return-void
.end method
