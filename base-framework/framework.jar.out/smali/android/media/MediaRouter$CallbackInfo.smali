.class Landroid/media/MediaRouter$CallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field public final cb:Landroid/media/MediaRouter$Callback;

.field public final router:Landroid/media/MediaRouter;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Callback;ILandroid/media/MediaRouter;)V
    .locals 0
    .parameter "cb"
    .parameter "type"
    .parameter "router"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iput p2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iput-object p3, p0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    return-void
.end method
