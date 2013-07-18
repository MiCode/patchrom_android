.class Landroid/webkit/WebViewClassic$PictureWrapperView;
.super Landroid/view/View;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureWrapperView"
.end annotation


# instance fields
.field mPicture:Landroid/graphics/Picture;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Picture;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "picture"
    .parameter "parent"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    iput-object p3, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$PictureWrapperView;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$PictureWrapperView;->setRight(I)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$PictureWrapperView;->setBottom(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "action"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PictureWrapperView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
