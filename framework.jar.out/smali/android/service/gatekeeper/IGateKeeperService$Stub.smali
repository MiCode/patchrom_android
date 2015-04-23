.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg3":[B
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .local v6, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_2
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v1, v2, v4}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_3
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg3":[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_4
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":J
    :sswitch_5
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
