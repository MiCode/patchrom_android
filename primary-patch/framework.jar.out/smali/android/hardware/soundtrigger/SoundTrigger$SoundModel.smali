.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation


# static fields
.field public static final TYPE_KEYPHRASE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final data:[B

.field public final type:I

.field public final uuid:Ljava/util/UUID;

.field public final vendorUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "type"    # I
    .param p4, "data"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    return-void
.end method


# virtual methods
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
    instance-of v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    iget v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v3, :cond_8

    iget-object v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0x1f

    .local v0, "prime":I
    const/4 v1, 0x1

    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    goto :goto_1
.end method
