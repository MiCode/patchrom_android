.class public Landroid/widget/BookmarkItem;
.super Ljava/lang/Object;
.source "BookmarkItem.java"


# instance fields
.field mContent:Landroid/graphics/Bitmap;

.field mInfo:Ljava/lang/String;

.field mResId:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BookmarkItem;->mResId:I

    iput p1, p0, Landroid/widget/BookmarkItem;->mResId:I

    iput-object p2, p0, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Landroid/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "title"
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/BookmarkItem;)V
    .locals 4
    .parameter "item"

    .prologue
    iget v0, p1, Landroid/widget/BookmarkItem;->mResId:I

    iget-object v1, p1, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    iget-object v2, p1, Landroid/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmapResource(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    iput p1, p0, Landroid/widget/BookmarkItem;->mResId:I

    return-void
.end method

.method public setContentBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setInfoString(Ljava/lang/String;)V
    .locals 0
    .parameter "infoString"

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public setTitleString(Ljava/lang/String;)V
    .locals 0
    .parameter "titleString"

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    return-void
.end method
