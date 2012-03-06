.class Landroid/server/BluetoothHealthProfileHandler$1;
.super Landroid/os/Handler;
.source "BluetoothHealthProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHealthProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothHealthProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothHealthProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 87
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 91
    .local v14, registerApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v16

    .line 92
    .local v16, role:I
    const/4 v13, 0x0

    .line 94
    .local v13, path:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    move/from16 v0, v16

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringRole(I)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$100(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/server/BluetoothService;->registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 103
    :goto_1
    if-nez v13, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v2, 0x1

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v1, v14, v2}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    move/from16 v0, v16

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringRole(I)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$100(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v18

    move/from16 v0, v18

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringChannelType(I)Ljava/lang/String;
    invoke-static {v7, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$300(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/server/BluetoothService;->registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v2, 0x0

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v1, v14, v2}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 115
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #registerApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #role:I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 119
    .local v17, unregisterApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 120
    .local v8, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    goto :goto_2

    .line 126
    .end local v8           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/server/BluetoothService;->unregisterHealthApplicationNative(Ljava/lang/String;)Z

    move-result v15

    .line 128
    .local v15, result:Z
    if-eqz v15, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v2, 0x2

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v1, v0, v2}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v2, 0x3

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v1, v0, v2}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 139
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #result:Z
    .end local v17           #unregisterApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 140
    .restart local v8       #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v1

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, deviceObjectPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 143
    .local v10, configPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelType:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1200(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringChannelType(I)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->access$300(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, channelType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v1

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    invoke-virtual {v1, v11, v10, v9, v2}, Landroid/server/BluetoothService;->createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v4

    .line 148
    .local v4, prevState:I
    const/4 v5, 0x0

    .line 149
    .local v5, state:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v6, 0x0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v7

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v1 .. v7}, Landroid/server/BluetoothHealthProfileHandler;->access$1300(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
