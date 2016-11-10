.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
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
    name = "CredentialInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aAAServerTrustRoot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field

.field public credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

.field public credentialPriority:Ljava/lang/String;

.field public extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

.field public homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

.field public nodeName:Ljava/lang/String;

.field public policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

.field public subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

.field public subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "nn"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createAAAServerTrustRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fp"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
