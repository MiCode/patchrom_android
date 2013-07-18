.class Lcom/android/server/MountService$UmsEnableCallBack$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$UmsEnableCallBack;->handleFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$UmsEnableCallBack;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$UmsEnableCallBack;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack$1;->this$1:Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack$1;->this$1:Lcom/android/server/MountService$UmsEnableCallBack;

    iget-object v0, v0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$1102(Lcom/android/server/MountService;Z)Z

    return-void
.end method
