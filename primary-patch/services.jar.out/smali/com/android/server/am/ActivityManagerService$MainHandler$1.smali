.class Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V

    return-void
.end method
