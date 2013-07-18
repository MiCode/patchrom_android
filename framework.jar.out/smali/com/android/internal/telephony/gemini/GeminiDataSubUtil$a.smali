.class final enum Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field public static final enum b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field public static final enum c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field public static final enum d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field public static final enum e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field public static final enum f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field private static final synthetic g:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "DETACHED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "ATTACHING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "ATTACHED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "DETACHING"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "RECOVERY"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const-string v1, "REACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->g:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->g:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$1;->a:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DETACHED"

    goto :goto_0

    :pswitch_1
    const-string v0, "ATTACHING"

    goto :goto_0

    :pswitch_2
    const-string v0, "ATTACHED"

    goto :goto_0

    :pswitch_3
    const-string v0, "DETACHING"

    goto :goto_0

    :pswitch_4
    const-string v0, "RECOVERY"

    goto :goto_0

    :pswitch_5
    const-string v0, "REACTIVE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
