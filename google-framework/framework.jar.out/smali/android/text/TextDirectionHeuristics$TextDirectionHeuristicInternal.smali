.class Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;
.super Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method private constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V
    .locals 0
    .parameter "algorithm"
    .parameter "defaultIsRtl"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V

    .line 120
    iput-boolean p2, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;Z)V

    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
