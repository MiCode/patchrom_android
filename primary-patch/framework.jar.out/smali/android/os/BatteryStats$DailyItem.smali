.class public final Landroid/os/BatteryStats$DailyItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyItem"
.end annotation


# instance fields
.field public mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

.field public mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

.field public mEndTime:J

.field public mPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
