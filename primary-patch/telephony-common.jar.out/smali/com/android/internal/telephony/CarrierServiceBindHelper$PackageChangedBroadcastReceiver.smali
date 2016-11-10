.class Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;
    .param p2, "x1"    # Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive action: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_0
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
