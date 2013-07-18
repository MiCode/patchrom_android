.class final Landroid/app/SearchEngineInfo$1;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchEngineInfo;
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
        "Landroid/app/SearchEngineInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "in"

    .prologue
    new-instance v0, Landroid/app/SearchEngineInfo;

    invoke-direct {v0, p1}, Landroid/app/SearchEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SearchEngineInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/app/SearchEngineInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SearchEngineInfo$1;->newArray(I)[Landroid/app/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method
