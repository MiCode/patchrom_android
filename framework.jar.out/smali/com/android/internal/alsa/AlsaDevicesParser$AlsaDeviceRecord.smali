.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .locals 14
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "kToken_LineNum":I
    const/4 v2, 0x1

    .local v2, "kToken_CardNum":I
    const/4 v3, 0x2

    .local v3, "kToken_DeviceNum":I
    const/4 v5, 0x3

    .local v5, "kToken_Type0":I
    const/4 v6, 0x4

    .local v6, "kToken_Type1":I
    const/4 v7, 0x5

    .local v7, "kToken_Type2":I
    const/4 v10, 0x0

    .local v10, "tokenOffset":I
    const/4 v0, 0x0

    .local v0, "delimOffset":I
    const/4 v9, 0x0

    .local v9, "tokenIndex":I
    :goto_0
    # getter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    return v11

    :cond_0
    # getter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$000()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v10}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "token":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_1
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v11, "AlsaDevicesParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/proc/asound/devices"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_1

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_3
    :try_start_1
    const-string v11, "digital"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "control"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2

    :cond_3
    const-string v11, "raw"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :pswitch_4
    const-string v11, "audio"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2

    :cond_4
    const-string v11, "midi"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2

    :pswitch_5
    const-string v11, "capture"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2

    :cond_5
    const-string v11, "playback"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z
    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
