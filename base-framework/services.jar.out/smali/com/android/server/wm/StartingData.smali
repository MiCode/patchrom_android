.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "_pkg"
    .parameter "_theme"
    .parameter "_compatInfo"
    .parameter "_nonLocalizedLabel"
    .parameter "_labelRes"
    .parameter "_icon"
    .parameter "_windowFlags"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    iput p7, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    return-void
.end method
