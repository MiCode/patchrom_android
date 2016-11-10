.class final Landroid/app/admin/SystemUpdatePolicy$1;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
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
        "Landroid/app/admin/SystemUpdatePolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>(Landroid/app/admin/SystemUpdatePolicy$1;)V

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I
    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->access$102(Landroid/app/admin/SystemUpdatePolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I
    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->access$202(Landroid/app/admin/SystemUpdatePolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I
    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->access$302(Landroid/app/admin/SystemUpdatePolicy;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->newArray(I)[Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    return-object v0
.end method
