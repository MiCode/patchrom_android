.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1d

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1c

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .local v0, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsStreamMediaProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_1

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_2
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_2

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_3
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_3

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_4
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_4

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_5
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_5

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_6

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_7
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_7

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_8

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_9
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_9

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_a
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_a

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_b
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .local v2, "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_b
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_b

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_d
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_c

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_e
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_d

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_f
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_e

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_10
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_f

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_11
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_10
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_10

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_12
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_11

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_13
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_12
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_12

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_14
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_15
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_13
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_13

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_16
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_17
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_14
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_14

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_18
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsConferenceState;

    .local v1, "_arg1":Lcom/android/ims/ImsConferenceState;
    :goto_15
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    goto :goto_15

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :sswitch_19
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .local v3, "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_16
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_16

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1b
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_17
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_17

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1c
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    :sswitch_1d
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    move v1, v4

    .local v1, "_arg1":Z
    :goto_18
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
