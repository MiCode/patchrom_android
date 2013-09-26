.class final Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->write(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$networks:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;->val$networks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;->val$networks:Ljava/util/List;

    #calls: Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->onWriteCalled(Ljava/util/List;)V
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->access$000(Ljava/util/List;)V

    return-void
.end method
