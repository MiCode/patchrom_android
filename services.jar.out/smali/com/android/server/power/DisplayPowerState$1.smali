.class Lcom/android/server/power/DisplayPowerState$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayState"

    const-string v1, "IPO_SHUTDWON1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/DisplayPowerState;->mShutDownFlag:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerState;->access$202(Lcom/android/server/power/DisplayPowerState;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PowerManagerDisplayState"

    const-string v1, "IPO_BOOT1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    #setter for: Lcom/android/server/power/DisplayPowerState;->mShutDownFlag:Z
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerState;->access$202(Lcom/android/server/power/DisplayPowerState;Z)Z

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.ACTION_UNBLANK_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    const-string v1, "delay"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/power/DisplayPowerState;->mDelay:I
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerState;->access$302(Lcom/android/server/power/DisplayPowerState;I)I

    const-string v0, "PowerManagerDisplayState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDelay:I
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    #getter for: Lcom/android/server/power/DisplayPowerState;->mDelay:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$1;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/16 v1, 0x96

    #setter for: Lcom/android/server/power/DisplayPowerState;->mDelay:I
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerState;->access$302(Lcom/android/server/power/DisplayPowerState;I)I

    goto :goto_0
.end method
