.class Lcom/android/server/location/ComprehensiveCountryDetector$5;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
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
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    const-string v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged serviceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #getter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$600(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #getter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$600(Lcom/android/server/location/ComprehensiveCountryDetector;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    const-string v0, "CountryDetector"

    const-string v1, "new detect country is called in onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #calls: Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;
    invoke-static {v0, v3, v3}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$5;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #setter for: Lcom/android/server/location/ComprehensiveCountryDetector;->mLastState2:Landroid/telephony/ServiceState;
    invoke-static {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$602(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    :cond_1
    return-void
.end method
