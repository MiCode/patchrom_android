.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "PooledStringReader.java"


# instance fields
.field private final mIn:Landroid/os/Parcel;

.field private final mPool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStringCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aget-object v1, v2, v0

    :goto_0
    return-object v1

    :cond_0
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto :goto_0
.end method
