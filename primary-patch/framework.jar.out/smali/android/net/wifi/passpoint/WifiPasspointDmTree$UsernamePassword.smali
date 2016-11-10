.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;
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
    name = "UsernamePassword"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AbleToShare:Ljava/lang/String;

.field public MachineManaged:Z

.field public Password:Ljava/lang/String;

.field public SoftTokenApp:Ljava/lang/String;

.field public Username:Ljava/lang/String;

.field public eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->readFromParcel(Landroid/os/Parcel;)V

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
    const/4 v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->SoftTokenApp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->AbleToShare:Ljava/lang/String;

    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

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
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->SoftTokenApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->AbleToShare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
