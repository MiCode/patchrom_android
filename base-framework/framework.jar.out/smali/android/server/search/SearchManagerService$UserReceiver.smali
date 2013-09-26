.class final Landroid/server/search/SearchManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchManagerService$UserReceiver;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/search/SearchManagerService$UserReceiver;-><init>(Landroid/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/server/search/SearchManagerService$UserReceiver;->this$0:Landroid/server/search/SearchManagerService;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Landroid/server/search/SearchManagerService;->onUserRemoved(I)V
    invoke-static {v0, v1}, Landroid/server/search/SearchManagerService;->access$400(Landroid/server/search/SearchManagerService;I)V

    return-void
.end method
