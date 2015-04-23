.class public Lcom/android/internal/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "LineTokenizer.java"


# static fields
.field public static final kTokenNotFound:I = -0x1


# instance fields
.field private mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiters"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method nextDelimiter(Ljava/lang/String;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    move v1, p2

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    :cond_0
    if-ge v1, v0, :cond_2

    .end local v1    # "offset":I
    :goto_1
    return v1

    .restart local v1    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method nextToken(Ljava/lang/String;I)I
    .locals 5
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    move v1, p2

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    if-ge v1, v0, :cond_2

    .end local v1    # "offset":I
    :goto_1
    return v1

    .restart local v1    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
