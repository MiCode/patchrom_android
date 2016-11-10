.class final Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
.super Ljava/lang/Object;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CecMessageBuffer"
.end annotation


# instance fields
.field private mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiControlService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method private bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/16 v0, 0x82

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "opcode"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .local v0, "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .end local v0    # "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_1
    return v2

    .restart local v0    # "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xd -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessages()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method
