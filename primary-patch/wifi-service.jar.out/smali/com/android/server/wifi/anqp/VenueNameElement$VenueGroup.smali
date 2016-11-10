.class public final enum Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
.super Ljava/lang/Enum;
.source "VenueNameElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/VenueNameElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VenueGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Unspecified"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Assembly"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Business"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Educational"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "FactoryIndustrial"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Institutional"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Mercantile"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Residential"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Storage"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "UtilityMiscellaneous"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Vehicular"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Outdoor"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const-string v1, "Reserved"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->$VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->$VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method
