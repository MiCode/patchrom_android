.class public final Landroid/webkit/MockGeolocation;
.super Ljava/lang/Object;
.source "MockGeolocation.java"


# instance fields
.field private mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "webViewCore"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/MockGeolocation;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-void
.end method

.method private static native nativeSetError(Landroid/webkit/WebViewCore;ILjava/lang/String;)V
.end method

.method private static native nativeSetPermission(Landroid/webkit/WebViewCore;Z)V
.end method

.method private static native nativeSetPosition(Landroid/webkit/WebViewCore;DDD)V
.end method

.method private static native nativeSetUseMock(Landroid/webkit/WebViewCore;)V
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/webkit/MockGeolocation;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0, p1, p2}, Landroid/webkit/MockGeolocation;->nativeSetError(Landroid/webkit/WebViewCore;ILjava/lang/String;)V

    return-void
.end method

.method public setPermission(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    iget-object v0, p0, Landroid/webkit/MockGeolocation;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0, p1}, Landroid/webkit/MockGeolocation;->nativeSetPermission(Landroid/webkit/WebViewCore;Z)V

    return-void
.end method

.method public setPosition(DDD)V
    .locals 7
    .parameter "latitude"
    .parameter "longitude"
    .parameter "accuracy"

    .prologue
    iget-object v0, p0, Landroid/webkit/MockGeolocation;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Landroid/webkit/MockGeolocation;->nativeSetPosition(Landroid/webkit/WebViewCore;DDD)V

    return-void
.end method

.method public setUseMock()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/MockGeolocation;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/MockGeolocation;->nativeSetUseMock(Landroid/webkit/WebViewCore;)V

    return-void
.end method
