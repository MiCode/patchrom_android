.class abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    return-void
.end method

.method private doCheck([CII)Z
    .locals 2
    .parameter "chars"
    .parameter "start"
    .parameter "count"

    .prologue
    sget-object v0, Landroid/text/TextDirectionHeuristics$1;->$SwitchMap$android$text$TextDirectionHeuristics$TriState:[I

    iget-object v1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v1, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl([CII)Landroid/text/TextDirectionHeuristics$TriState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextDirectionHeuristics$TriState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl([CII)Z
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "count"

    .prologue
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck([CII)Z

    move-result v0

    goto :goto_0
.end method
