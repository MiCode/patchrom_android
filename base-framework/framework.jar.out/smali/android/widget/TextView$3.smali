.class Landroid/widget/TextView$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->updateTextServicesLocaleAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCurrentTextServicesLocaleLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->updateTextServicesLocaleLocked()V
    invoke-static {v0}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCurrentTextServicesLocaleLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCurrentTextServicesLocaleLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/widget/TextView;->access$200(Landroid/widget/TextView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
