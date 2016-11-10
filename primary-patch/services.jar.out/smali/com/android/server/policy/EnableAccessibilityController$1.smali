.class Lcom/android/server/policy/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # invokes: Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility()V
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$200(Lcom/android/server/policy/EnableAccessibilityController;)V

    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$300(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
