.class final Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortcutInfo"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    return-void
.end method
