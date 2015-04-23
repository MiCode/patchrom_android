.class Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharIterator"
.end annotation


# instance fields
.field private mHex:I

.field private mPosition:I

.field private final mString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->next()C

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasDoubleHex()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->nextDoubleHex()I

    move-result v0

    return v0
.end method

.method private hasDoubleHex()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v0

    .local v0, "nh":I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v1

    .local v1, "nl":I
    if-ltz v1, :cond_0

    iget v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    move v2, v3

    goto :goto_0
.end method

.method private hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()C
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private nextDoubleHex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    return v0
.end method
