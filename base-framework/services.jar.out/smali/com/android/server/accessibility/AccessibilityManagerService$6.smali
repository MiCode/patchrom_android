.class Lcom/android/server/accessibility/AccessibilityManagerService$6;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$addedClient:Landroid/view/accessibility/IAccessibilityManagerClient;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$addedClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$addedClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$addedClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
