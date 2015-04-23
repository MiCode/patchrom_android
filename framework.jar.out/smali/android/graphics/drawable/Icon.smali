.class public final Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Icon$LoadDrawableTask;,
        Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final TAG:Ljava/lang/String; = "Icon"

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_URI:I = 0x4

.field private static final VERSION_STREAM_SERIALIZER:I = 0x1


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private mString1:Ljava/lang/String;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/drawable/Icon$1;

    invoke-direct {v0}, Landroid/graphics/drawable/Icon$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "mType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput p1, p0, Landroid/graphics/drawable/Icon;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/graphics/drawable/Icon;-><init>(I)V

    iget v6, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type in parcel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .local v1, "bits":Landroid/graphics/Bitmap;
    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .end local v1    # "bits":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    sget-object v6, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "resId":I
    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    iput v4, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    .local v0, "a":[B
    array-length v6, v0

    if-eq v2, v6, :cond_1

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internal unparceling error: blob length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") != expected length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iput v2, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "a":[B
    .end local v2    # "len":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "uri":Ljava/lang/String;
    iput-object v5, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/graphics/drawable/Icon$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .local v7, "version":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .end local v5    # "type":I
    :cond_0
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .restart local v5    # "type":I
    :pswitch_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, "length":I
    new-array v0, v2, [B

    .local v0, "data":[B
    invoke-virtual {v1, v0, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    invoke-static {v0, v9, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_0

    .end local v0    # "data":[B
    .end local v2    # "length":I
    :pswitch_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .local v4, "resId":I
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_0

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .local v6, "uriOrPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bitmap must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithData([BII)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Data must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    iput p2, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt2:I

    return-object v0
.end method

.method public static createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Resource must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "resPackage"    # Ljava/lang/String;
    .param p1, "resId"    # I

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Resource package name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget v8, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v8, 0x0

    :goto_1
    return-object v8

    :pswitch_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    .local v5, "resPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v8, "android"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .end local v5    # "resPackage":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    goto :goto_1

    .restart local v5    # "resPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x2000

    :try_start_1
    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Icon"

    const-string v9, "Unable to find pkg=%s for icon %s"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v5, v10, v12

    aput-object p0, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v8, "Icon"

    const-string v9, "Unable to load resource 0x%08x from pkg=%s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v10

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v11

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v7

    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .local v6, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "is":Ljava/io/InputStream;
    const-string v8, "content"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "file"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_0

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Icon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load image from URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    :catch_3
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "Icon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load image from path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    return-void
.end method

.method private static final typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "BITMAP"

    goto :goto_0

    :pswitch_1
    const-string v0, "DATA"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESOURCE"

    goto :goto_0

    :pswitch_3
    const-string v0, "URI"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public convertToAshmem()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataBytes() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataLength()I
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataLength() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataOffset()I
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataOffset() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt2:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResId()I
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResId() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    return v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResPackage() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResources() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getUriString() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-object v0
.end method

.method public loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x2

    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    .local v2, "resPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "resPackage":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "resPackage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Icon"

    const-string v4, "Unable to find pkg=%s user=%d"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    return-void
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "andThen"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback message must have a target handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    return-void
.end method

.method public setTint(I)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p1, "tint"    # I

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Icon(typ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-static {v7}, Landroid/graphics/drawable/Icon;->typeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .local v4, "sb":Ljava/lang/StringBuilder;
    iget v6, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_1

    const-string v6, " tint="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    .local v5, "sep":Ljava/lang/String;
    iget-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .local v1, "c":I
    const-string v6, "%s0x%08x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[I
    .end local v1    # "c":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "sep":Ljava/lang/String;
    :pswitch_0
    const-string v6, " size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v6, " pkg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0x%08x"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v6, " len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " off="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const-string v6, " uri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v7, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v6, v7, :cond_2

    const-string v6, " mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bits":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v0    # "bits":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, "dataStream":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
