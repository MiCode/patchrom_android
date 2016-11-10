.class public Landroid/media/MediaDescription$Builder;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconUri:Landroid/net/Uri;

.field private mMediaId:Ljava/lang/String;

.field private mMediaUri:Landroid/net/Uri;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaDescription;
    .locals 10

    .prologue
    new-instance v0, Landroid/media/MediaDescription;

    iget-object v1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription$1;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
