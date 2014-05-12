.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .local v0, in:Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0           #in:Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 112
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v87, 0x1

    .local v87, finished:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v111, 0x1

    .local v111, userLeaving:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v87

    move/from16 v2, v111

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v25           #configChanges:I
    .end local v87           #finished:Z
    .end local v111           #userLeaving:Z
    :cond_0
    const/16 v87, 0x0

    goto :goto_1

    .restart local v87       #finished:Z
    :cond_1
    const/16 v111, 0x0

    goto :goto_2

    .end local v7           #b:Landroid/os/IBinder;
    .end local v87           #finished:Z
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v107, 0x1

    .local v107, show:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v107

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v25           #configChanges:I
    .end local v107           #show:Z
    :cond_2
    const/16 v107, 0x0

    goto :goto_3

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v107, 0x1

    .restart local v107       #show:Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v107           #show:Z
    :cond_3
    const/16 v107, 0x0

    goto :goto_4

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v108, 0x1

    .local v108, sleeping:Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v108           #sleeping:Z
    :cond_4
    const/16 v108, 0x0

    goto :goto_5

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, procState:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v17, 0x1

    .local v17, isForward:Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v12, v1}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZ)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v17           #isForward:Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #procState:I
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    .end local v14           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .local v9, info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    .local v10, curConfig:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .local v11, compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #procState:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    .local v13, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .restart local v14       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v16, 0x1

    .local v16, notResumed:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v17, 0x1

    .restart local v17       #isForward:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .local v19, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v20, 0x1

    .local v20, autoStopProfiler:Z
    :goto_a
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v20}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v16           #notResumed:Z
    .end local v17           #isForward:Z
    .end local v18           #profileName:Ljava/lang/String;
    .end local v19           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v20           #autoStopProfiler:Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .restart local v16       #notResumed:Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_8

    .restart local v17       #isForward:Z
    .restart local v18       #profileName:Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto :goto_9

    .restart local v19       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/16 v20, 0x0

    goto :goto_a

    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #curConfig:Landroid/content/res/Configuration;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v12           #procState:I
    .end local v13           #state:Landroid/os/Bundle;
    .end local v14           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v16           #notResumed:Z
    .end local v17           #isForward:Z
    .end local v18           #profileName:Ljava/lang/String;
    .end local v19           #profileFd:Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .restart local v14       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .restart local v15       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x1

    .restart local v16       #notResumed:Z
    :goto_b
    const/16 v27, 0x0

    .local v27, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #config:Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .restart local v27       #config:Landroid/content/res/Configuration;
    :cond_a
    move-object/from16 v21, p0

    move-object/from16 v22, v7

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move/from16 v26, v16

    invoke-virtual/range {v21 .. v27}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v16           #notResumed:Z
    .end local v27           #config:Landroid/content/res/Configuration;
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .end local v7           #b:Landroid/os/IBinder;
    .end local v14           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v25           #configChanges:I
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .restart local v15       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    .end local v15           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v88, 0x1

    .local v88, finishing:Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v88

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v25           #configChanges:I
    .end local v88           #finishing:Z
    :cond_c
    const/16 v88, 0x0

    goto :goto_c

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .local v34, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v35, 0x1

    .local v35, sync:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, sendingUser:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, processState:I
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    invoke-virtual/range {v28 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v35           #sync:Z
    .end local v36           #sendingUser:I
    .end local v37           #processState:I
    :cond_d
    const/16 v35, 0x0

    goto :goto_d

    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .local v39, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .local v9, info:Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37       #processState:I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-virtual {v0, v1, v9, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v37           #processState:I
    .end local v39           #token:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .restart local v39       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v102, 0x1

    .local v102, rebind:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37       #processState:I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v102

    move/from16 v3, v37

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v37           #processState:I
    .end local v102           #rebind:Z
    :cond_e
    const/16 v102, 0x0

    goto :goto_e

    .end local v6           #intent:Landroid/content/Intent;
    .end local v39           #token:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .restart local v39       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #intent:Landroid/content/Intent;
    .end local v39           #token:Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .restart local v39       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v40, 0x1

    .local v40, taskRemoved:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    .local v43, args:Landroid/content/Intent;
    :goto_10
    move-object/from16 v38, p0

    invoke-virtual/range {v38 .. v43}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v40           #taskRemoved:Z
    .end local v41           #startId:I
    .end local v42           #fl:I
    .end local v43           #args:Landroid/content/Intent;
    :cond_f
    const/16 v40, 0x0

    goto :goto_f

    .restart local v40       #taskRemoved:Z
    .restart local v41       #startId:I
    .restart local v42       #fl:I
    :cond_10
    const/16 v43, 0x0

    .restart local v43       #args:Landroid/content/Intent;
    goto :goto_10

    .end local v39           #token:Landroid/os/IBinder;
    .end local v40           #taskRemoved:Z
    .end local v41           #startId:I
    .end local v42           #fl:I
    .end local v43           #args:Landroid/content/Intent;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .restart local v39       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v39           #token:Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .local v45, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v47

    .local v47, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    new-instance v48, Landroid/content/ComponentName;

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .local v48, testName:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .restart local v19       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v20, 0x1

    .restart local v20       #autoStopProfiler:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v52

    .local v52, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .local v82, binder:Landroid/os/IBinder;
    invoke-static/range {v82 .. v82}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v53

    .local v53, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    invoke-static/range {v82 .. v82}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v54

    .local v54, uiAutomationConnection:Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .local v55, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v56, 0x1

    .local v56, openGlTrace:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v57, 0x1

    .local v57, restrictedBackupMode:Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .local v58, persistent:Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .restart local v27       #config:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v61

    .local v61, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v62

    .local v62, coreSettings:Landroid/os/Bundle;
    move-object/from16 v44, p0

    move-object/from16 v46, v9

    move-object/from16 v49, v18

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v59, v27

    move-object/from16 v60, v11

    invoke-virtual/range {v44 .. v62}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v18           #profileName:Ljava/lang/String;
    .end local v19           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v20           #autoStopProfiler:Z
    .end local v27           #config:Landroid/content/res/Configuration;
    .end local v48           #testName:Landroid/content/ComponentName;
    .end local v52           #testArgs:Landroid/os/Bundle;
    .end local v53           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v54           #uiAutomationConnection:Landroid/app/IUiAutomationConnection;
    .end local v55           #testMode:I
    .end local v56           #openGlTrace:Z
    .end local v57           #restrictedBackupMode:Z
    .end local v58           #persistent:Z
    .end local v61           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v62           #coreSettings:Landroid/os/Bundle;
    .end local v82           #binder:Landroid/os/IBinder;
    :cond_11
    const/16 v48, 0x0

    goto/16 :goto_11

    .restart local v18       #profileName:Ljava/lang/String;
    .restart local v48       #testName:Landroid/content/ComponentName;
    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    .restart local v19       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_13
    const/16 v20, 0x0

    goto :goto_13

    .restart local v20       #autoStopProfiler:Z
    .restart local v52       #testArgs:Landroid/os/Bundle;
    .restart local v53       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v54       #uiAutomationConnection:Landroid/app/IUiAutomationConnection;
    .restart local v55       #testMode:I
    .restart local v82       #binder:Landroid/os/IBinder;
    :cond_14
    const/16 v56, 0x0

    goto :goto_14

    .restart local v56       #openGlTrace:Z
    :cond_15
    const/16 v57, 0x0

    goto :goto_15

    .restart local v57       #restrictedBackupMode:Z
    :cond_16
    const/16 v58, 0x0

    goto :goto_16

    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v18           #profileName:Ljava/lang/String;
    .end local v19           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v20           #autoStopProfiler:Z
    .end local v45           #packageName:Ljava/lang/String;
    .end local v47           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v48           #testName:Landroid/content/ComponentName;
    .end local v52           #testArgs:Landroid/os/Bundle;
    .end local v53           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v54           #uiAutomationConnection:Landroid/app/IUiAutomationConnection;
    .end local v55           #testMode:I
    .end local v56           #openGlTrace:Z
    .end local v57           #restrictedBackupMode:Z
    .end local v82           #binder:Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .restart local v27       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v101

    .local v101, proxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v97

    .local v97, port:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, exclList:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v93

    .local v93, pacFileUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v97

    move-object/from16 v3, v85

    move-object/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v85           #exclList:Ljava/lang/String;
    .end local v93           #pacFileUrl:Ljava/lang/String;
    .end local v97           #port:Ljava/lang/String;
    .end local v101           #proxy:Ljava/lang/String;
    :pswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .local v86, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .local v105, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .local v43, args:[Ljava/lang/String;
    if-eqz v86, :cond_17

    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43           #args:[Ljava/lang/String;
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v105           #service:Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .restart local v105       #service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .restart local v43       #args:[Ljava/lang/String;
    if-eqz v86, :cond_18

    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    :try_start_1
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    :goto_18
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43           #args:[Ljava/lang/String;
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v105           #service:Landroid/os/IBinder;
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v64

    .local v64, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .local v67, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .local v68, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v69, 0x1

    .local v69, ordered:Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v70, 0x1

    .local v70, sticky:Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .restart local v36       #sendingUser:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37       #processState:I
    move-object/from16 v63, p0

    move-object/from16 v65, v6

    move/from16 v66, v32

    move/from16 v71, v36

    move/from16 v72, v37

    invoke-virtual/range {v63 .. v72}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v36           #sendingUser:I
    .end local v37           #processState:I
    .end local v69           #ordered:Z
    .end local v70           #sticky:Z
    :cond_19
    const/16 v69, 0x0

    goto :goto_19

    .restart local v69       #ordered:Z
    :cond_1a
    const/16 v70, 0x0

    goto :goto_1a

    .end local v6           #intent:Landroid/content/Intent;
    .end local v32           #resultCode:I
    .end local v64           #receiver:Landroid/content/IIntentReceiver;
    .end local v67           #dataStr:Ljava/lang/String;
    .end local v68           #extras:Landroid/os/Bundle;
    .end local v69           #ordered:Z
    :pswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v109, 0x1

    .local v109, start:Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .local v99, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .local v95, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v86, v5

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v95

    move-object/from16 v3, v86

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v95           #path:Ljava/lang/String;
    .end local v99           #profileType:I
    .end local v109           #start:Z
    :cond_1b
    const/16 v109, 0x0

    goto :goto_1b

    .restart local v95       #path:Ljava/lang/String;
    .restart local v99       #profileType:I
    .restart local v109       #start:Z
    :cond_1c
    const/16 v86, 0x0

    goto :goto_1c

    .end local v95           #path:Ljava/lang/String;
    .end local v99           #profileType:I
    .end local v109           #start:Z
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .local v89, group:I
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v89           #group:I
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .local v80, appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .local v81, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v80           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v81           #backupMode:I
    :pswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .restart local v80       #appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1, v11}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v80           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .local v83, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v94

    .local v94, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v83

    move-object/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v83           #cmd:I
    .end local v94           #packages:[Ljava/lang/String;
    :pswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .local v92, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v92           #msg:Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v91, 0x1

    .local v91, managed:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .restart local v95       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v86, v5

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v91

    move-object/from16 v2, v95

    move-object/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v91           #managed:Z
    .end local v95           #path:Ljava/lang/String;
    :cond_1d
    const/16 v91, 0x0

    goto :goto_1d

    .restart local v91       #managed:Z
    .restart local v95       #path:Ljava/lang/String;
    :cond_1e
    const/16 v86, 0x0

    goto :goto_1e

    .end local v91           #managed:Z
    .end local v95           #path:Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .local v78, activity:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v98

    .local v98, prefix:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .restart local v43       #args:[Ljava/lang/String;
    if-eqz v86, :cond_1f

    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v98

    move-object/from16 v3, v43

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_2
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43           #args:[Ljava/lang/String;
    .end local v78           #activity:Landroid/os/IBinder;
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v98           #prefix:Ljava/lang/String;
    :pswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v106

    .local v106, settings:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v106           #settings:Landroid/os/Bundle;
    :pswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .local v96, pkg:Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/res/CompatibilityInfo;

    .local v84, compat:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v84           #compat:Landroid/content/res/CompatibilityInfo;
    .end local v96           #pkg:Ljava/lang/String;
    :pswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .local v90, level:I
    move-object/from16 v0, p0

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v90           #level:I
    :pswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Debug$MemoryInfo;

    .local v73, mi:Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v74, 0x1

    .local v74, checkin:Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v75, 0x1

    .local v75, dumpInfo:Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v76, 0x1

    .local v76, dumpDalvik:Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .restart local v43       #args:[Ljava/lang/String;
    if-eqz v86, :cond_20

    :try_start_3
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v72

    move-object/from16 v71, p0

    move-object/from16 v77, v43

    invoke-virtual/range {v71 .. v77}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_20
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43           #args:[Ljava/lang/String;
    .end local v74           #checkin:Z
    .end local v75           #dumpInfo:Z
    .end local v76           #dumpDalvik:Z
    :cond_21
    const/16 v74, 0x0

    goto :goto_20

    .restart local v74       #checkin:Z
    :cond_22
    const/16 v75, 0x0

    goto :goto_21

    .restart local v75       #dumpInfo:Z
    :cond_23
    const/16 v76, 0x0

    goto :goto_22

    .restart local v43       #args:[Ljava/lang/String;
    .restart local v76       #dumpDalvik:Z
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_24
    throw v5

    .end local v43           #args:[Ljava/lang/String;
    .end local v73           #mi:Landroid/os/Debug$MemoryInfo;
    .end local v74           #checkin:Z
    .end local v75           #dumpInfo:Z
    .end local v76           #dumpDalvik:Z
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .restart local v43       #args:[Ljava/lang/String;
    if-eqz v86, :cond_24

    :try_start_6
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_24
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_26
    throw v5

    .end local v43           #args:[Ljava/lang/String;
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .restart local v43       #args:[Ljava/lang/String;
    if-eqz v86, :cond_25

    :try_start_9
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    :try_start_b
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_28
    throw v5

    .end local v43           #args:[Ljava/lang/String;
    .end local v86           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v100

    .local v100, provider:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v100           #provider:Landroid/os/IBinder;
    :pswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v79

    .local v79, activityToken:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v103

    .local v103, requestToken:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v104

    .local v104, requestType:I
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v103

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v79           #activityToken:Landroid/os/IBinder;
    .end local v103           #requestToken:Landroid/os/IBinder;
    .end local v104           #requestType:I
    :pswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .restart local v39       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_26

    const/16 v110, 0x1

    .local v110, timeout:Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v110           #timeout:Z
    :cond_26
    const/16 v110, 0x0

    goto :goto_29

    .end local v39           #token:Landroid/os/IBinder;
    :pswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, state:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v13           #state:I
    :pswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/content/pm/ProviderInfo;

    .local v100, provider:Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v100           #provider:Landroid/content/pm/ProviderInfo;
    .restart local v43       #args:[Ljava/lang/String;
    .restart local v86       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v105       #service:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_17

    :catch_1
    move-exception v5

    goto/16 :goto_18

    .end local v105           #service:Landroid/os/IBinder;
    .restart local v78       #activity:Landroid/os/IBinder;
    .restart local v98       #prefix:Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1f

    .end local v78           #activity:Landroid/os/IBinder;
    .end local v98           #prefix:Ljava/lang/String;
    .restart local v73       #mi:Landroid/os/Debug$MemoryInfo;
    .restart local v74       #checkin:Z
    .restart local v75       #dumpInfo:Z
    .restart local v76       #dumpDalvik:Z
    :catch_3
    move-exception v5

    goto/16 :goto_23

    :catch_4
    move-exception v21

    goto/16 :goto_24

    .end local v73           #mi:Landroid/os/Debug$MemoryInfo;
    .end local v74           #checkin:Z
    .end local v75           #dumpInfo:Z
    .end local v76           #dumpDalvik:Z
    :catch_5
    move-exception v5

    goto/16 :goto_25

    :catch_6
    move-exception v21

    goto/16 :goto_26

    :catch_7
    move-exception v5

    goto/16 :goto_27

    :catch_8
    move-exception v21

    goto/16 :goto_28

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_f
        :pswitch_16
        :pswitch_19
        :pswitch_d
        :pswitch_e
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_8
        :pswitch_4
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_13
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_17
        :pswitch_18
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method
