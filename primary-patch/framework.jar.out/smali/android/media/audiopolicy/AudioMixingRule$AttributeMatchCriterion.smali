.class final Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributeMatchCriterion"
.end annotation


# instance fields
.field mAttr:Landroid/media/AudioAttributes;

.field mRule:I


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    iput p2, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    const v1, 0x8001

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
