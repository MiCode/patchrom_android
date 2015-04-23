.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-void
.end method

.method private queryProperty(I)J
    .locals 5
    .param p1, "id"    # I

    .prologue
    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v4, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/BatteryProperty;

    invoke-direct {v1}, Landroid/os/BatteryProperty;-><init>()V

    .local v1, "prop":Landroid/os/BatteryProperty;
    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v4, p1, v1}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/os/BatteryProperty;->getLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .local v2, "ret":J
    goto :goto_0

    .end local v2    # "ret":J
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .restart local v2    # "ret":J
    goto :goto_0

    .end local v1    # "prop":Landroid/os/BatteryProperty;
    .end local v2    # "ret":J
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v2, -0x8000000000000000L

    .restart local v2    # "ret":J
    goto :goto_0
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCharging()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method
