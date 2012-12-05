.class final enum Landroid/text/TextDirectionHeuristics$TriState;
.super Ljava/lang/Enum;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TriState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/TextDirectionHeuristics$TriState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/TextDirectionHeuristics$TriState;

.field public static final enum FALSE:Landroid/text/TextDirectionHeuristics$TriState;

.field public static final enum TRUE:Landroid/text/TextDirectionHeuristics$TriState;

.field public static final enum UNKNOWN:Landroid/text/TextDirectionHeuristics$TriState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/text/TextDirectionHeuristics$TriState;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v2}, Landroid/text/TextDirectionHeuristics$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$TriState;->TRUE:Landroid/text/TextDirectionHeuristics$TriState;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TriState;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3}, Landroid/text/TextDirectionHeuristics$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$TriState;->FALSE:Landroid/text/TextDirectionHeuristics$TriState;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TriState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Landroid/text/TextDirectionHeuristics$TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$TriState;->UNKNOWN:Landroid/text/TextDirectionHeuristics$TriState;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextDirectionHeuristics$TriState;

    sget-object v1, Landroid/text/TextDirectionHeuristics$TriState;->TRUE:Landroid/text/TextDirectionHeuristics$TriState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/TextDirectionHeuristics$TriState;->FALSE:Landroid/text/TextDirectionHeuristics$TriState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/TextDirectionHeuristics$TriState;->UNKNOWN:Landroid/text/TextDirectionHeuristics$TriState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/text/TextDirectionHeuristics$TriState;->$VALUES:[Landroid/text/TextDirectionHeuristics$TriState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/TextDirectionHeuristics$TriState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/text/TextDirectionHeuristics$TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristics$TriState;

    return-object v0
.end method

.method public static values()[Landroid/text/TextDirectionHeuristics$TriState;
    .locals 1

    .prologue
    sget-object v0, Landroid/text/TextDirectionHeuristics$TriState;->$VALUES:[Landroid/text/TextDirectionHeuristics$TriState;

    invoke-virtual {v0}, [Landroid/text/TextDirectionHeuristics$TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/TextDirectionHeuristics$TriState;

    return-object v0
.end method
