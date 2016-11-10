.class public final enum Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
.super Ljava/lang/Enum;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPv6Availability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const-string v1, "NotAvailable"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const-string v1, "Available"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    new-instance v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const-string v1, "Reserved"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->$VALUES:[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    return-object v0
.end method
