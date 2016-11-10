.class Lcom/android/server/policy/EnableAccessibilityController$2;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
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
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController$2;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController$2;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->access$400(Lcom/android/server/policy/EnableAccessibilityController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController$2;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method
