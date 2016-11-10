.class Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceResultInfo"
.end annotation


# instance fields
.field public final connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

.field public final originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field public final resultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V
    .locals 0
    .param p1, "ot"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "c"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    return-void
.end method
