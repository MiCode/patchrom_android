.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "lookForRtl"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "haveUnlookedFor":Z
    const/4 v4, 0x0

    .local v4, "openIsolateCount":I
    move v3, p2

    .local v3, "i":I
    add-int v1, p2, p3

    .local v1, "end":I
    :goto_0
    if-ge v3, v1, :cond_5

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .local v0, "cp":I
    const/16 v7, 0x2066

    if-gt v7, v0, :cond_1

    const/16 v7, 0x2068

    if-gt v0, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_0

    :cond_1
    const/16 v7, 0x2069

    if-ne v0, v7, :cond_2

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_0

    # invokes: Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I
    invoke-static {v0}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v7, :cond_4

    move v5, v6

    .end local v0    # "cp":I
    :cond_3
    :goto_2
    return v5

    .restart local v0    # "cp":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .end local v0    # "cp":I
    :cond_5
    if-eqz v2, :cond_6

    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_2

    :cond_6
    const/4 v5, 0x2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
