.class Landroid/app/NotificationManagerPlus$5;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationManagerPlus;


# direct methods
.method constructor <init>(Landroid/app/NotificationManagerPlus;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, remove:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Landroid/app/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Landroid/app/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Landroid/app/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Landroid/app/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

    invoke-interface {v1, p1}, Landroid/app/NotificationManagerPlus$OnLastDismissListener;->onLastDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    const-string v1, "NotificationManangerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDismiss() size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManagerPlus$5;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remove="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    .end local v0           #remove:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
