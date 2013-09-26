.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final TRANSACTION_getFeaturesForLanguage:I = 0x9

.field static final TRANSACTION_getLanguage:I = 0x7

.field static final TRANSACTION_isLanguageAvailable:I = 0x8

.field static final TRANSACTION_isSpeaking:I = 0x5

.field static final TRANSACTION_loadLanguage:I = 0xa

.field static final TRANSACTION_playAudio:I = 0x3

.field static final TRANSACTION_playSilence:I = 0x4

.field static final TRANSACTION_setCallback:I = 0xb

.field static final TRANSACTION_speak:I = 0x1

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_synthesizeToFile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.speech.tts.ITextToSpeechService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/speech/tts/ITextToSpeechService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, _arg3:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v5           #_arg3:Landroid/os/Bundle;
    .end local v6           #_result:I
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/Bundle;
    goto :goto_1

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .restart local v5       #_arg3:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFile(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v5           #_arg3:Landroid/os/Bundle;
    .end local v6           #_result:I
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/Bundle;
    goto :goto_2

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, _arg1:Landroid/net/Uri;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .restart local v5       #_arg3:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/Bundle;
    .end local v6           #_result:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/Uri;
    goto :goto_3

    .restart local v4       #_arg2:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/Bundle;
    goto :goto_4

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .restart local v5       #_arg3:Landroid/os/Bundle;
    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILandroid/os/Bundle;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_arg3:Landroid/os/Bundle;
    .end local v6           #_result:I
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/Bundle;
    goto :goto_5

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:J
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    move v0, v7

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .end local v6           #_result:Z
    :sswitch_6
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v6           #_result:I
    :sswitch_7
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object v6

    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_b
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v2

    .local v2, _arg1:Landroid/speech/tts/ITextToSpeechCallback;
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
