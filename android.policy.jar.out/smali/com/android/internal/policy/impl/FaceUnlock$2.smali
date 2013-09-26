.class Lcom/android/internal/policy/impl/FaceUnlock$2;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "FaceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FaceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FaceUnlock;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
