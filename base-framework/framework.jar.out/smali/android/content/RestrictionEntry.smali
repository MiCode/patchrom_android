.class public Landroid/content/RestrictionEntry;
.super Ljava/lang/Object;
.source "RestrictionEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_CHOICE:I = 0x2

.field public static final TYPE_CHOICE_LEVEL:I = 0x3

.field public static final TYPE_MULTI_SELECT:I = 0x4

.field public static final TYPE_NULL:I


# instance fields
.field private choices:[Ljava/lang/String;

.field private currentValue:Ljava/lang/String;

.field private currentValues:[Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/RestrictionEntry$1;

    invoke-direct {v0}, Landroid/content/RestrictionEntry$1;-><init>()V

    sput-object v0, Landroid/content/RestrictionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/RestrictionEntry;->type:I

    iput-object p2, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedState"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedStrings"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/RestrictionEntry;->type:I

    iput-object p2, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method private equalArrays([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "one"    # [Ljava/lang/String;
    .param p2, "other"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/content/RestrictionEntry;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/content/RestrictionEntry;

    .local v0, "other":Landroid/content/RestrictionEntry;
    iget v3, p0, Landroid/content/RestrictionEntry;->type:I

    iget v4, v0, Landroid/content/RestrictionEntry;->type:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    iget-object v4, v0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/content/RestrictionEntry;->equalArrays([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAllSelectedStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceValues()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/RestrictionEntry;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v3, 0x11

    .local v3, "result":I
    iget-object v5, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/lit16 v3, v5, 0x20f

    iget-object v5, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v3, 0x1f

    iget-object v6, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    :cond_0
    return v3

    :cond_1
    iget-object v5, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    mul-int/lit8 v5, v3, 0x1f

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAllSelectedStrings([Ljava/lang/String;)V
    .locals 0
    .param p1, "allSelectedStrings"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringArrayResId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries([Ljava/lang/String;)V
    .locals 0
    .param p1, "choiceEntries"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringArrayResId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues([Ljava/lang/String;)V
    .locals 0
    .param p1, "choiceValues"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    return-void
.end method

.method public setSelectedState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setSelectedString(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedString"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Landroid/content/RestrictionEntry;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrictionsEntry {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
