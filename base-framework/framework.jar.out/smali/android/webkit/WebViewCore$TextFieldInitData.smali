.class Landroid/webkit/WebViewCore$TextFieldInitData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFieldInitData"
.end annotation


# instance fields
.field public mClientRect:Landroid/graphics/Rect;

.field public mContentBounds:Landroid/graphics/Rect;

.field public mFieldPointer:I

.field public mIsAutoCompleteEnabled:Z

.field public mIsSpellCheckEnabled:Z

.field public mIsTextFieldNext:Z

.field public mIsTextFieldPrev:Z

.field public mLabel:Ljava/lang/String;

.field public mMaxLength:I

.field public mName:Ljava/lang/String;

.field public mNodeLayerId:I

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
