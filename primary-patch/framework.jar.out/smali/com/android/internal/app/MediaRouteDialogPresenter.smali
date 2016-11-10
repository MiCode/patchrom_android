.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const v4, 0x103012e

    const-string v3, "media_router"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    .local v2, "router":Landroid/media/MediaRouter;
    invoke-virtual {v2}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    .local v0, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .end local v0    # "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .local v0, "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    goto :goto_0
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    const-string v4, "media_router"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter;

    .local v3, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "MediaRouter"

    const-string v5, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .local v0, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    :cond_2
    const-string v4, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "MediaRouter"

    const-string v5, "showDialog(): Route controller dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .local v0, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    const-string v4, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
