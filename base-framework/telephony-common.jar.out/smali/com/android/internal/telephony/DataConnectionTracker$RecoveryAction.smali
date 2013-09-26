.class public Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;
.super Ljava/lang/Object;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecoveryAction"
.end annotation


# static fields
.field public static final CLEANUP:I = 0x1

.field public static final GET_DATA_CALL_LIST:I = 0x0

.field public static final RADIO_RESTART:I = 0x3

.field public static final RADIO_RESTART_WITH_PROP:I = 0x4

.field public static final REREGISTER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;->isAggressiveRecovery(I)Z

    move-result v0

    return v0
.end method

.method private static isAggressiveRecovery(I)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
