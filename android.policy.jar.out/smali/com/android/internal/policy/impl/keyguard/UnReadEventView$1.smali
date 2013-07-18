.class Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;
.super Landroid/content/BroadcastReceiver;
.source "UnReadEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, currentTime:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->updateQueryBaseTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
