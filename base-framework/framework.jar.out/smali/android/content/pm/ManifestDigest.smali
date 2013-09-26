.class public Landroid/content/pm/ManifestDigest;
.super Ljava/lang/Object;
.source "ManifestDigest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ManifestDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGEST_TYPES:[Ljava/lang/String; = null

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ManifestDigest {mDigest="


# instance fields
.field private final mDigest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHA1-Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHA-Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MD5-Digest"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/ManifestDigest;->DIGEST_TYPES:[Ljava/lang/String;

    new-instance v0, Landroid/content/pm/ManifestDigest$1;

    invoke-direct {v0}, Landroid/content/pm/ManifestDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ManifestDigest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ManifestDigest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .parameter "digest"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    return-void
.end method

.method static fromAttributes(Ljava/util/jar/Attributes;)Landroid/content/pm/ManifestDigest;
    .locals 6
    .parameter "attributes"

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v1, 0x0

    .local v1, encodedDigest:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Landroid/content/pm/ManifestDigest;->DIGEST_TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    sget-object v5, Landroid/content/pm/ManifestDigest;->DIGEST_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    move-object v1, v3

    .end local v3           #value:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, digest:[B
    new-instance v4, Landroid/content/pm/ManifestDigest;

    invoke-direct {v4, v0}, Landroid/content/pm/ManifestDigest;-><init>([B)V

    goto :goto_0

    .end local v0           #digest:[B
    .restart local v3       #value:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/content/pm/ManifestDigest;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ManifestDigest;

    .local v0, other:Landroid/content/pm/ManifestDigest;
    if-eq p0, v0, :cond_2

    iget-object v2, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    iget-object v3, v0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ManifestDigest {mDigest="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "ManifestDigest {mDigest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    array-length v0, v4

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    aget-byte v1, v4, v2

    .local v1, b:B
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #b:B
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
