.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIconDrawable(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    return-void
.end method

.method public static setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method public static setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeCallbackObj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    .end local p1    # "volumeCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeHandling"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeMax"    # I

    .prologue
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    return-void
.end method
