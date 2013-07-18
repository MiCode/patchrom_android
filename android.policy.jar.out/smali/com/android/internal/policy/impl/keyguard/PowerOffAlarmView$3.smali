.class Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;
.super Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.source "PowerOffAlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCmdService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    invoke-direct {p0, p2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 16
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, actionExtraResult:I
    const-string v11, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, errorString:Ljava/lang/String;
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$500(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_2
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, notifyResult:I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, commandId:I
    const-string v11, "PowerOffAlarm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voice command id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x5

    if-ne v2, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$300(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    :cond_1
    const/16 v11, 0x10

    if-ne v2, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$600(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    :cond_2
    const/16 v11, 0x11

    if-ne v2, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$700(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    .end local v2           #commandId:I
    .end local v6           #notifyResult:I
    :cond_3
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, indicatorResult:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, stringCommonInfo:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fb

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, quotaStart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fc

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, quotaEnd:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v8, "\""

    const-string v7, "\""

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fa

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f9

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$800(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$800(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$900(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$900(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
