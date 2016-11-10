.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;
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
    name = "Policy"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maximumBSSLoadValue:Ljava/lang/String;

.field public minBackhaulThreshold:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

.field public preferredRoamingPartnerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field

.field public requiredProtoPortTuple:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field

.field public sPExclusionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public createMinBackhaulThreshold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dl"    # Ljava/lang/String;
    .param p4, "ul"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createPreferredRoamingPartnerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createRequiredProtoPortTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createSPExclusionList(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

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
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
