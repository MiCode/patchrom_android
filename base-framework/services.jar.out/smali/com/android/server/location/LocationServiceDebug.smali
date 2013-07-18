.class public Lcom/android/server/location/LocationServiceDebug;
.super Ljava/lang/Object;
.source "LocationServiceDebug.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEBUG_GEOPROVIDERPROXY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_LOCATMANAGERSERVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_LOCATPROVIDERPROXY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_LOCATTELEPHONY:Z = false

.field private static final TAG:Ljava/lang/String; = "LocationService"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const-string v0, "LocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationServiceDebug;->DEBUG_LOCATMANAGERSERVICE:Z

    const-string v0, "LocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationServiceDebug;->DEBUG_LOCATPROVIDERPROXY:Z

    const-string v0, "LocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationServiceDebug;->DEBUG_GEOPROVIDERPROXY:Z

    const-string v0, "LocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationServiceDebug;->DEBUG_LOCATTELEPHONY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
