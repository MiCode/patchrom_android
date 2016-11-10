.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .local v12, "geofenceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "geofenceId":I
    :pswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "callbackBinder":Landroid/os/IBinder;
    const/4 v10, 0x0

    .local v10, "callbackInUse":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V

    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    :cond_1
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    :cond_2
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .local v17, "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v9, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z
    invoke-static/range {v17 .. v17}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "Removed reaper %s because binder %s is no longer needed."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v9    # "callbackBinder":Landroid/os/IBinder;
    .end local v10    # "callbackInUse":Z
    .end local v14    # "i":I
    .end local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/GeofenceHardwareImpl$Reaper;>;"
    .end local v17    # "reaper":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .restart local v9    # "callbackBinder":Landroid/os/IBinder;
    .restart local v10    # "callbackInUse":Z
    .restart local v14    # "i":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v14    # "i":I
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .end local v9    # "callbackBinder":Landroid/os/IBinder;
    .end local v10    # "callbackInUse":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v12    # "geofenceId":I
    :pswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_5

    :try_start_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .end local v12    # "geofenceId":I
    :pswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v2, :cond_6

    :try_start_c
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v12, v3}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_4
    move-exception v3

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v3

    .end local v12    # "geofenceId":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v13, v3

    check-cast v13, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .local v13, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "GeofenceHardwareImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Transition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_8

    :try_start_f
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$800(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v5

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$900(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v6

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I
    invoke-static {v13}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$1000(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v8

    invoke-interface/range {v2 .. v8}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_5
    move-exception v3

    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v3

    .end local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v2, v3

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofence callback reaped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .local v16, "monitoringType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .restart local v12    # "geofenceId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v3, v5, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->remove(I)V

    .end local v12    # "geofenceId":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    monitor-exit v4

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v3

    .end local v14    # "i":I
    .end local v16    # "monitoringType":I
    .restart local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :catch_1
    move-exception v3

    goto/16 :goto_7

    .end local v13    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    .restart local v12    # "geofenceId":I
    :catch_2
    move-exception v3

    goto/16 :goto_6

    :catch_3
    move-exception v3

    goto/16 :goto_5

    :catch_4
    move-exception v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
