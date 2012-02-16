.class final enum Landroid/widget/TextView$TextAlign;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TextView$TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$TextAlign;

.field public static final enum CENTER:Landroid/widget/TextView$TextAlign;

.field public static final enum GRAVITY:Landroid/widget/TextView$TextAlign;

.field public static final enum INHERIT:Landroid/widget/TextView$TextAlign;

.field public static final enum TEXT_END:Landroid/widget/TextView$TextAlign;

.field public static final enum TEXT_START:Landroid/widget/TextView$TextAlign;

.field public static final enum VIEW_END:Landroid/widget/TextView$TextAlign;

.field public static final enum VIEW_START:Landroid/widget/TextView$TextAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "INHERIT"

    invoke-direct {v0, v1, v3}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "GRAVITY"

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->GRAVITY:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "TEXT_START"

    invoke-direct {v0, v1, v5}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->TEXT_START:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "TEXT_END"

    invoke-direct {v0, v1, v6}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->TEXT_END:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v7}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->CENTER:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "VIEW_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    new-instance v0, Landroid/widget/TextView$TextAlign;

    const-string v1, "VIEW_END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    .line 370
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/TextView$TextAlign;->GRAVITY:Landroid/widget/TextView$TextAlign;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/TextView$TextAlign;->TEXT_START:Landroid/widget/TextView$TextAlign;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/TextView$TextAlign;->TEXT_END:Landroid/widget/TextView$TextAlign;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/TextView$TextAlign;->CENTER:Landroid/widget/TextView$TextAlign;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/TextView$TextAlign;->$VALUES:[Landroid/widget/TextView$TextAlign;

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
    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$TextAlign;
    .locals 1
    .parameter "name"

    .prologue
    .line 370
    const-class v0, Landroid/widget/TextView$TextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView$TextAlign;

    return-object v0
.end method

.method public static values()[Landroid/widget/TextView$TextAlign;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Landroid/widget/TextView$TextAlign;->$VALUES:[Landroid/widget/TextView$TextAlign;

    invoke-virtual {v0}, [Landroid/widget/TextView$TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$TextAlign;

    return-object v0
.end method
