.class final Lcom/android/internal/statusbar/NotificationVisibility$1;
.super Ljava/lang/Object;
.source "NotificationVisibility.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/NotificationVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/statusbar/NotificationVisibility;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    # invokes: Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-static {p1}, Lcom/android/internal/statusbar/NotificationVisibility;->access$000(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/NotificationVisibility$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/android/internal/statusbar/NotificationVisibility;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/NotificationVisibility$1;->newArray(I)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method
