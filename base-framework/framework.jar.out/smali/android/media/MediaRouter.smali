.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$SimpleCallback;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$Static;
    }
.end annotation


# static fields
.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouter"

.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v2, Landroid/media/MediaRouter$Static;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Landroid/media/MediaRouter$Static;

    invoke-direct {v1, v0}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V

    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static addRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .local v2, onlyRoute:Z
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p0, Landroid/media/MediaRouter$RouteGroup;

    if-nez v3, :cond_2

    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .local v1, group:Landroid/media/MediaRouter$RouteGroup;
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iput v3, v1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    move-object p0, v1

    .end local v1           #group:Landroid/media/MediaRouter$RouteGroup;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v3

    invoke-static {v3, p0}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_1
    return-void

    :cond_2
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 4
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "type"
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 4
    .parameter "info"
    .parameter "group"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "type"
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .local v0, cbi:Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .end local v0           #cbi:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "index"

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static getRouteCountStatic()I
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    .local v4, removingCat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    if-ne v4, v0, :cond_4

    const/4 v2, 0x1

    .end local v0           #cat:Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v5, :cond_1

    const v5, 0x800001

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5, v6}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_1
    if-nez v2, :cond_2

    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .end local v1           #count:I
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .restart local v0       #cat:Landroid/media/MediaRouter$RouteCategory;
    .restart local v1       #count:I
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .parameter "types"
    .parameter "route"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    and-int/2addr v2, p0

    if-nez v2, :cond_2

    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectRoute ignored; cannot select route with supported types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    invoke-static {v4}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into route types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .local v0, btRoute:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v0, :cond_4

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_4

    if-eq p1, v0, :cond_3

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v2, :cond_4

    :cond_3
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    if-ne p1, v0, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v2}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_5

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    and-int/2addr v2, p0

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2, v3}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_5
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object p1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    and-int/2addr v2, p0

    invoke-static {v2, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error changing Bluetooth A2DP state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static systemVolumeChanged(I)V
    .locals 4
    .parameter "newValue"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .local v1, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_1

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_4

    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    :goto_1
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error checking Bluetooth A2DP state to report volume change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static typesToString(I)Ljava/lang/String;
    .locals 2
    .parameter "types"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, result:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/high16 v1, 0x80

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const-string v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/media/MediaRouter$Callback;)V
    .locals 5
    .parameter "types"
    .parameter "cb"

    .prologue
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .local v2, info:Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v3, p2, :cond_0

    iget v3, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v3, p1

    iput v3, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .end local v2           #info:Landroid/media/MediaRouter$CallbackInfo;
    :goto_1
    return-void

    .restart local v2       #info:Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #info:Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroid/media/MediaRouter$CallbackInfo;

    invoke-direct {v4, p2, p1, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;ILandroid/media/MediaRouter;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    invoke-static {p1}, Landroid/media/MediaRouter;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    invoke-static {p1}, Landroid/media/MediaRouter;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public clearUserRoutes()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .local v1, info:Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->removeRouteAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method

.method public createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .parameter "nameResId"
    .parameter "isGroupable"

    .prologue
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x80

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    return-object v0
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x80

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 1
    .parameter "category"

    .prologue
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    return-object v0
.end method

.method public getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .locals 1
    .parameter "index"

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "index"

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .parameter "type"

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getSystemAudioCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getSystemAudioRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public removeCallback(Landroid/media/MediaRouter$Callback;)V
    .locals 5
    .parameter "cb"

    .prologue
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    iget-object v2, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v2, p1, :cond_0

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCallback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): callback not registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeRouteAt(I)V
    .locals 8
    .parameter "routeIndex"

    .prologue
    if-ltz p1, :cond_3

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_3

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    .local v4, info:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v5

    .local v5, removingCat:Landroid/media/MediaRouter$RouteCategory;
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    if-ne v5, v0, :cond_4

    const/4 v2, 0x1

    .end local v0           #cat:Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v4, v6, :cond_1

    const v6, 0x800001

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v6, v7}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    :cond_1
    if-nez v2, :cond_2

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .end local v1           #count:I
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #info:Landroid/media/MediaRouter$RouteInfo;
    .end local v5           #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .restart local v0       #cat:Landroid/media/MediaRouter$RouteCategory;
    .restart local v1       #count:I
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #info:Landroid/media/MediaRouter$RouteInfo;
    .restart local v5       #removingCat:Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "types"
    .parameter "route"

    .prologue
    const/high16 v0, 0x80

    and-int/2addr p1, v0

    invoke-static {p1, p2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .parameter "types"
    .parameter "route"

    .prologue
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method
