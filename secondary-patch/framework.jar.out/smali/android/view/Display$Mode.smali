.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;


# instance fields
.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIIF)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/Display$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

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
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/view/Display$Mode;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/Display$Mode;

    .local v0, "that":Landroid/view/Display$Mode;
    iget v3, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v4, v0, Landroid/view/Display$Mode;->mModeId:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/view/Display$Mode;->mWidth:I

    iget v4, v0, Landroid/view/Display$Mode;->mHeight:I

    iget v5, v0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getModeId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public getPhysicalHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "hash":I
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/lit8 v0, v1, 0x11

    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public matches(IIF)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
