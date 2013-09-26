.class Landroid/webkit/WebViewCore$WebKitHitTest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebKitHitTest"
.end annotation


# instance fields
.field mAltDisplayString:Ljava/lang/String;

.field mAnchorText:Ljava/lang/String;

.field mEditable:Z

.field mEnclosingParentRects:[Landroid/graphics/Rect;

.field mHasFocus:Z

.field mHitTestMovedMouse:Z

.field mHitTestSlop:I

.field mHitTestX:I

.field mHitTestY:I

.field mImageUrl:Ljava/lang/String;

.field mIntentUrl:Ljava/lang/String;

.field mLinkUrl:Ljava/lang/String;

.field mTapHighlightColor:I

.field mTitle:Ljava/lang/String;

.field mTouchRects:[Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6633b5e5

    iput v0, p0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    return-void
.end method
