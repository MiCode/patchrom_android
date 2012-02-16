.class Lcom/android/server/DevicePolicyManagerService$1$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DevicePolicyManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/DevicePolicyManagerService$1;

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification()V
    invoke-static {v0}, Lcom/android/server/DevicePolicyManagerService;->access$000(Lcom/android/server/DevicePolicyManagerService;)V

    .line 128
    return-void
.end method
