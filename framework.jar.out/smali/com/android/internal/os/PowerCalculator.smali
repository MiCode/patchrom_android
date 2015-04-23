.class public abstract Lcom/android/internal/os/PowerCalculator;
.super Ljava/lang/Object;
.source "PowerCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    return-void
.end method
