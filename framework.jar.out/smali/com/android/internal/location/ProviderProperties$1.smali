.class final Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .locals 12
    .parameter "in"

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_0

    move v1, v0

    .local v1, requiresNetwork:Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_1

    move v2, v0

    .local v2, requiresSatellite:Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_2

    move v3, v0

    .local v3, requiresCell:Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_3

    move v4, v0

    .local v4, hasMonetaryCost:Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_4

    move v5, v0

    .local v5, supportsAltitude:Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_5

    move v6, v0

    .local v6, supportsSpeed:Z
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_6

    move v7, v0

    .local v7, supportsBearing:Z
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, powerRequirement:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, accuracy:I
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object v0

    .end local v1           #requiresNetwork:Z
    .end local v2           #requiresSatellite:Z
    .end local v3           #requiresCell:Z
    .end local v4           #hasMonetaryCost:Z
    .end local v5           #supportsAltitude:Z
    .end local v6           #supportsSpeed:Z
    .end local v7           #supportsBearing:Z
    .end local v8           #powerRequirement:I
    .end local v9           #accuracy:I
    :cond_0
    move v1, v10

    goto :goto_0

    .restart local v1       #requiresNetwork:Z
    :cond_1
    move v2, v10

    goto :goto_1

    .restart local v2       #requiresSatellite:Z
    :cond_2
    move v3, v10

    goto :goto_2

    .restart local v3       #requiresCell:Z
    :cond_3
    move v4, v10

    goto :goto_3

    .restart local v4       #hasMonetaryCost:Z
    :cond_4
    move v5, v10

    goto :goto_4

    .restart local v5       #supportsAltitude:Z
    :cond_5
    move v6, v10

    goto :goto_5

    .restart local v6       #supportsSpeed:Z
    :cond_6
    move v7, v10

    goto :goto_6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method
