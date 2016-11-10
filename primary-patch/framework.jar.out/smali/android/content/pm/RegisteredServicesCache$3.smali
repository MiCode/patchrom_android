.class Landroid/content/pm/RegisteredServicesCache$3;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .locals 0

    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache.3;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$3;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache.3;"
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "userId":I
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$3;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-virtual {v1, v0}, Landroid/content/pm/RegisteredServicesCache;->onUserRemoved(I)V

    return-void
.end method
