.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackStream(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedTypes(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    return v0
.end method

.method public static getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    return v0
.end method

.method public static getVolumeHandling(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    return v0
.end method

.method public static getVolumeMax(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    return v0
.end method

.method public static isGroup(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p0, Landroid/media/MediaRouter$RouteGroup;

    return v0
.end method

.method public static requestSetVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    return-void
.end method

.method public static requestUpdateVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method

.method public static setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    return-void
.end method
