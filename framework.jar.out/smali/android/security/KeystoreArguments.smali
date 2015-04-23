.class public Landroid/security/KeystoreArguments;
.super Ljava/lang/Object;
.source "KeystoreArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/KeystoreArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public args:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/security/KeystoreArguments$1;

    invoke-direct {v0}, Landroid/security/KeystoreArguments$1;-><init>()V

    sput-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [[B

    iput-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/KeystoreArguments$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/security/KeystoreArguments$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([[B)V
    .locals 0
    .param p1, "args"    # [[B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeystoreArguments;->args:[[B

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "length":I
    new-array v2, v1, [[B

    iput-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v4, p0, Landroid/security/KeystoreArguments;->args:[[B

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/security/KeystoreArguments;->args:[[B

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/security/KeystoreArguments;->args:[[B

    .local v1, "arr$":[[B
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .local v0, "arg":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
