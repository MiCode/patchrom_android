.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    const/16 v0, 0x7530

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    const/16 v0, 0x1388

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 7
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"

    .prologue
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    .local v0, geofenceRequest:Landroid/hardware/location/GeofenceHardwareRequest;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    return-object v0
.end method

.method private setCircularGeofence(DDD)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"

    .prologue
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return v0
.end method

.method public setLastTransition(I)V
    .locals 0
    .parameter "lastTransition"

    .prologue
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return-void
.end method

.method public setMonitorTransitions(I)V
    .locals 0
    .parameter "monitorTransitions"

    .prologue
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .locals 0
    .parameter "notificationResponsiveness"

    .prologue
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return-void
.end method

.method public setUnknownTimer(I)V
    .locals 0
    .parameter "unknownTimer"

    .prologue
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return-void
.end method
