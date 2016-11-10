.class interface abstract Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IntentFilterVerifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/IntentFilter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIITT;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract receiveVerificationResponse(I)V
.end method

.method public abstract startVerifications(I)V
.end method
