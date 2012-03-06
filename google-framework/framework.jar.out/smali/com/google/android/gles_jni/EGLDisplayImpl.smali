.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field mEGLDisplay:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dpy"

    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 31
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

    .line 33
    check-cast v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 35
    .local v0, that:Lcom/google/android/gles_jni/EGLDisplayImpl;
    iget v3, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    iget v4, v0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    return v0
.end method
