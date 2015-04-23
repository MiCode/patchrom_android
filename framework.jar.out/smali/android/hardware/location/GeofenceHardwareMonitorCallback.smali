.class public abstract Landroid/hardware/location/GeofenceHardwareMonitorCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 0
    .param p1, "monitoringType"    # I
    .param p2, "available"    # Z
    .param p3, "location"    # Landroid/location/Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .prologue
    return-void
.end method
