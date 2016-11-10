.class public Lcom/android/server/wifi/anqp/VenueNameElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "VenueNameElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;,
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    }
.end annotation


# static fields
.field private static final PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

.field private static final sGroupBases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v6, Ljava/util/EnumMap;

    const-class v7, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-direct {v6, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v6, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    const/16 v6, 0xc

    new-array v6, v6, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedAssembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedBusiness:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedEducational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedFactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedInstitutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedMercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedResidential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedStorage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/16 v7, 0x9

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedUtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedVehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    const/16 v7, 0xb

    sget-object v8, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedOutdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v8, v6, v7

    sput-object v6, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v2, 0x0

    .local v2, "index":I
    sget-object v0, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .local v0, "arr$":[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .local v5, "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    sget-object v6, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v7

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v7, v7, v3

    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .end local v5    # "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
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

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Runt Venue Name"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .local v0, "group":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .local v1, "type":I
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    new-instance v3, Lcom/android/server/wifi/anqp/I18Name;

    invoke-direct {v3, p2}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_2

    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VenueName{m_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
