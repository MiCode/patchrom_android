.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .parameter "rs"
    .parameter "e"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 10

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v0, v1, :cond_3

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_4

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v8

    .local v8, id:I
    new-instance v9, Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v9, v8, v0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v9, t:Landroid/renderscript/Type;
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v9, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v9, Landroid/renderscript/Type;->mDimX:I

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v9, Landroid/renderscript/Type;->mDimY:I

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v9, Landroid/renderscript/Type;->mDimZ:I

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimFaces:Z

    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v0, v9, Landroid/renderscript/Type;->mDimYuv:I

    invoke-virtual {v9}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v9
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "yuvFormat"

    .prologue
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    return-object p0
.end method
