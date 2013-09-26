.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 0
    .parameter "sn"
    .parameter "rt"
    .parameter "tr"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-void
.end method

.method static synthetic access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/DnsSdTxtRecord;)Landroid/net/nsd/DnsSdTxtRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/nsd/NsdServiceInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()Landroid/net/nsd/DnsSdTxtRecord;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-object v0
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "s"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "p"

    .prologue
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public setTxtRecord(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1
    .parameter "t"

    .prologue
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord;

    invoke-direct {v0, p1}, Landroid/net/nsd/DnsSdTxtRecord;-><init>(Landroid/net/nsd/DnsSdTxtRecord;)V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "txtRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
