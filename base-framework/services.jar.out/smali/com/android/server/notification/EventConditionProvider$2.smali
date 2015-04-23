.class Lcom/android/server/notification/EventConditionProvider$2;
.super Ljava/lang/Object;
.source "EventConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/CalendarTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    # getter for: Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string v1, "mTrackerCallback.onChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    # getter for: Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->access$300(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    # getter for: Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/notification/EventConditionProvider;->access$200(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    # getter for: Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->access$300(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    # getter for: Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/notification/EventConditionProvider;->access$200(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
