.class public final enum Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
.super Ljava/lang/Enum;
.source "HSWanMetricsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSWanMetricsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field public static final enum Down:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field public static final enum Test:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field public static final enum Up:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const-string v1, "Reserved"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Reserved:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    new-instance v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const-string v1, "Up"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Up:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    new-instance v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const-string v1, "Down"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Down:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    new-instance v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const-string v1, "Test"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Test:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    sget-object v1, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Reserved:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Up:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Down:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Test:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    return-object v0
.end method
