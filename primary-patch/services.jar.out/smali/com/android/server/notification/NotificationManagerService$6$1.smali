.class Lcom/android/server/notification/NotificationManagerService$6$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$6;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$6;

.field final synthetic val$conditions:[Landroid/service/notification/Condition;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$6;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->this$1:Lcom/android/server/notification/NotificationManagerService$6;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$conditions:[Landroid/service/notification/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->this$1:Lcom/android/server/notification/NotificationManagerService$6;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6$1;->val$conditions:[Landroid/service/notification/Condition;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/ConditionProviders;->notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    return-void
.end method
