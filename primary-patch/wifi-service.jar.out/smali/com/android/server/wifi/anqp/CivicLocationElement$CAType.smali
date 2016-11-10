.class public final enum Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
.super Ljava/lang/Enum;
.source "CivicLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/CivicLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Language"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StateProvince"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "CountyDistrict"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "City"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "DivisionBorough"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Block"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StreetGroup"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StreetDirection"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "LeadingStreetSuffix"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StreetSuffix"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "HouseNumber"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "HouseNumberSuffix"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Landmark"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "AdditionalLocation"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Name"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "PostalZIP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Building"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Unit"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Floor"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Room"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Type"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "PostalCommunity"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "POBox"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "AdditionalCode"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "SeatDesk"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "PrimaryRoad"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "RoadSection"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "BranchRoad"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "SubBranchRoad"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StreetNamePreMod"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "StreetNamePostMod"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Script"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const-string v1, "Reserved"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    invoke-virtual {v0}, [Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    return-object v0
.end method
