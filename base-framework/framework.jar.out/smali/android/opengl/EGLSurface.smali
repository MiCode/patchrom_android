.class public Landroid/opengl/EGLSurface;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLSurface.java"


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter "handle"

    .prologue
    invoke-direct {p0, p1}, Landroid/opengl/EGLObjectHandle;-><init>(I)V

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

    check-cast v0, Landroid/opengl/EGLSurface;

    .local v0, that:Landroid/opengl/EGLSurface;
    invoke-virtual {p0}, Landroid/opengl/EGLSurface;->getHandle()I

    move-result v3

    invoke-virtual {v0}, Landroid/opengl/EGLSurface;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method
