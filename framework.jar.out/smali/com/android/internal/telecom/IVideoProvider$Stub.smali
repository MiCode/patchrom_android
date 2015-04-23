.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final TRANSACTION_addVideoCallback:I = 0x1

.field static final TRANSACTION_removeVideoCallback:I = 0x2

.field static final TRANSACTION_requestCallDataUsage:I = 0xb

.field static final TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final TRANSACTION_setCamera:I = 0x3

.field static final TRANSACTION_setDeviceOrientation:I = 0x6

.field static final TRANSACTION_setDisplaySurface:I = 0x5

.field static final TRANSACTION_setPauseImage:I = 0xc

.field static final TRANSACTION_setPreviewSurface:I = 0x4

.field static final TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telecom.IVideoProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IVideoProvider;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .local v0, "_arg0":Landroid/view/Surface;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_5
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .restart local v0    # "_arg0":Landroid/view/Surface;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_6
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    goto :goto_0

    .end local v0    # "_arg0":F
    :sswitch_8
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .local v0, "_arg0":Landroid/telecom/VideoProfile;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .local v1, "_arg1":Landroid/telecom/VideoProfile;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_4

    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :sswitch_9
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_5

    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_a
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
