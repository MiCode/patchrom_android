.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutingChangeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3
    .param p1, "params"    # [B

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    array-length v2, p1

    if-ge v2, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$500(Z)I

    move-result v0

    goto :goto_0
.end method
