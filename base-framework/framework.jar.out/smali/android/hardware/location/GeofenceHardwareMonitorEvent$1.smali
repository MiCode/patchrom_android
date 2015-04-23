.class final Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-class v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "monitoringType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "monitoringStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "sourceTechnologies":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "location":Landroid/location/Location;
    new-instance v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-direct {v5, v3, v2, v4, v1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    move-result-object v0

    return-object v0
.end method
