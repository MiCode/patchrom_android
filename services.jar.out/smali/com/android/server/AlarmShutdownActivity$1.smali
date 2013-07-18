.class Lcom/android/server/AlarmShutdownActivity$1;
.super Ljava/lang/Object;
.source "AlarmShutdownActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmShutdownActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/AlarmShutdownActivity$1;->this$0:Lcom/android/server/AlarmShutdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->EnableAnimating(Z)V

    iget-object v0, p0, Lcom/android/server/AlarmShutdownActivity$1;->this$0:Lcom/android/server/AlarmShutdownActivity;

    iget-object v1, p0, Lcom/android/server/AlarmShutdownActivity$1;->this$0:Lcom/android/server/AlarmShutdownActivity;

    #getter for: Lcom/android/server/AlarmShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/AlarmShutdownActivity;->access$000(Lcom/android/server/AlarmShutdownActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->EnableAnimating(Z)V

    iget-object v0, p0, Lcom/android/server/AlarmShutdownActivity$1;->this$0:Lcom/android/server/AlarmShutdownActivity;

    invoke-virtual {v0}, Lcom/android/server/AlarmShutdownActivity;->finish()V

    return-void
.end method
