.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final TRANSACTION_onConfigure:I = 0x5

.field static final TRANSACTION_onDeviceLocked:I = 0x3

.field static final TRANSACTION_onDeviceUnlocked:I = 0x4

.field static final TRANSACTION_onTrustTimeout:I = 0x2

.field static final TRANSACTION_onUnlockAttempt:I = 0x1

.field static final TRANSACTION_setCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/trust/ITrustAgentService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    goto :goto_0

    :sswitch_3
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    goto :goto_0

    :sswitch_4
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    goto :goto_0

    :sswitch_5
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_6
    const-string v4, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v0

    .local v0, "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-virtual {p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    goto :goto_0

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
