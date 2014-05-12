.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .locals 0
    .parameter "geofenceId"
    .parameter "status"

    .prologue
    return-void
.end method

.method public onGeofencePause(II)V
    .locals 0
    .parameter "geofenceId"
    .parameter "status"

    .prologue
    return-void
.end method

.method public onGeofenceRemove(II)V
    .locals 0
    .parameter "geofenceId"
    .parameter "status"

    .prologue
    return-void
.end method

.method public onGeofenceResume(II)V
    .locals 0
    .parameter "geofenceId"
    .parameter "status"

    .prologue
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 0
    .parameter "geofenceId"
    .parameter "transition"
    .parameter "location"
    .parameter "timestamp"
    .parameter "monitoringType"

    .prologue
    return-void
.end method
