.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OutputConfiguration"


# instance fields
.field private final mRotation:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "rotation":I
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .local v1, "surface":Landroid/view/Surface;
    const-string v2, "Surface must not be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Rotation constant"

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/camera2/params/OutputConfiguration$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "Rotation constant"

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    iput p2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    instance-of v3, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .local v0, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getRotation()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
