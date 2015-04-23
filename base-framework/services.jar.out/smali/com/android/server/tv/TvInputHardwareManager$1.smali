.class Lcom/android/server/tv/TvInputHardwareManager$1;
.super Landroid/content/BroadcastReceiver;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$1;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$1;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->access$300(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
