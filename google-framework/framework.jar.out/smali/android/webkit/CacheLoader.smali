.class Landroid/webkit/CacheLoader;
.super Landroid/webkit/StreamLoader;
.source "CacheLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCacheResult:Landroid/webkit/CacheManager$CacheResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Landroid/webkit/CacheLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/CacheLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 1
    .parameter "loadListener"
    .parameter "result"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 41
    sget-boolean v0, Landroid/webkit/CacheLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p2, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    .line 44
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 2
    .parameter "headers"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setLocation(Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setExpires(Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setContentDisposition(Ljava/lang/String;)V

    .line 75
    :cond_3
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 76
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setXPermittedCrossDomainPolicies(Ljava/lang/String;)V

    .line 78
    :cond_4
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/webkit/CacheLoader;->mDataStream:Ljava/io/InputStream;

    .line 49
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-wide v0, v0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iput-wide v0, p0, Landroid/webkit/CacheLoader;->mContentLength:J

    .line 50
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget v1, v1, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 51
    return v3
.end method
