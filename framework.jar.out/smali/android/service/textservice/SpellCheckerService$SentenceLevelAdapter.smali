.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    }
.end annotation


# static fields
.field public static final EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-array v0, v2, [Landroid/view/textservice/SentenceSuggestionsInfo;

    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method static synthetic access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v0

    return-object v0
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 13
    .parameter "originalTextInfo"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    iget-object v8, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .local v8, wordIterator:Landroid/text/method/WordIterator;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    .local v2, originalText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v0

    .local v0, cookie:I
    const/4 v4, 0x0

    .local v4, start:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, end:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, wordItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v8, v2, v12, v10}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v8, v12}, Landroid/text/method/WordIterator;->following(I)I

    move-result v6

    .local v6, wordEnd:I
    invoke-virtual {v8, v6}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v9

    .local v9, wordStart:I
    :goto_0
    if-gt v9, v1, :cond_1

    if-eq v6, v11, :cond_1

    if-eq v9, v11, :cond_1

    if-ltz v6, :cond_0

    if-le v6, v9, :cond_0

    invoke-interface {v2, v9, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, query:Ljava/lang/String;
    new-instance v5, Landroid/view/textservice/TextInfo;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-direct {v5, v3, v0, v10}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    .local v5, ti:Landroid/view/textservice/TextInfo;
    new-instance v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v10, v5, v9, v6}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3           #query:Ljava/lang/String;
    .end local v5           #ti:Landroid/view/textservice/TextInfo;
    :cond_0
    invoke-virtual {v8, v6}, Landroid/text/method/WordIterator;->following(I)I

    move-result v6

    if-ne v6, v11, :cond_2

    :cond_1
    new-instance v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    invoke-direct {v10, p1, v7}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v10

    :cond_2
    invoke-virtual {v8, v6}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v9

    goto :goto_0
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 13
    .parameter "originalTextInfoParams"
    .parameter "results"

    .prologue
    const/4 v11, 0x0

    if-eqz p1, :cond_0

    array-length v12, p1

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    if-eqz p0, :cond_0

    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    .local v6, originalCookie:I
    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v11}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    .local v7, originalSequence:I
    iget v8, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .local v8, querySize:I
    new-array v5, v8, [I

    .local v5, offsets:[I
    new-array v4, v8, [I

    .local v4, lengths:[I
    new-array v9, v8, [Landroid/view/textservice/SuggestionsInfo;

    .local v9, reconstructedSuggestions:[Landroid/view/textservice/SuggestionsInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_5

    iget-object v11, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .local v2, item:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    const/4 v10, 0x0

    .local v10, result:Landroid/view/textservice/SuggestionsInfo;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v11, p1

    if-ge v3, v11, :cond_2

    aget-object v0, p1, v3

    .local v0, cur:Landroid/view/textservice/SuggestionsInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v11

    iget-object v12, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v12}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v12

    if-ne v11, v12, :cond_3

    move-object v10, v0

    invoke-virtual {v10, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .end local v0           #cur:Landroid/view/textservice/SuggestionsInfo;
    :cond_2
    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v11, v5, v1

    iget v11, v2, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v11, v4, v1

    if-eqz v10, :cond_4

    .end local v10           #result:Landroid/view/textservice/SuggestionsInfo;
    :goto_3
    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v0       #cur:Landroid/view/textservice/SuggestionsInfo;
    .restart local v10       #result:Landroid/view/textservice/SuggestionsInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #cur:Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    sget-object v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    goto :goto_3

    .end local v2           #item:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    .end local v3           #j:I
    .end local v10           #result:Landroid/view/textservice/SuggestionsInfo;
    :cond_5
    new-instance v11, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {v11, v9, v5, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    goto :goto_0
.end method
