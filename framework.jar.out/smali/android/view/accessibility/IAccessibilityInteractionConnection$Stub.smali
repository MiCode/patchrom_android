.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final TRANSACTION_findFocus:I = 0x4

.field static final TRANSACTION_focusSearch:I = 0x5

.field static final TRANSACTION_performAccessibilityAction:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .local v5, "_arg1":Landroid/graphics/Region;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MagnificationSpec;

    .local v12, "_arg7":Landroid/view/MagnificationSpec;
    :goto_2
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Region;
    goto :goto_1

    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":J
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "_arg7":Landroid/view/MagnificationSpec;
    goto :goto_2

    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :sswitch_2
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .local v6, "_arg2":Landroid/graphics/Region;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .local v8, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .local v24, "_arg8":Landroid/view/MagnificationSpec;
    :goto_4
    move-object/from16 v13, p0

    move-wide v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_3

    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_4

    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_3
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_6
    move-object/from16 v13, p0

    move-wide v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_5

    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_6

    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_4
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_8
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_7

    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_8

    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_5
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_a
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_9

    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_9
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_a

    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_6
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, "_arg2":Landroid/os/Bundle;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
