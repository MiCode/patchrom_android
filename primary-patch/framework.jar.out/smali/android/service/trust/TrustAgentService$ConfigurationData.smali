.class final Landroid/service/trust/TrustAgentService$ConfigurationData;
.super Ljava/lang/Object;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigurationData"
.end annotation


# instance fields
.field final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "t"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "opts":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    return-void
.end method
