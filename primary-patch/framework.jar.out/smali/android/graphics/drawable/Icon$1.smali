.class final Landroid/graphics/drawable/Icon$1;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Icon;
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
        "Landroid/graphics/drawable/Icon;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/drawable/Icon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon$1;->newArray(I)[Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method
