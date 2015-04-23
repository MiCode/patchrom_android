.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/Voicemail$1;

    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    sput-object v0, Landroid/telecom/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/Voicemail$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "id"    # Ljava/lang/Long;
    .param p5, "duration"    # Ljava/lang/Long;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "providerData"    # Ljava/lang/String;
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "isRead"    # Ljava/lang/Boolean;
    .param p10, "hasContent"    # Ljava/lang/Boolean;
    .param p11, "transcription"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    iput-object p2, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p4, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    iput-object p5, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    iput-object p6, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    iput-object p7, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    iput-object p8, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    iput-object p9, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    iput-object p10, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    iput-object p11, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Long;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "x3"    # Ljava/lang/Long;
    .param p5, "x4"    # Ljava/lang/Long;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Landroid/net/Uri;
    .param p9, "x8"    # Ljava/lang/Boolean;
    .param p10, "x9"    # Ljava/lang/Boolean;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Landroid/telecom/Voicemail$1;

    .prologue
    invoke-direct/range {p0 .. p11}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2
    .param p0, "id"    # J
    .param p2, "sourceData"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$1;)V

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
