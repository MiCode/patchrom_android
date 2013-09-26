.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field mEGLContext:I

.field private mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    iput p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/google/android/gles_jni/EGLContextImpl;

    .local v0, that:Lcom/google/android/gles_jni/EGLContextImpl;
    iget v3, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    iget v4, v0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    return v0
.end method
