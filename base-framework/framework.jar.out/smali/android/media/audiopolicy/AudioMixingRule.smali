.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$1;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;,
        Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field private static final RULE_EXCLUSION_MASK:I = 0x8000

.field public static final RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1


# instance fields
.field private final mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetMixType:I


# direct methods
.method private constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "mixType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/ArrayList;
    .param p3, "x2"    # Landroid/media/audiopolicy/AudioMixingRule$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidIntRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    move-result v0

    return v0
.end method

.method private static isPlayerRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const v1, 0x8001

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidIntRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8002 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getCriteria()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTargetMixType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
