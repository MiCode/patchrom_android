.class public Lcom/android/server/wifi/anqp/CivicLocationElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "CivicLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;,
        Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_CODE:I = 0x20

.field public static final ADDITIONAL_LOCATION:I = 0x16

.field public static final BLOCK:I = 0x5

.field public static final BRANCH_ROAD:I = 0x24

.field public static final BUILDING:I = 0x19

.field public static final CITY:I = 0x3

.field public static final COUNTY_DISTRICT:I = 0x2

.field public static final DIVISION_BOROUGH:I = 0x4

.field public static final FLOOR:I = 0x1b

.field private static final GEOCONF_CIVIC4:I = 0x63

.field public static final HOUSE_NUMBER:I = 0x13

.field public static final HOUSE_NUMBER_SUFFIX:I = 0x14

.field public static final LANDMARK:I = 0x15

.field public static final LANGUAGE:I = 0x0

.field public static final LEADING_STREET_SUFFIX:I = 0x11

.field public static final NAME:I = 0x17

.field public static final POSTAL_COMMUNITY:I = 0x1e

.field public static final POSTAL_ZIP:I = 0x18

.field public static final PO_BOX:I = 0x1f

.field public static final PRIMARY_ROAD:I = 0x22

.field public static final RESERVED:I = 0xff

.field private static final RFC4776:I = 0x0

.field public static final ROAD_SECTION:I = 0x23

.field public static final ROOM:I = 0x1c

.field public static final SCRIPT:I = 0x80

.field public static final SEAT_DESK:I = 0x21

.field public static final STATE_PROVINCE:I = 0x1

.field public static final STREET_DIRECTION:I = 0x10

.field public static final STREET_GROUP:I = 0x6

.field public static final STREET_NAME_POST_MOD:I = 0x27

.field public static final STREET_NAME_PRE_MOD:I = 0x26

.field public static final STREET_SUFFIX:I = 0x12

.field public static final SUB_BRANCH_ROAD:I = 0x25

.field public static final TYPE:I = 0x1d

.field public static final UNIT:I = 0x1a

.field private static final s_caTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v9, 0x6

    if-ge v8, v9, :cond_0

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Runt civic location:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v6, v8, 0xff

    .local v6, "locType":I
    if-eqz v6, :cond_1

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad Civic location type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .local v5, "locSubType":I
    const/16 v8, 0x63

    if-eq v5, v8, :cond_2

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected Civic location sub-type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (cannot handle sub elements)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v4, v8, 0xff

    .local v4, "length":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v4, v8, :cond_3

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid CA type length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v7, v8, 0xff

    .local v7, "what":I
    invoke-static {}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->values()[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    invoke-static {}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->values()[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    move-result-object v8

    aget-object v8, v8, v7

    :goto_0
    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    const/4 v8, 0x2

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p2, v8, v9}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    :cond_4
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .local v1, "caTypeNumber":I
    sget-object v8, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    .local v0, "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .local v2, "caValLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v2, v8, :cond_6

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad CA value length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .end local v1    # "caTypeNumber":I
    .end local v2    # "caValLen":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .restart local v0    # "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .restart local v1    # "caTypeNumber":I
    .restart local v2    # "caValLen":I
    :cond_6
    new-array v3, v2, [B

    .local v3, "caValOctets":[B
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .end local v1    # "caTypeNumber":I
    .end local v2    # "caValLen":I
    .end local v3    # "caValOctets":[B
    :cond_7
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocationType()Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CivicLocation{mLocationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
