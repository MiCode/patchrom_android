.class public Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaCardsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaCardRecord"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardRecord"

.field private static final kUsbCardKeyStr:Ljava/lang/String; = "at usb-"


# instance fields
.field public mCardDescription:Ljava/lang/String;

.field public mCardName:Ljava/lang/String;

.field public mCardNum:I

.field public mField1:Ljava/lang/String;

.field public mIsUsb:Z

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaCardsParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaCardsParser;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->this$0:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "lineIndex"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .local v3, "tokenIndex":I
    const/4 v0, 0x0

    .local v0, "delimIndex":I
    if-nez p2, :cond_1

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    :try_start_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v3

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    :cond_0
    :goto_0
    move v4, v5

    :goto_1
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "AlsaCardRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/proc/asound/cards"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-ne p2, v5, :cond_0

    # getter for: Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_0

    const-string v6, "at usb-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "keyIndex":I
    if-eq v2, v7, :cond_2

    move v4, v5

    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    iget-boolean v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public textFormat()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
