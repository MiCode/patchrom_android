.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;
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
    name = "PerProviderSubscription"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public UpdateIdentifier:Ljava/lang/String;

.field public credentialInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public createCredentialInfo(Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    invoke-direct {v0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;-><init>(Ljava/lang/String;)V

    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

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

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
