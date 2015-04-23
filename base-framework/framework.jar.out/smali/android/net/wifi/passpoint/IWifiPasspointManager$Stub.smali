.class public abstract Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;
.super Landroid/os/Binder;
.source "IWifiPasspointManager.java"

# interfaces
.implements Landroid/net/wifi/passpoint/IWifiPasspointManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/IWifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.passpoint.IWifiPasspointManager"

.field static final TRANSACTION_addCredential:I = 0x5

.field static final TRANSACTION_getCredentials:I = 0x4

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getPasspointState:I = 0x2

.field static final TRANSACTION_removeCredential:I = 0x7

.field static final TRANSACTION_requestCredentialMatch:I = 0x3

.field static final TRANSACTION_updateCredential:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/passpoint/IWifiPasspointManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v5, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    .local v2, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v6}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string v5, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getPasspointState()I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_result":I
    :sswitch_3
    const-string v5, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->requestCredentialMatch(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    :sswitch_4
    const-string v5, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getCredentials()Ljava/util/List;

    move-result-object v3

    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    :sswitch_5
    const-string v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .local v0, "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .end local v2    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_6
    const-string v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v2

    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .end local v2    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_7
    const-string v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v2

    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .end local v2    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
