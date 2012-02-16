.class Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;
.super Ljava/lang/Thread;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->rebindWapPushManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field final synthetic val$wapPushConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->val$wapPushConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    invoke-static {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->access$000(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->this$1:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->access$100(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->val$wapPushConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
