.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x4

    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    mul-int/lit8 v1, v0, 0x1f

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move-object v2, p1

    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v5, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v6, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v5, v1

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v6, v6, v1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v1

    iget-object v6, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v6, v6, v1

    if-eq v5, v6, :cond_6

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move-object v1, v0

    goto :goto_1
.end method
