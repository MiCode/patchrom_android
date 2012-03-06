.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 40
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v3, v2, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    .line 41
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mZzz:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    mul-int/lit8 v3, v3, 0x32

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 42
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3e80

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 43
    .local v1, scale:F
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 44
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 46
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mCount:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v3, v3, Lcom/android/internal/app/PlatLogoActivity;->mSuperLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x10808000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.Nyandroid"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity;->finish()V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "PlatLogoActivity"

    const-string v3, "Couldn\'t find platlogo screensaver."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
