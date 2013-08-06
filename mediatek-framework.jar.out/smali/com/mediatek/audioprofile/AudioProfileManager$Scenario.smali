.class public final enum Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
.super Ljava/lang/Enum;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field public static final enum CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field public static final enum GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field public static final enum MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field public static final enum OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field public static final enum SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "MEETING"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "OUTDOOR"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 1

    .prologue
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0}, [Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method
