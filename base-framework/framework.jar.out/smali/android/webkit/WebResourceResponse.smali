.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .parameter "data"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-void
.end method
