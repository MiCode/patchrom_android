.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;
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
    name = "Credential"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CheckAAAServerCertStatus:Z

.field public CreationDate:Ljava/lang/String;

.field public ExpirationDate:Ljava/lang/String;

.field public Realm:Ljava/lang/String;

.field public digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

.field public sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

.field public usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
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
    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
