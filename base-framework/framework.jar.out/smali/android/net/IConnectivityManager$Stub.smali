.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x3c

.field static final TRANSACTION_checkMobileProvisioning:I = 0x2c

.field static final TRANSACTION_establishVpn:I = 0x26

.field static final TRANSACTION_factoryReset:I = 0x3f

.field static final TRANSACTION_getActiveLinkProperties:I = 0xb

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x3

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x10

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xf

.field static final TRANSACTION_getAllNetworks:I = 0x8

.field static final TRANSACTION_getAllVpnInfo:I = 0x2a

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0x9

.field static final TRANSACTION_getGlobalProxy:I = 0x21

.field static final TRANSACTION_getLastTetherError:I = 0x15

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x29

.field static final TRANSACTION_getLinkProperties:I = 0xd

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xc

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x2d

.field static final TRANSACTION_getNetworkCapabilities:I = 0xe

.field static final TRANSACTION_getNetworkForType:I = 0x7

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x5

.field static final TRANSACTION_getProxyForNetwork:I = 0x23

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x3b

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1b

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1c

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1a

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_getVpnConfig:I = 0x27

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x11

.field static final TRANSACTION_isNetworkSupported:I = 0xa

.field static final TRANSACTION_isTetheringSupported:I = 0x16

.field static final TRANSACTION_listenForNetwork:I = 0x37

.field static final TRANSACTION_pendingListenForNetwork:I = 0x38

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x35

.field static final TRANSACTION_prepareVpn:I = 0x24

.field static final TRANSACTION_registerNetworkAgent:I = 0x33

.field static final TRANSACTION_registerNetworkFactory:I = 0x30

.field static final TRANSACTION_releaseNetworkRequest:I = 0x39

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x36

.field static final TRANSACTION_removeVpnAddress:I = 0x3d

.field static final TRANSACTION_reportInetCondition:I = 0x1f

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x20

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x31

.field static final TRANSACTION_requestNetwork:I = 0x34

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x3a

.field static final TRANSACTION_setAirplaneMode:I = 0x2f

.field static final TRANSACTION_setGlobalProxy:I = 0x22

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x2e

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x3e

.field static final TRANSACTION_setUsbTethering:I = 0x1e

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x25

.field static final TRANSACTION_startLegacyVpn:I = 0x28

.field static final TRANSACTION_tether:I = 0x13

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x32

.field static final TRANSACTION_untether:I = 0x14

.field static final TRANSACTION_updateLockdownVpn:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v7

    .local v7, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v7    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .local v7, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v7    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_1

    .restart local v7    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    .local v7, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v7    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v7

    .local v7, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/net/Network;
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    .local v7, "_result":[Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v7    # "_result":[Landroid/net/Network;
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v7

    .local v7, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    move v0, v8

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v9

    goto :goto_2

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .local v7, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_3

    .restart local v7    # "_result":Landroid/net/LinkProperties;
    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .local v7, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_4

    .restart local v7    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v7

    .local v7, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v7    # "_result":[Landroid/net/NetworkState;
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v7

    .local v7, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f

    move v9, v8

    :cond_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Z
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10

    move v9, v8

    :cond_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v7    # "_result":Z
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_11

    move v9, v8

    :cond_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Z
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v7

    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v1, v8

    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_12
    move v1, v9

    goto :goto_5

    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v2, v8

    .local v2, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_6

    :cond_14
    move v2, v9

    goto :goto_7

    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    .local v7, "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_15

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Landroid/net/ProxyInfo;
    :sswitch_22
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .local v1, "_arg0":Landroid/net/ProxyInfo;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/ProxyInfo;
    goto :goto_8

    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_9
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_18

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/ProxyInfo;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_9

    .restart local v7    # "_result":Landroid/net/ProxyInfo;
    :cond_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_19

    move v9, v8

    :cond_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Z
    :sswitch_25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v3, v8

    .local v3, "_arg2":Z
    :goto_a
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    :cond_1a
    move v3, v9

    goto :goto_a

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_26
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .local v7, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1c

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_b

    .restart local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_27
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v7

    .local v7, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1d

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_28
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .local v1, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_c

    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_29
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v7

    .local v7, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1f

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v7

    .local v7, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v7    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_20

    move v9, v8

    :cond_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7    # "_result":Z
    :sswitch_2c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_2d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v1, v8

    .local v1, "_arg0":Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_21
    move v1, v9

    goto :goto_d

    :sswitch_2f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v1, v8

    .restart local v1    # "_arg0":Z
    :goto_e
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_22
    move v1, v9

    goto :goto_e

    :sswitch_30
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_f

    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_31
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_10
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_24

    move v9, v8

    :cond_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v7    # "_result":Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_10

    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_32
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_11

    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_33
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "_arg1":Landroid/net/NetworkInfo;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .local v3, "_arg2":Landroid/net/LinkProperties;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .local v4, "_arg3":Landroid/net/NetworkCapabilities;
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkMisc;

    .local v6, "_arg5":Landroid/net/NetworkMisc;
    :goto_16
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    .end local v7    # "_result":I
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_12

    :cond_28
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_13

    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/net/LinkProperties;
    goto :goto_14

    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_15

    .restart local v5    # "_arg4":I
    :cond_2b
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/NetworkMisc;
    goto :goto_16

    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_34
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v7

    .local v7, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_17

    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_18

    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":Landroid/os/IBinder;
    .restart local v5    # "_arg4":I
    .restart local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_2e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :sswitch_35
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_1a
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_31

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_2f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_19

    :cond_30
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_1a

    .restart local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_31
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :sswitch_36
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1b

    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_37
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v7

    .restart local v7    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_35

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v8}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_33
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_1c

    :cond_34
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_1d

    .restart local v3    # "_arg2":Landroid/os/IBinder;
    .restart local v7    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_result":Landroid/net/NetworkRequest;
    :sswitch_38
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_1f
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_1e

    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_1f

    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_39
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .local v1, "_arg0":Landroid/net/NetworkRequest;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :cond_38
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_20

    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    move v2, v8

    .local v2, "_arg1":Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    move v3, v8

    .local v3, "_arg2":Z
    :goto_23
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_21

    :cond_3a
    move v2, v9

    goto :goto_22

    .restart local v2    # "_arg1":Z
    :cond_3b
    move v3, v9

    goto :goto_23

    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :sswitch_3b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_3c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3c

    move v9, v8

    :cond_3c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_3d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3d

    move v9, v8

    :cond_3d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_3e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    .local v1, "_arg0":[Landroid/net/Network;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3e

    move v9, v8

    :cond_3e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[Landroid/net/Network;
    .end local v7    # "_result":Z
    :sswitch_3f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
