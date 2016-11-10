.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$1;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;,
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I

    move-result v0

    return v0
.end method

.method private static isRtlCodePoint(I)I
    .locals 5
    .param p0, "codePoint"    # I

    .prologue
    const v4, 0xfffe

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x590

    if-gt v3, p0, :cond_1

    const/16 v3, 0x8ff

    if-le p0, v3, :cond_6

    :cond_1
    const v3, 0xfb1d

    if-gt v3, p0, :cond_2

    const v3, 0xfdcf

    if-le p0, v3, :cond_6

    :cond_2
    const v3, 0xfdf0

    if-gt v3, p0, :cond_3

    const v3, 0xfdff

    if-le p0, v3, :cond_6

    :cond_3
    const v3, 0xfe70

    if-gt v3, p0, :cond_4

    const v3, 0xfeff

    if-le p0, v3, :cond_6

    :cond_4
    const v3, 0x10800

    if-gt v3, p0, :cond_5

    const v3, 0x10fff

    if-le p0, v3, :cond_6

    :cond_5
    const v3, 0x1e800

    if-gt v3, p0, :cond_7

    const v3, 0x1efff

    if-gt p0, v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    const/16 v1, 0x2065

    if-gt v1, p0, :cond_8

    const/16 v1, 0x2069

    if-le p0, v1, :cond_d

    :cond_8
    const v1, 0xfff0

    if-gt v1, p0, :cond_9

    const v1, 0xfff8

    if-le p0, v1, :cond_d

    :cond_9
    const/high16 v1, 0xe0000

    if-gt v1, p0, :cond_a

    const v1, 0xe0fff

    if-le p0, v1, :cond_d

    :cond_a
    const v1, 0xfdd0

    if-gt v1, p0, :cond_b

    const v1, 0xfdef

    if-le p0, v1, :cond_d

    :cond_b
    and-int v1, p0, v4

    if-eq v1, v4, :cond_d

    const/16 v1, 0x20a0

    if-gt v1, p0, :cond_c

    const/16 v1, 0x20cf

    if-le p0, v1, :cond_d

    :cond_c
    const v1, 0xd800

    if-gt v1, p0, :cond_0

    const v1, 0xdfff

    if-gt p0, v1, :cond_0

    :cond_d
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
