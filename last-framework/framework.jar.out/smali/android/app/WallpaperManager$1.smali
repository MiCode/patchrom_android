.class Landroid/app/WallpaperManager$1;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager;

.field final synthetic val$fWindowToken:Landroid/os/IBinder;

.field final synthetic val$fXOffset:F

.field final synthetic val$fYOffset:F


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Landroid/app/WallpaperManager$1;->this$0:Landroid/app/WallpaperManager;

    iput-object p2, p0, Landroid/app/WallpaperManager$1;->val$fWindowToken:Landroid/os/IBinder;

    iput p3, p0, Landroid/app/WallpaperManager$1;->val$fXOffset:F

    iput p4, p0, Landroid/app/WallpaperManager$1;->val$fYOffset:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 633
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$1;->this$0:Landroid/app/WallpaperManager;

    #getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->access$700(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager$1;->val$fWindowToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/app/WallpaperManager$1;->val$fXOffset:F

    iget v3, p0, Landroid/app/WallpaperManager$1;->val$fYOffset:F

    iget-object v4, p0, Landroid/app/WallpaperManager$1;->this$0:Landroid/app/WallpaperManager;

    #getter for: Landroid/app/WallpaperManager;->mWallpaperXStep:F
    invoke-static {v4}, Landroid/app/WallpaperManager;->access$500(Landroid/app/WallpaperManager;)F

    move-result v4

    iget-object v5, p0, Landroid/app/WallpaperManager$1;->this$0:Landroid/app/WallpaperManager;

    #getter for: Landroid/app/WallpaperManager;->mWallpaperYStep:F
    invoke-static {v5}, Landroid/app/WallpaperManager;->access$600(Landroid/app/WallpaperManager;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0

    .line 636
    :catch_1
    move-exception v0

    goto :goto_0
.end method
