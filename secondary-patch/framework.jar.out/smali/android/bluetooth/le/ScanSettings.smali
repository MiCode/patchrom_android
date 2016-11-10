.class public final Landroid/bluetooth/le/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1

.field public static final SCAN_RESULT_TYPE_ABBREVIATED:I = 0x1

.field public static final SCAN_RESULT_TYPE_FULL:I


# instance fields
.field private mCallbackType:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/le/ScanSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIJII)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "scanResultType"    # I
    .param p4, "reportDelayMillis"    # J
    .param p6, "matchMode"    # I
    .param p7, "numOfMatchesPerFilter"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    iput p2, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    iput p3, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    iput-wide p4, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    iput p7, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    iput p6, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    return-void
.end method

.method synthetic constructor <init>(IIIJIILandroid/bluetooth/le/ScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Landroid/bluetooth/le/ScanSettings$1;

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/le/ScanSettings$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getMatchMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    return v0
.end method

.method public getScanResultType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
