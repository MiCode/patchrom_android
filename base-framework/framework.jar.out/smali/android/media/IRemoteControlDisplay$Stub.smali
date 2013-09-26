.class public abstract Landroid/media/IRemoteControlDisplay$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlDisplay.java"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlDisplay"

.field static final TRANSACTION_setAllMetadata:I = 0x6

.field static final TRANSACTION_setArtwork:I = 0x5

.field static final TRANSACTION_setCurrentClientId:I = 0x1

.field static final TRANSACTION_setMetadata:I = 0x4

.field static final TRANSACTION_setPlaybackState:I = 0x2

.field static final TRANSACTION_setTransportControlFlags:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IRemoteControlDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, _arg1:Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IRemoteControlDisplay$Stub;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    goto :goto_0

    .end local v1           #_arg1:Landroid/app/PendingIntent;
    .end local v2           #_arg2:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/app/PendingIntent;
    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/app/PendingIntent;
    :sswitch_2
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, _arg2:J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IRemoteControlDisplay$Stub;->setPlaybackState(IIJ)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:J
    :sswitch_3
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setTransportControlFlags(II)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, _arg1:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setMetadata(ILandroid/os/Bundle;)V

    goto :goto_0

    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_3

    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_5
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .local v1, _arg1:Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setArtwork(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Bitmap;
    goto :goto_4

    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    :sswitch_6
    const-string v5, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, _arg1:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, _arg2:Landroid/graphics/Bitmap;
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IRemoteControlDisplay$Stub;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .end local v1           #_arg1:Landroid/os/Bundle;
    .end local v2           #_arg2:Landroid/graphics/Bitmap;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/graphics/Bitmap;
    goto :goto_6

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
