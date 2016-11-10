.class Landroid/service/wallpaper/WallpaperService$Engine$3;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    return-void
.end method
