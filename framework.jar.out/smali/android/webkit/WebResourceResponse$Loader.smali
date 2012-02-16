.class Landroid/webkit/WebResourceResponse$Loader;
.super Landroid/webkit/StreamLoader;
.source "WebResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebResourceResponse;


# direct methods
.method constructor <init>(Landroid/webkit/WebResourceResponse;Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter
    .parameter "loadListener"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    .line 32
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 33
    #getter for: Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;
    invoke-static {p1}, Landroid/webkit/WebResourceResponse;->access$000(Landroid/webkit/WebResourceResponse;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->mDataStream:Ljava/io/InputStream;

    .line 34
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 1
    .parameter "headers"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    #getter for: Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebResourceResponse;->access$100(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->this$0:Landroid/webkit/WebResourceResponse;

    #getter for: Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebResourceResponse;->access$200(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentEncoding(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    iget-object v1, p0, Landroid/webkit/WebResourceResponse$Loader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v0, p0, Landroid/webkit/WebResourceResponse$Loader;->mDataStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 38
    return v3

    .line 37
    :cond_0
    const/16 v0, 0x194

    goto :goto_0
.end method
