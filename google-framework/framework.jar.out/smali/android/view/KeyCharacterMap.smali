.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACUTE:I = 0xb40000

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CIRCUMFLEX:I = 0x5e0000

.field private static COMBINING:Landroid/util/SparseIntArray; = null

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field private static DEAD:Landroid/util/SparseIntArray; = null

.field public static final FULL:I = 0x4

.field private static final GRAVE:I = 0x600000

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field private static final TILDE:I = 0x7e0000

.field private static final UMLAUT:I = 0xa80000

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeviceId:I

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    .line 552
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    .line 558
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    .line 582
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x300

    const v2, -0x7fffffa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x301

    const v2, -0x7fffff4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x302

    const v2, -0x7fffffa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x303

    const v2, -0x7fffff82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x308

    const v2, -0x7fffff58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40041

    const/16 v2, 0xc1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40043

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40045

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40047

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40049

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004b

    const/16 v2, 0x1e30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004c

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004d

    const/16 v2, 0x1e3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004e

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004f

    const/16 v2, 0xd3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40050

    const/16 v2, 0x1e54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40052

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40053

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40055

    const/16 v2, 0xda

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40057

    const/16 v2, 0x1e82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40059

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4005a

    const/16 v2, 0x179

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40061

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40063

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40065

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40067

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40069

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006b

    const/16 v2, 0x1e31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006c

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 612
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006d

    const/16 v2, 0x1e3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006e

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006f

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40070

    const/16 v2, 0x1e55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 616
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40072

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40073

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40075

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40077

    const/16 v2, 0x1e83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40079

    const/16 v2, 0xfd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4007a

    const/16 v2, 0x17a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0041

    const/16 v2, 0xc2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0043

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 624
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0045

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0047

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0048

    const/16 v2, 0x124

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0049

    const/16 v2, 0xce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004a

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004f

    const/16 v2, 0xd4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0053

    const/16 v2, 0x15c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0055

    const/16 v2, 0xdb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0057

    const/16 v2, 0x174

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0059

    const/16 v2, 0x176

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e005a

    const/16 v2, 0x1e90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0061

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0063

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0065

    const/16 v2, 0xea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0067

    const/16 v2, 0x11d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0068

    const/16 v2, 0x125

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0069

    const/16 v2, 0xee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006a

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006f

    const/16 v2, 0xf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0073

    const/16 v2, 0x15d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0075

    const/16 v2, 0xfb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0077

    const/16 v2, 0x175

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0079

    const/16 v2, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e007a

    const/16 v2, 0x1e91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 648
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600041

    const/16 v2, 0xc0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600045

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600049

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60004e

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60004f

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600055

    const/16 v2, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600057

    const/16 v2, 0x1e80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600059

    const/16 v2, 0x1ef2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600061

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600065

    const/16 v2, 0xe8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600069

    const/16 v2, 0xec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60006e

    const/16 v2, 0x1f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60006f

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600075

    const/16 v2, 0xf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600077

    const/16 v2, 0x1e81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600079

    const/16 v2, 0x1ef3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0041

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0045

    const/16 v2, 0x1ebc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0049

    const/16 v2, 0x128

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004e

    const/16 v2, 0xd1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004f

    const/16 v2, 0xd5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0055

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0056

    const/16 v2, 0x1e7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0059

    const/16 v2, 0x1ef8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 672
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0061

    const/16 v2, 0xe3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0065

    const/16 v2, 0x1ebd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 674
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0069

    const/16 v2, 0x129

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006e

    const/16 v2, 0xf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 676
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006f

    const/16 v2, 0xf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0075

    const/16 v2, 0x169

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0076

    const/16 v2, 0x1e7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0079

    const/16 v2, 0x1ef9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 680
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80041

    const/16 v2, 0xc4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80045

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80048

    const/16 v2, 0x1e26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80049

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8004f

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80055

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80057

    const/16 v2, 0x1e84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80058

    const/16 v2, 0x1e8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80059

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80061

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80065

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80068

    const/16 v2, 0x1e27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80069

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8006f

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80074

    const/16 v2, 0x1e97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80075

    const/16 v2, 0xfc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80077

    const/16 v2, 0x1e85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80078

    const/16 v2, 0x1e8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80079

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "deviceId"
    .parameter "ptr"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Landroid/view/KeyCharacterMap;->mDeviceId:I

    .line 156
    iput p2, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    .line 157
    return-void
.end method

