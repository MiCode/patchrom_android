.class Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchEngineManagerService;

    #getter for: Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/search/SearchEngineManagerService;->access$100(Landroid/server/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchEngineManagerService;

    #calls: Landroid/server/search/SearchEngineManagerService;->initSearchEngineInfos()V
    invoke-static {v0}, Landroid/server/search/SearchEngineManagerService;->access$200(Landroid/server/search/SearchEngineManagerService;)V

    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchEngineManagerService;

    #getter for: Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/search/SearchEngineManagerService;->access$100(Landroid/server/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/server/search/SearchEngineManagerService$LocaleChangeReceiver;

    iget-object v2, p0, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v2, v2, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Landroid/server/search/SearchEngineManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/server/search/SearchEngineManagerService$LocaleChangeReceiver;-><init>(Landroid/server/search/SearchEngineManagerService;Landroid/server/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
