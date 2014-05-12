.class public Landroid/net/WifiLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "WifiLinkQualityInfo.java"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mRssi:I

.field private mTxBad:J

.field private mTxGood:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    const v0, 0x7fffffff

    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    iput-wide v1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    iput-wide v1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 3
    .parameter "in"

    .prologue
    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

    .local v0, li:Landroid/net/WifiLinkQualityInfo;
    invoke-virtual {v0, p0}, Landroid/net/WifiLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public getTxBad()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-wide v0
.end method

.method public getTxGood()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .parameter "bssid"

    .prologue
    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public setTxBad(J)V
    .locals 0
    .parameter "txBad"

    .prologue
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public setTxGood(J)V
    .locals 0
    .parameter "txGood"

    .prologue
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
