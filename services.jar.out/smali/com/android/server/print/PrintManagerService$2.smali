.class Lcom/android/server/print/PrintManagerService$2;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService;->registerContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;

.field final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$2;->this$0:Lcom/android/server/print/PrintManagerService;

    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$2;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$2;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$2;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$2;->this$0:Lcom/android/server/print/PrintManagerService;

    #calls: Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService;->access$100(Lcom/android/server/print/PrintManagerService;)Lcom/android/server/print/UserState;

    move-result-object v0

    .local v0, userState:Lcom/android/server/print/UserState;
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    monitor-exit v2

    .end local v0           #userState:Lcom/android/server/print/UserState;
    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
