.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/hardware/camera2/params/InputConfiguration;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .local v0, "otherInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "InputConfiguration(w:%d, h:%d, format:%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
