.class Lcom/android/server/location/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 3
    .parameter "country"

    .prologue
    const-string v0, "CountryDetector"

    const-string v1, "Country detected via LocationBasedCountryDetector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CountryDetector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LBS CountryDetector CountryDetected From country: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #getter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$000(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/location/Country;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #getter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$000(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " To country: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #setter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;
    invoke-static {v0, p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;
    invoke-static {v0, v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #calls: Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$200(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method
