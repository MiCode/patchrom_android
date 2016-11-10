.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

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

.field private final mSatellitesCount:I

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "satellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    :goto_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :goto_1
    return v1

    .restart local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    goto :goto_0

    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 3

    .prologue
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    return-object v0

    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
