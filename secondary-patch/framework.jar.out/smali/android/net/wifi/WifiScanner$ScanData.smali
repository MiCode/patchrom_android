.class public Landroid/net/wifi/WifiScanner$ScanData;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v3, v3

    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v2, v3, v0

    .local v2, "result":Landroid/net/wifi/ScanResult;
    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-direct {v1, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .local v1, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "newResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
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

.method public getFlags()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v1, v2, v0

    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method
