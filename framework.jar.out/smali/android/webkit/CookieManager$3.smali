.class Landroid/webkit/CookieManager$3;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeAllCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Landroid/webkit/CookieManager$3;->this$0:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 656
    iget-object v1, p0, Landroid/webkit/CookieManager$3;->this$0:Landroid/webkit/CookieManager;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Landroid/webkit/CookieManager$3;->this$0:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xc8

    const/high16 v4, 0x3f40

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #setter for: Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;
    invoke-static {v0, v2}, Landroid/webkit/CookieManager;->access$302(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;

    .line 659
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->clearAllCookies()V

    .line 660
    monitor-exit v1

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
