.class Lcom/android/server/MountService$11;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->shareCDRom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$doShare:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    iput-boolean p2, p0, Lcom/android/server/MountService$11;->val$doShare:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "yes"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes_hide"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$4300(Lcom/android/server/MountService;)V

    iget-object v1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doGetCDRomState()I
    invoke-static {v1}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)I

    move-result v0

    .local v0, state:I
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDRom status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService$11;->val$doShare:Z

    if-eqz v1, :cond_2

    :cond_1
    if-ne v0, v4, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService$11;->val$doShare:Z

    if-ne v1, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    iget-boolean v2, p0, Lcom/android/server/MountService$11;->val$doShare:Z

    #calls: Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$4800(Lcom/android/server/MountService;Z)V

    .end local v0           #state:I
    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v1, "MountService"

    const-string v2, "CD rom feature not enable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
