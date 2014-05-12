.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .parameter "sbn"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onNotificationPosted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .parameter "sbn"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onNotificationRemoved"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
