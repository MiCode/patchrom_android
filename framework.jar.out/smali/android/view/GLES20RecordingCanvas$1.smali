.class final Landroid/view/GLES20RecordingCanvas$1;
.super Ljava/lang/Object;
.source "GLES20RecordingCanvas.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20RecordingCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Landroid/view/GLES20RecordingCanvas;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/GLES20RecordingCanvas$1;->newInstance()Landroid/view/GLES20RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/GLES20RecordingCanvas;
    .locals 2

    .prologue
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/GLES20RecordingCanvas;-><init>(Landroid/view/GLES20RecordingCanvas$1;)V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/GLES20RecordingCanvas;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/GLES20RecordingCanvas$1;->onAcquired(Landroid/view/GLES20RecordingCanvas;)V

    return-void
.end method

.method public onAcquired(Landroid/view/GLES20RecordingCanvas;)V
    .locals 0
    .parameter "element"

    .prologue
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/GLES20RecordingCanvas;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/GLES20RecordingCanvas$1;->onReleased(Landroid/view/GLES20RecordingCanvas;)V

    return-void
.end method

.method public onReleased(Landroid/view/GLES20RecordingCanvas;)V
    .locals 0
    .parameter "element"

    .prologue
    return-void
.end method
