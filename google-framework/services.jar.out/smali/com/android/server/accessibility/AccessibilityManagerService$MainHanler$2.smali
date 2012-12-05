.class Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTouchExplorationGrantedServices:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v1, "touch_exploration_granted_accessibility_services"

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTouchExplorationGrantedServices:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v2

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_exploration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
