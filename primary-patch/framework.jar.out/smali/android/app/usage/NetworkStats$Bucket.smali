.class public Landroid/app/usage/NetworkStats$Bucket;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field public static final STATE_ALL:I = -0x1

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_FOREGROUND:I = 0x2

.field public static final UID_ALL:I = -0x1

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private mBeginTimeStamp:J

.field private mEndTimeStamp:J

.field private mRxBytes:J

.field private mRxPackets:J

.field private mState:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return p1
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return p1
.end method

.method static synthetic access$300(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide p1
.end method

.method static synthetic access$702(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide p1
.end method

.method static synthetic access$802(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStats$Bucket;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide p1
.end method

.method private static convertState(I)I
    .locals 1
    .param p0, "networkStatsSet"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertUid(I)I
    .locals 0
    .param p0, "uid"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    .end local p0    # "uid":I
    :goto_0
    return p0

    .restart local p0    # "uid":I
    :pswitch_0
    const/4 p0, -0x4

    goto :goto_0

    :pswitch_1
    const/4 p0, -0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEndTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getRxBytes()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return v0
.end method

.method public getTxBytes()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return v0
.end method
