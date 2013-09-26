.class public final Landroid/view/Surface$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public density:F

.field public height:I

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface$PhysicalDisplayInfo;)V
    .locals 0
    .parameter "other"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Surface$PhysicalDisplayInfo;->copyFrom(Landroid/view/Surface$PhysicalDisplayInfo;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/Surface$PhysicalDisplayInfo;)V
    .locals 1
    .parameter "other"

    .prologue
    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    iget v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    iput v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    iget-boolean v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    iput-boolean v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    return-void
.end method

.method public equals(Landroid/view/Surface$PhysicalDisplayInfo;)Z
    .locals 2
    .parameter "other"

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    iget v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    iget-boolean v1, p1, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    instance-of v0, p1, Landroid/view/Surface$PhysicalDisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface$PhysicalDisplayInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/Surface$PhysicalDisplayInfo;->equals(Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhysicalDisplayInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dpi, secure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
