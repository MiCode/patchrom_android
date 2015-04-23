.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$Resolution;,
        Landroid/print/PrintAttributes$MediaSize;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUPLEX_MODE_LONG_EDGE:I = 0x2

.field public static final DUPLEX_MODE_NONE:I = 0x1

.field public static final DUPLEX_MODE_SHORT_EDGE:I = 0x4

.field private static final VALID_COLOR_MODES:I = 0x3

.field private static final VALID_DUPLEX_MODES:I = 0x7


# instance fields
.field private mColorMode:I

.field private mDuplexMode:I

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/print/PrintAttributes$1;

    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintAttributes$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static colorModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "colorMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "COLOR_MODE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "COLOR_MODE_MONOCHROME"

    goto :goto_0

    :pswitch_1
    const-string v0, "COLOR_MODE_COLOR"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static duplexModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "duplexMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "DUPLEX_MODE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "DUPLEX_MODE_NONE"

    goto :goto_0

    :pswitch_2
    const-string v0, "DUPLEX_MODE_LONG_EDGE"

    goto :goto_0

    :pswitch_3
    const-string v0, "DUPLEX_MODE_SHORT_EDGE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static enforceValidColorMode(I)V
    .locals 3
    .param p0, "colorMode"    # I

    .prologue
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static enforceValidDuplexMode(I)V
    .locals 3
    .param p0, "duplexMode"    # I

    .prologue
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid duplex mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public asLandscape()Landroid/print/PrintAttributes;
    .locals 7

    .prologue
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_0

    .end local p0    # "this":Landroid/print/PrintAttributes;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/print/PrintAttributes;
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public asPortrait()Landroid/print/PrintAttributes;
    .locals 7

    .prologue
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local p0    # "this":Landroid/print/PrintAttributes;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/print/PrintAttributes;
    :cond_0
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .local v0, "attributes":Landroid/print/PrintAttributes;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asPortrait()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .local v2, "oldResolution":Landroid/print/PrintAttributes$Resolution;
    new-instance v1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .local v1, "newResolution":Landroid/print/PrintAttributes$Resolution;
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setColorMode(I)V

    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return-void
.end method

.method public copyFrom(Landroid/print/PrintAttributes;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .prologue
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v0, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return-void
.end method

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

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/print/PrintAttributes;

    .local v0, "other":Landroid/print/PrintAttributes;
    iget v3, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v4, v0, Landroid/print/PrintAttributes;->mColorMode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    iget v4, v0, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v3, :cond_8

    iget-object v3, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getColorMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return v0
.end method

.method public getDuplexMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return v0
.end method

.method public getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public getResolution()Landroid/print/PrintAttributes$Resolution;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0x1f

    .local v0, "prime":I
    const/4 v1, 0x1

    .local v1, "result":I
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return-void
.end method

.method public setDuplexMode(I)V
    .locals 0
    .param p1, "duplexMode"    # I

    .prologue
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return-void
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .locals 0
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .prologue
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-void
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .locals 0
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .locals 0
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .prologue
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mediaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v1, :cond_1

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "portrait"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duplexMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "landscape"

    goto :goto_0

    :cond_1
    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    :goto_0
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    :goto_1
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    :goto_2
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
