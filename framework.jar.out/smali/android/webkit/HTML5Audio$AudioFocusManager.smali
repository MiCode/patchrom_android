.class Landroid/webkit/HTML5Audio$AudioFocusManager;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusManager"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mFocusStatus:I

.field private mListenerCount:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5Audio;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isFocusing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abandonFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "ofcl"

    .prologue
    const-string v1, "HTML5Audio "

    const-string v2, "abandonFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    iget v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    const-string v2, "HTML5Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioFocusChange(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    iget v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .local v1, ofcl:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-interface {v1, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0
.end method

.method public requestFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 6
    .parameter "ofcl"

    .prologue
    const/4 v2, 0x1

    const-string v3, "HTML5Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestFocus():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->isFocusing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .local v1, result:I
    iput v1, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #result:I
    :cond_1
    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mListenerCount:I

    :cond_2
    invoke-direct {p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->isFocusing()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    return v2

    :cond_3
    iget v2, p0, Landroid/webkit/HTML5Audio$AudioFocusManager;->mFocusStatus:I

    goto :goto_0
.end method
