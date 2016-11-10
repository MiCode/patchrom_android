.class Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;->this$0:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    # getter for: Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->access$000(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
