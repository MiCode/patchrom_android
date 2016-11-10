.class Lcom/android/server/hdmi/HdmiCecController$7$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$7;

.field final synthetic val$finalError:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    return-void
.end method
