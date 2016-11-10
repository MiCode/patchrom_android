.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x12

.field static final TRANSACTION_timeShiftPause:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0xf

.field static final TRANSACTION_timeShiftSeekTo:I = 0x10

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x11

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/tv/ITvInputSession;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    goto :goto_0

    :sswitch_2
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .local v0, "_arg0":Landroid/view/Surface;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    goto :goto_0

    .end local v0    # "_arg0":F
    :sswitch_6
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .local v0, "_arg0":Z
    :cond_4
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :sswitch_8
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_5

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :sswitch_b
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_6

    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :sswitch_c
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    goto/16 :goto_0

    .end local v0    # "_arg0":J
    :sswitch_11
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlaybackParams;

    .local v0, "_arg0":Landroid/media/PlaybackParams;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/media/PlaybackParams;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/PlaybackParams;
    goto :goto_7

    .end local v0    # "_arg0":Landroid/media/PlaybackParams;
    :sswitch_12
    const-string v5, "android.media.tv.ITvInputSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .local v0, "_arg0":Z
    :cond_9
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    goto/16 :goto_0

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
