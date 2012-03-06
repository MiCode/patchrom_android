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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deserializeViewState(Ljava/io/InputStream;Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;
    .locals 11
    .parameter "stream"
    .parameter "web"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 53
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 55
    .local v5, version:I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    .line 56
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 59
    .local v2, contentWidth:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 60
    .local v1, contentHeight:I
    const/16 v8, 0x4000

    new-array v8, v8, [B

    invoke-static {v3, v8}, Landroid/webkit/ViewStateSerializer;->nativeDeserializeViewState(Ljava/io/InputStream;[B)I

    move-result v0

    .line 63
    .local v0, baseLayer:I
    new-instance v4, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v4}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 64
    .local v4, draw:Landroid/webkit/WebViewCore$DrawData;
    new-instance v8, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v8}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v8, v4, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    .line 66
    .local v7, viewWidth:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v8

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v9

    sub-int v6, v8, v9

    .line 67
    .local v6, viewHeight:I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, v4, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 68
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, v4, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    .line 69
    iget-object v8, v4, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v9

    iput v9, v8, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 70
    iput v0, v4, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 71
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8, v10, v10, v2, v1}, Landroid/graphics/Region;-><init>(IIII)V

    iput-object v8, v4, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    .line 72
    return-object v4
.end method

.method private static native nativeDeserializeViewState(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeSerializeViewState(ILjava/io/OutputStream;[B)Z
.end method

.method static serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebView;)Z
    .locals 3
    .parameter "stream"
    .parameter "web"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getBaseLayer()I

    move-result v0

    .line 40
    .local v0, baseLayer:I
    if-nez v0, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 47
    :goto_0
    return v2

    .line 43
    :cond_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Landroid/webkit/ViewStateSerializer;->nativeSerializeViewState(ILjava/io/OutputStream;[B)Z

    move-result v2

    goto :goto_0
.end method
