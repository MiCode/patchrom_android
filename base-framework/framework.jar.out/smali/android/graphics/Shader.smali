.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field public native_instance:I

.field public native_shader:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(II)V
.end method

.method private static native nativeSetLocalMatrix(III)V
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(II)V

    return-void

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v2, p0, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v1, v2}, Landroid/graphics/Shader;->nativeDestructor(II)V

    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2
    .parameter "localM"

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "localM"

    .prologue
    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/Shader;->native_instance:I

    iget v2, p0, Landroid/graphics/Shader;->native_shader:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Shader;->nativeSetLocalMatrix(III)V

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method
