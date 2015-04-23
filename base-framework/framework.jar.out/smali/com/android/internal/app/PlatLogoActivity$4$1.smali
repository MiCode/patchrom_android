.class Lcom/android/internal/app/PlatLogoActivity$4$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$4;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$4;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "egg_mode"

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "egg_mode"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$4;->val$im:Landroid/view/View;

    new-instance v3, Lcom/android/internal/app/PlatLogoActivity$4$1$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/PlatLogoActivity$4$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$4$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "PlatLogoActivity"

    const-string v3, "Can\'t write settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
