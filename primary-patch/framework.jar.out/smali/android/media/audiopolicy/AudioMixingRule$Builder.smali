.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetMixType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0
.end method

.method addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "rule":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const v4, 0x8001

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "usage":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .end local v3    # "usage":I
    .local v0, "attr":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v4

    return-object v4

    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const v4, 0x8002

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "preset":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .restart local v0    # "attr":Landroid/media/AudioAttributes;
    goto :goto_0

    .end local v0    # "attr":Landroid/media/AudioAttributes;
    .end local v1    # "preset":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal rule value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in parcel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 6
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioAttributes argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isValidIntRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$100(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal rule value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$200(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    if-eq p2, v5, :cond_4

    const v2, 0x8001

    if-ne p2, v2, :cond_a

    :cond_4
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    if-ne v2, p2, :cond_9

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :goto_1
    return-object p0

    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    :cond_5
    iput v5, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-nez v2, :cond_7

    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$200(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-ne v2, v5, :cond_2

    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$200(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incompatible rule for mix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_9
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contradictory rule exists for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_a
    const/4 v2, 0x2

    if-eq p2, v2, :cond_b

    const v2, 0x8002

    if-ne p2, v2, :cond_3

    :cond_b
    :try_start_2
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v4

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    if-ne v2, p2, :cond_c

    monitor-exit v3

    goto :goto_1

    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contradictory rule exists for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_d
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    invoke-direct {v4, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 4

    .prologue
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V

    return-object v0
.end method

.method public excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    # invokes: Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$000(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x8000

    or-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0
.end method
