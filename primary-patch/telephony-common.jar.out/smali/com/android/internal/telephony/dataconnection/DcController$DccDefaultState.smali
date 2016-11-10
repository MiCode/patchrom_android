.class Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
.super Lcom/android/internal/util/State;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DccDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcController$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    return-void
.end method

.method private onDataStateChanged(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: dcsList="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mDcListActiveByCid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->access$400(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->access$500(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v8, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v8    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$400(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .local v7, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: add to retry dc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/4 v15, 0x0

    .local v15, "isAnyDataCallDormant":Z
    const/4 v14, 0x0

    .local v14, "isAnyDataCallActive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v18, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$400(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .restart local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: no associated DC yet, ignore"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: no connected apns, ignore"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    :cond_5
    :goto_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/4 v14, 0x1

    :cond_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: Found ConnId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " newState="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v21, v0

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-boolean v21, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    if-eqz v21, :cond_8

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    goto :goto_3

    :cond_8
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v10

    .local v10, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: inactive failCause="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: X restart radio"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: inactive, add to cleanup list"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: inactive, add to retry list"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v10    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v20

    .local v20, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: no change"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_13

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v21

    if-nez v21, :cond_12

    :cond_d
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v5

    .local v5, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: oldLp="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " newLp="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " car="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    const/16 v16, 0x0

    .local v16, "needToClean":Z
    iget-object v0, v5, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, "added":Landroid/net/LinkAddress;
    iget-object v0, v5, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/LinkAddress;

    .local v19, "removed":Landroid/net/LinkAddress;
    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v16, 0x1

    goto :goto_4

    .end local v2    # "added":Landroid/net/LinkAddress;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "removed":Landroid/net/LinkAddress;
    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " oldLp="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " newLp="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: simple change"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v21

    const-string v22, "linkPropertiesChanged"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "needToClean":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: no changes"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v18    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .end local v20    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    move/from16 v17, v0

    .local v17, "newOverallDataConnectionActiveState":I
    if-eqz v15, :cond_15

    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " apnsToCleanup="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->access$500(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_7

    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isAnyDataCallDormant = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    if-eqz v14, :cond_16

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcController;->access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_6

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_6

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .restart local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    const v21, 0x40009

    iget v0, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    goto :goto_8

    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v21, v0

    const-string v22, "onDataStateChanged: X"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40005

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40007

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    # setter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->access$302(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->dispose()V

    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DccDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string v2, "DccDefaultState: Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x40005
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
