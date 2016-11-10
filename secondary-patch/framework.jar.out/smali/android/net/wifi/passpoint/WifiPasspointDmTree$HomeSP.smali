.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeSP"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FQDN:Ljava/lang/String;

.field public FriendlyName:Ljava/lang/String;

.field public IconURL:Ljava/lang/String;

.field public RoamingConsortiumOI:Ljava/lang/String;

.field public homeOIList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field

.field public networkID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;",
            ">;"
        }
    .end annotation
.end field

.field public otherHomePartners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "homeoi"    # Ljava/lang/String;
    .param p3, "required"    # Z

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createNetworkID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "hessid"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createOtherHomePartners(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->IconURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->RoamingConsortiumOI:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->IconURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->RoamingConsortiumOI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
