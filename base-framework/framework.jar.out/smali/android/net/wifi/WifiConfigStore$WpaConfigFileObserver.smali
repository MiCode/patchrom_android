.class Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
.super Landroid/os/FileObserver;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpaConfigFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfigStore;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Landroid/net/wifi/WifiConfigStore;

    const-string v0, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
