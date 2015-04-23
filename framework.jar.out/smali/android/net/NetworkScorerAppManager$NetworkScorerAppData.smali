.class public Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScorerAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkScorerAppData"
.end annotation


# instance fields
.field public final mConfigurationActivityClassName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPackageUid:I

.field public final mScorerName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I
    .param p3, "scorerName"    # Ljava/lang/CharSequence;
    .param p4, "configurationActivityClassName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    iput-object p4, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    return-void
.end method
