.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 3
    .param p0, "raf"    # I

    .prologue
    const v2, 0x10006

    const v1, 0x8e08

    and-int v0, v2, p0

    if-lez v0, :cond_0

    or-int/2addr p0, v2

    :cond_0
    and-int v0, v1, p0

    if-lez v0, :cond_1

    or-int/2addr p0, v1

    :cond_1
    and-int/lit8 v0, p0, 0x70

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x70

    :cond_2
    and-int/lit16 v0, p0, 0x3180

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x3180

    :cond_3
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .local v0, "type":I
    :goto_0
    return v0

    .end local v0    # "type":I
    :sswitch_0
    const/4 v0, 0x0

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_1
    const/4 v0, 0x1

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_2
    const/4 v0, 0x2

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_3
    const/4 v0, 0x4

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_4
    const/16 v0, 0x8

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_5
    const/16 v0, 0x9

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_6
    const/16 v0, 0xa

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_7
    const/16 v0, 0xb

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_8
    const/16 v0, 0xc

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_9
    const/4 v0, 0x5

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_a
    const/4 v0, 0x6

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_b
    const/4 v0, 0x7

    .restart local v0    # "type":I
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0x3180 -> :sswitch_a
        0x31f0 -> :sswitch_3
        0x4000 -> :sswitch_7
        0x71f0 -> :sswitch_4
        0x8e08 -> :sswitch_2
        0xce08 -> :sswitch_8
        0x10006 -> :sswitch_1
        0x18e0e -> :sswitch_0
        0x1bffe -> :sswitch_b
        0x1ce0e -> :sswitch_5
        0x1fffe -> :sswitch_6
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    .local v0, "raf":I
    :goto_0
    return v0

    .end local v0    # "raf":I
    :pswitch_0
    const v0, 0x18e0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_1
    const v0, 0x10006

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_2
    const v0, 0x8e08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_3
    const v0, 0x18e0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_4
    const/16 v0, 0x31f0

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_5
    const/16 v0, 0x71f0

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_6
    const v0, 0x1ce0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_7
    const v0, 0x1fffe

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_8
    const/16 v0, 0x4000

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_9
    const v0, 0xce08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_a
    const/16 v0, 0x70

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_b
    const/16 v0, 0x3180

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_c
    const v0, 0x1bffe

    .restart local v0    # "raf":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 8
    .param p0, "rafList"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v7, "\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "rafs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "result":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "raf":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v4

    .local v4, "rafType":I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .end local v3    # "raf":Ljava/lang/String;
    .end local v4    # "rafType":I
    :goto_1
    return v4

    .restart local v3    # "raf":Ljava/lang/String;
    .restart local v4    # "rafType":I
    :cond_0
    or-int/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "raf":Ljava/lang/String;
    .end local v4    # "rafType":I
    :cond_1
    move v4, v6

    goto :goto_1
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 7
    .param p0, "rafString"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    :goto_1
    :pswitch_0
    return v0

    :sswitch_0
    const-string v6, "GPRS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string v6, "EDGE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "UMTS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string v6, "IS95A"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "IS95B"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_5
    const-string v6, "1XRTT"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "EVDO_0"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "EVDO_A"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "HSDPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_9
    const-string v6, "HSUPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "HSPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "EVDO_B"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "EHRPD"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "LTE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "HSPAP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "GSM"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "TD_SCDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "HS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "CDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "EVDO"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "WCDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    goto/16 :goto_1

    :pswitch_2
    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    move v0, v3

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x20

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x40

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x80

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x100

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x200

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x400

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x800

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x1000

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x2000

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x4000

    goto/16 :goto_1

    :pswitch_e
    const v0, 0x8000

    goto/16 :goto_1

    :pswitch_f
    const/high16 v0, 0x10000

    goto/16 :goto_1

    :pswitch_10
    const/high16 v0, 0x20000

    goto/16 :goto_1

    :pswitch_11
    const v0, 0x8e00

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x70

    goto/16 :goto_1

    :pswitch_13
    const/16 v0, 0x3180

    goto/16 :goto_1

    :pswitch_14
    const v0, 0x8e08

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x36280a07 -> :sswitch_10
        0x90b -> :sswitch_11
        0x114e1 -> :sswitch_f
        0x127bd -> :sswitch_d
        0x1f7db5 -> :sswitch_12
        0x2065bd -> :sswitch_1
        0x20a8fc -> :sswitch_13
        0x217cea -> :sswitch_0
        0x21fc3c -> :sswitch_a
        0x27cf17 -> :sswitch_2
        0x2dbbeab -> :sswitch_5
        0x3ee4e43 -> :sswitch_c
        0x41d604a -> :sswitch_8
        0x41d8b94 -> :sswitch_e
        0x41da01b -> :sswitch_9
        0x42b4b3b -> :sswitch_3
        0x42b4b3c -> :sswitch_4
        0x4e97a8c -> :sswitch_14
        0x7a9a65ad -> :sswitch_6
        0x7a9a65be -> :sswitch_7
        0x7a9a65bf -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRadioAccessFamily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
