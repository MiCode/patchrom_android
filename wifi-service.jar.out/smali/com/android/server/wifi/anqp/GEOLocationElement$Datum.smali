.class public final enum Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
.super Ljava/lang/Enum;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    const-string v1, "WGS84"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    const-string v1, "NAD83Land"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    const-string v1, "NAD83Water"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    return-object v0
.end method
