.class public final Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final CAPABILITY_CALL_SUBJECT:I = 0x40

.field public static final CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final CAPABILITY_MULTI_USER:I = 0x20

.field public static final CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_HIGHLIGHT_COLOR:I = 0x0

.field public static final NO_ICON_TINT:I = 0x0

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mCapabilities:I

.field private final mHighlightColor:I

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mShortDescription:Ljava/lang/CharSequence;

.field private final mSubscriptionAddress:Landroid/net/Uri;

.field private final mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/PhoneAccount$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return-void

    :cond_0
    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/PhoneAccount$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 1
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p10, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p9, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    iput-object p5, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    iput p6, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    iput-boolean p10, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/graphics/drawable/Icon;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/CharSequence;
    .param p8, "x7"    # Ljava/lang/CharSequence;
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # Z
    .param p11, "x10"    # Landroid/telecom/PhoneAccount$1;

    .prologue
    invoke-direct/range {p0 .. p10}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    return-void
.end method

.method public static builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubscriptionAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getSupportedUriSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    return-object v0
.end method

.method public hasCapabilities(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return-void
.end method

.method public supportsUriScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x58

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] PhoneAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Schemes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x20

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget v2, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-boolean v2, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v2, :cond_4

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method
