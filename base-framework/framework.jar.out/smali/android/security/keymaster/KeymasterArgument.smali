.class abstract Landroid/security/keymaster/KeymasterArgument;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/security/keymaster/KeymasterArgument$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArgument$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument;->writeValue(Landroid/os/Parcel;)V

    return-void
.end method

.method public abstract writeValue(Landroid/os/Parcel;)V
.end method
