.class public abstract Landroid/service/carrier/ICarrierMessagingService$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingService"

.field static final TRANSACTION_downloadMms:I = 0x6

.field static final TRANSACTION_filterSms:I = 0x1

.field static final TRANSACTION_sendDataSms:I = 0x3

.field static final TRANSACTION_sendMms:I = 0x5

.field static final TRANSACTION_sendMultipartTextSms:I = 0x4

.field static final TRANSACTION_sendTextSms:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/carrier/ICarrierMessagingService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/service/carrier/MessagePdu;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/carrier/MessagePdu;

    .local v2, "_arg0":Landroid/service/carrier/MessagePdu;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v6

    .local v6, "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService$Stub;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "_arg0":Landroid/service/carrier/MessagePdu;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/service/carrier/MessagePdu;
    goto :goto_1

    .end local v2    # "_arg0":Landroid/service/carrier/MessagePdu;
    :sswitch_2
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v6

    .restart local v6    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    :sswitch_3
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v7

    .local v7, "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    :sswitch_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v6

    .local v6, "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object v8, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, "_arg0":Landroid/net/Uri;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, "_arg2":Landroid/net/Uri;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v5

    .local v5, "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/Uri;
    .end local v5    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    .restart local v3    # "_arg1":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/net/Uri;
    goto :goto_3

    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/Uri;
    :sswitch_6
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .restart local v2    # "_arg0":Landroid/net/Uri;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v5

    .restart local v5    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/carrier/ICarrierMessagingService$Stub;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/Uri;
    .end local v5    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Uri;
    goto :goto_4

    .restart local v3    # "_arg1":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/net/Uri;
    goto :goto_5

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
