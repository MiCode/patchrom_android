.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method public static hasCardNumber(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p1, "cardNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "recs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .local v0, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .end local v0    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 3
    .param p1, "cardNum"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultCard()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    move-result v0

    .local v0, "card":I
    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    :cond_0
    return v0
.end method

.method public getDefaultUsbCard()I
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-boolean v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "prevScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "newRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    iget-object v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .local v2, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v3, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    invoke-static {p1, v3}, Lcom/android/internal/alsa/AlsaCardsParser;->hasCardNumber(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    return-object v1
.end method

.method public getNumCardRecords()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScanRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCardUsb(I)Z
    .locals 3
    .param p1, "cardNum"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public scan()V
    .locals 7

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v6, "/proc/asound/cards"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "cardsFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v5, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    .local v1, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :goto_1
    return-void

    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
