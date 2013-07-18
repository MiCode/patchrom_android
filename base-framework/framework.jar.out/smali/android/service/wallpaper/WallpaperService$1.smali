.class Landroid/service/wallpaper/WallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v2, 0x0

    .local v2, isScreenOn:Z
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v4, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doScreenOnOff(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #calls: Landroid/service/wallpaper/WallpaperService;->isTabletBuild()Z
    invoke-static {v4}, Landroid/service/wallpaper/WallpaperService;->access$100(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .restart local v1       #i:I
    :cond_3
    return-void
.end method
