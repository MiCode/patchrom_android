.class Lcom/android/server/hdmi/HdmiControlService$5;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$000(Lcom/android/server/hdmi/HdmiControlService;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$5$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$5;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method
