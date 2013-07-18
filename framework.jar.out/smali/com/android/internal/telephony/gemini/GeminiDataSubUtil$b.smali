.class final enum Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field public static final enum b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field public static final enum c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field public static final enum d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field private static final synthetic e:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    const-string v1, "DETACHING"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    const-string v1, "ATTACHING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    const-string v1, "KICKING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->e:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 1
    .parameter

    .prologue
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->e:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$1;->b:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "INVAILED"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "DETACHING"

    goto :goto_0

    :pswitch_2
    const-string v0, "ATTACHING"

    goto :goto_0

    :pswitch_3
    const-string v0, "KICKING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
