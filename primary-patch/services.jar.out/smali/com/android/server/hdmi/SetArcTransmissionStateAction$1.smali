.class Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    # invokes: Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->access$000(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V

    const-string v0, "Failed to send <Report Arc Initiated>."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
