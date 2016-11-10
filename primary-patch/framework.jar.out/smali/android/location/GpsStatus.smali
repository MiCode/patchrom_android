.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsStatus;

    .prologue
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FIII)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_5

    aget v1, p2, v0

    .local v1, "prn":I
    add-int/lit8 v4, v1, -0x1

    shl-int v2, v5, v4

    .local v2, "prnShift":I
    if-lez v1, :cond_1

    const/16 v4, 0xff

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_0

    new-instance v3, Landroid/location/GpsSatellite;

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v1}, Landroid/location/GpsSatellite;-><init>(I)V

    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    aget v4, p3, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    aget v4, p4, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    aget v4, p5, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    and-int v4, p6, v2

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    and-int v4, p7, v2

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    and-int v4, p8, v2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v6

    goto :goto_3

    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_5
    monitor-exit p0

    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 9
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v8

    iput v8, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    iget-object v3, p1, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .local v3, "otherSatellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "otherSatellitesCount":I
    const/4 v6, 0x0

    .local v6, "satelliteIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .local v1, "otherSatellite":Landroid/location/GpsSatellite;
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .local v2, "otherSatellitePrn":I
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "satellitesCount":I
    :goto_1
    if-ge v6, v7, :cond_0

    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GpsSatellite;

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ge v8, v2, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .local v5, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ne v8, v2, :cond_1

    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/location/GpsSatellite;

    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    new-instance v5, Landroid/location/GpsSatellite;

    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .end local v1    # "otherSatellite":Landroid/location/GpsSatellite;
    .end local v2    # "otherSatellitePrn":I
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    .end local v7    # "satellitesCount":I
    :cond_3
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return-void
.end method