.method public static deviceHasKey(I)Z
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 521
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 522
    .local v0, codeArray:[I
    aput p0, v0, v3

    .line 523
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v1

    .line 524
    .local v1, ret:[Z
    aget-boolean v2, v1, v3

    return v2
.end method

.method public static deviceHasKeys([I)[Z
    .locals 3
    .parameter "keyCodes"

    .prologue
    .line 538
    array-length v2, p0

    new-array v0, v2, [Z

    .line 539
    .local v0, ret:[Z
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 541
    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->hasKeys([I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-object v0

    .line 542
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDeadChar(II)I
    .locals 2
    .parameter "accent"
    .parameter "c"

    .prologue
    .line 339
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 6
    .parameter "deviceId"

    .prologue
    .line 177
    sget-object v5, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    monitor-enter v5

    .line 178
    :try_start_0
    sget-object v4, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyCharacterMap;

    .line 179
    .local v2, map:Landroid/view/KeyCharacterMap;
    if-nez v2, :cond_3

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, kcm:Ljava/lang/String;
    const/4 v4, -0x1

    if-eq p0, v4, :cond_0

    .line 182
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 183
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyCharacterMapFile()Ljava/lang/String;

    move-result-object v1

    .line 187
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 188
    :cond_1
    const-string v1, "/system/usr/keychars/Virtual.kcm"

    .line 190
    :cond_2
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->nativeLoad(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, ptr:I
    new-instance v2, Landroid/view/KeyCharacterMap;

    .end local v2           #map:Landroid/view/KeyCharacterMap;
    invoke-direct {v2, p0, v3}, Landroid/view/KeyCharacterMap;-><init>(II)V

    .line 192
    .restart local v2       #map:Landroid/view/KeyCharacterMap;
    sget-object v4, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    .end local v1           #kcm:Ljava/lang/String;
    .end local v3           #ptr:I
    :cond_3
    monitor-exit v5

    return-object v2

    .line 195
    .end local v2           #map:Landroid/view/KeyCharacterMap;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetCharacter(III)C
.end method

.method private static native nativeGetDisplayLabel(II)C
.end method

.method private static native nativeGetEvents(II[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(IIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(I)I
.end method

.method private static native nativeGetMatch(II[CI)C
.end method

.method private static native nativeGetNumber(II)C
.end method

.method private static native nativeLoad(Ljava/lang/String;)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->nativeDispose(I)V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    .line 165
    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 3
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 220
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 221
    iget v2, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v2, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v0

    .line 223
    .local v0, ch:C
    sget-object v2, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 224
    .local v1, map:I
    if-eqz v1, :cond_0

    .line 227
    .end local v1           #map:I
    :goto_0
    return v1

    .restart local v1       #map:I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getDisplayLabel(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 327
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v0

    return v0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 2
    .parameter "chars"

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    iget v1, p0, Landroid/view/KeyCharacterMap;->mDeviceId:I

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(II[C)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackAction(IILandroid/view/KeyCharacterMap$FallbackAction;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "outFallbackAction"

    .prologue
    .line 251
    if-nez p3, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fallbackAction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 256
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(IIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v0

    return v0
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "results"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 387
    iget-object v3, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v3, v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 388
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "results.meta.length must be >= 4"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_0
    iget v3, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v0

    .line 393
    .local v0, displayLabel:C
    if-nez v0, :cond_1

    .line 404
    :goto_0
    return v1

    .line 397
    :cond_1
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 398
    iget v3, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(II)C

    move-result v3

    iput-char v3, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 399
    iget-object v3, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v4, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v4, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v4

    aput-char v4, v3, v1

    .line 400
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v3, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v3, p1, v2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v3

    aput-char v3, v1, v2

    .line 401
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v3, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v3

    aput-char v3, v1, v5

    .line 402
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget v3, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v3, p1, v6}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(III)C

    move-result v3

    aput-char v3, v1, v6

    move v1, v2

    .line 404
    goto :goto_0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(I)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .locals 1
    .parameter "keyCode"
    .parameter "chars"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public getMatch(I[CI)C
    .locals 2
    .parameter "keyCode"
    .parameter "chars"
    .parameter "metaState"

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 316
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(II[CI)C

    move-result v0

    return v0
.end method

.method public getModifierBehavior()I
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 509
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 507
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNumber(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 281
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(II)C

    move-result v0

    return v0
.end method

.method public isPrintingKey(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 442
    iget v1, p0, Landroid/view/KeyCharacterMap;->mPtr:I

    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 444
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 453
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 451
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
