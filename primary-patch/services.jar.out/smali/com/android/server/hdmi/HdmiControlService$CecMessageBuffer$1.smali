.class Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    return-void
.end method
