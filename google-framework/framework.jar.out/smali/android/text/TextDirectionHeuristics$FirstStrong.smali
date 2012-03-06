.class public Landroid/text/TextDirectionHeuristics$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method


# virtual methods
.method public checkRtl([CII)Landroid/text/TextDirectionHeuristics$TriState;
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 181
    sget-object v2, Landroid/text/TextDirectionHeuristics$TriState;->UNKNOWN:Landroid/text/TextDirectionHeuristics$TriState;

    .line 182
    .local v2, result:Landroid/text/TextDirectionHeuristics$TriState;
    move v1, p2

    .local v1, i:I
    add-int v0, p2, p3

    .local v0, e:I
    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Landroid/text/TextDirectionHeuristics$TriState;->UNKNOWN:Landroid/text/TextDirectionHeuristics$TriState;

    if-ne v2, v3, :cond_0

    .line 183
    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    #calls: Landroid/text/TextDirectionHeuristics;->isRtlTextOrFormat(I)Landroid/text/TextDirectionHeuristics$TriState;
    invoke-static {v3}, Landroid/text/TextDirectionHeuristics;->access$100(I)Landroid/text/TextDirectionHeuristics$TriState;

    move-result-object v2

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-object v2
.end method
