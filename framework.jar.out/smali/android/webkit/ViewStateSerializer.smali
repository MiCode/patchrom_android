.class Landroid/webkit/ViewStateSerializer;
.super Ljava/lang/Object;
.source "ViewStateSerializer.java"


# static fields
.field static final VERSION:I = 0x1

.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deserializeViewState(Ljava/io/InputStream;)Landroid/webkit/WebViewCore$DrawData;
    .locals 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, dis:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .local v5, version:I
    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, contentWidth:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, contentHeight:I
    const/16 v6, 0x4000

    new-array v6, v6, [B

    invoke-static {v5, v3, v6}, Landroid/webkit/ViewStateSerializer;->nativeDeserializeViewState(ILjava/io/InputStream;[B)I

    move-result v0

    .local v0, baseLayer:I
    new-instance v4, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v4}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .local v4, draw:Landroid/webkit/WebViewCore$DrawData;
    new-instance v6, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v6, v4, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v4, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iput v0, v4, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method public static dumpLayerHierarchy(ILjava/io/OutputStream;I)V
    .locals 1
    .parameter "baseLayer"
    .parameter "out"
    .parameter "level"

    .prologue
    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, p2, p1, v0}, Landroid/webkit/ViewStateSerializer;->nativeDumpLayerHierarchy(IILjava/io/OutputStream;[B)V

    return-void
.end method

.method private static native nativeDeserializeViewState(ILjava/io/InputStream;[B)I
.end method

.method private static native nativeDumpLayerHierarchy(IILjava/io/OutputStream;[B)V
.end method

.method private static native nativeSerializeViewState(ILjava/io/OutputStream;[B)Z
.end method

.method static serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebViewCore$DrawData;)Z
    .locals 3
    .parameter "stream"
    .parameter "draw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .local v0, baseLayer:I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Landroid/webkit/ViewStateSerializer;->nativeSerializeViewState(ILjava/io/OutputStream;[B)Z

    move-result v2

    goto :goto_0
.end method
