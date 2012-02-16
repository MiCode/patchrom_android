.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 697
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 6
    .parameter "l"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 62
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 63
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 64
    iput-boolean v5, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 65
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 66
    iput-boolean v5, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 67
    iput v4, p0, Landroid/location/Location;->mSpeed:F

    .line 68
    iput-boolean v5, p0, Landroid/location/Location;->mHasBearing:Z

    .line 69
    iput v4, p0, Landroid/location/Location;->mBearing:F

    .line 70
    iput-boolean v5, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 71
    iput v4, p0, Landroid/location/Location;->mAccuracy:F

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 76
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 77
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 78
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 79
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 80
    iput v4, p0, Landroid/location/Location;->mDistance:F

    .line 81
    iput v4, p0, Landroid/location/Location;->mInitialBearing:F

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 112
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "provider"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 62
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 63
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 64
    iput-boolean v5, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 65
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 66
    iput-boolean v5, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 67
    iput v4, p0, Landroid/location/Location;->mSpeed:F

    .line 68
    iput-boolean v5, p0, Landroid/location/Location;->mHasBearing:Z

    .line 69
    iput v4, p0, Landroid/location/Location;->mBearing:F

    .line 70
    iput-boolean v5, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 71
    iput v4, p0, Landroid/location/Location;->mAccuracy:F

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 76
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 77
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 78
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 79
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 80
    iput v4, p0, Landroid/location/Location;->mDistance:F

    .line 81
    iput v4, p0, Landroid/location/Location;->mInitialBearing:F

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 104
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$602(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .locals 87
    .parameter "lat1"
    .parameter "lon1"
    .parameter "lat2"
    .parameter "lon2"
    .parameter "results"

    .prologue
    .line 277
    const/16 v12, 0x14

    .line 279
    .local v12, MAXITERS:I
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p0, p0, v75

    .line 280
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p4, p4, v75

    .line 281
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p2, p2, v75

    .line 282
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p6, p6, v75

    .line 284
    const-wide v17, 0x415854a640000000L

    .line 285
    .local v17, a:D
    const-wide v21, 0x41583fc4141bda51L

    .line 286
    .local v21, b:D
    sub-double v75, v17, v21

    div-double v44, v75, v17

    .line 287
    .local v44, f:D
    mul-double v75, v17, v17

    mul-double v77, v21, v21

    sub-double v75, v75, v77

    mul-double v77, v21, v21

    div-double v19, v75, v77

    .line 289
    .local v19, aSqMinusBSqOverBSq:D
    sub-double v10, p6, p2

    .line 290
    .local v10, L:D
    const-wide/16 v4, 0x0

    .line 291
    .local v4, A:D
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v44

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 292
    .local v13, U1:D
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v44

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    .line 294
    .local v15, U2:D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    .line 295
    .local v33, cosU1:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 296
    .local v37, cosU2:D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v63

    .line 297
    .local v63, sinU1:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v67

    .line 298
    .local v67, sinU2:D
    mul-double v35, v33, v37

    .line 299
    .local v35, cosU1cosU2:D
    mul-double v65, v63, v67

    .line 301
    .local v65, sinU1sinU2:D
    const-wide/16 v53, 0x0

    .line 302
    .local v53, sigma:D
    const-wide/16 v41, 0x0

    .line 303
    .local v41, deltaSigma:D
    const-wide/16 v31, 0x0

    .line 304
    .local v31, cosSqAlpha:D
    const-wide/16 v23, 0x0

    .line 305
    .local v23, cos2SM:D
    const-wide/16 v29, 0x0

    .line 306
    .local v29, cosSigma:D
    const-wide/16 v59, 0x0

    .line 307
    .local v59, sinSigma:D
    const-wide/16 v27, 0x0

    .line 308
    .local v27, cosLambda:D
    const-wide/16 v57, 0x0

    .line 310
    .local v57, sinLambda:D
    move-wide/from16 v49, v10

    .line 311
    .local v49, lambda:D
    const/16 v48, 0x0

    .local v48, iter:I
    :goto_0
    move/from16 v0, v48

    if-ge v0, v12, :cond_0

    .line 312
    move-wide/from16 v51, v49

    .line 313
    .local v51, lambdaOrig:D
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 314
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v57

    .line 315
    mul-double v69, v37, v57

    .line 316
    .local v69, t1:D
    mul-double v75, v33, v67

    mul-double v77, v63, v37

    mul-double v77, v77, v27

    sub-double v71, v75, v77

    .line 317
    .local v71, t2:D
    mul-double v75, v69, v69

    mul-double v77, v71, v71

    add-double v61, v75, v77

    .line 318
    .local v61, sinSqSigma:D
    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    .line 319
    mul-double v75, v35, v27

    add-double v29, v65, v75

    .line 320
    move-wide/from16 v0, v59

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v53

    .line 321
    const-wide/16 v75, 0x0

    cmpl-double v75, v59, v75

    if-nez v75, :cond_2

    const-wide/16 v55, 0x0

    .line 323
    .local v55, sinAlpha:D
    :goto_1
    const-wide/high16 v75, 0x3ff0

    mul-double v77, v55, v55

    sub-double v31, v75, v77

    .line 324
    const-wide/16 v75, 0x0

    cmpl-double v75, v31, v75

    if-nez v75, :cond_3

    const-wide/16 v23, 0x0

    .line 327
    :goto_2
    mul-double v73, v31, v19

    .line 328
    .local v73, uSquared:D
    const-wide/high16 v75, 0x3ff0

    const-wide/high16 v77, 0x40d0

    div-double v77, v73, v77

    const-wide/high16 v79, 0x40b0

    const-wide/high16 v81, -0x3f78

    const-wide/high16 v83, 0x4074

    const-wide v85, 0x4065e00000000000L

    mul-double v85, v85, v73

    sub-double v83, v83, v85

    mul-double v83, v83, v73

    add-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v4, v75, v77

    .line 331
    const-wide/high16 v75, 0x4090

    div-double v75, v73, v75

    const-wide/high16 v77, 0x4070

    const-wide/high16 v79, -0x3fa0

    const-wide v81, 0x4052800000000000L

    const-wide v83, 0x4047800000000000L

    mul-double v83, v83, v73

    sub-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v79, v79, v73

    add-double v77, v77, v79

    mul-double v6, v75, v77

    .line 334
    .local v6, B:D
    const-wide/high16 v75, 0x4030

    div-double v75, v44, v75

    mul-double v75, v75, v31

    const-wide/high16 v77, 0x4010

    const-wide/high16 v79, 0x4010

    const-wide/high16 v81, 0x4008

    mul-double v81, v81, v31

    sub-double v79, v79, v81

    mul-double v79, v79, v44

    add-double v77, v77, v79

    mul-double v8, v75, v77

    .line 337
    .local v8, C:D
    mul-double v25, v23, v23

    .line 338
    .local v25, cos2SMSq:D
    mul-double v75, v6, v59

    const-wide/high16 v77, 0x4010

    div-double v77, v6, v77

    const-wide/high16 v79, -0x4010

    const-wide/high16 v81, 0x4000

    mul-double v81, v81, v25

    add-double v79, v79, v81

    mul-double v79, v79, v29

    const-wide/high16 v81, 0x4018

    div-double v81, v6, v81

    mul-double v81, v81, v23

    const-wide/high16 v83, -0x3ff8

    const-wide/high16 v85, 0x4010

    mul-double v85, v85, v59

    mul-double v85, v85, v59

    add-double v83, v83, v85

    mul-double v81, v81, v83

    const-wide/high16 v83, -0x3ff8

    const-wide/high16 v85, 0x4010

    mul-double v85, v85, v25

    add-double v83, v83, v85

    mul-double v81, v81, v83

    sub-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v77, v77, v23

    mul-double v41, v75, v77

    .line 345
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v8

    mul-double v75, v75, v44

    mul-double v75, v75, v55

    mul-double v77, v8, v59

    mul-double v79, v8, v29

    const-wide/high16 v81, -0x4010

    const-wide/high16 v83, 0x4000

    mul-double v83, v83, v23

    mul-double v83, v83, v23

    add-double v81, v81, v83

    mul-double v79, v79, v81

    add-double v79, v79, v23

    mul-double v77, v77, v79

    add-double v77, v77, v53

    mul-double v75, v75, v77

    add-double v49, v10, v75

    .line 351
    sub-double v75, v49, v51

    div-double v39, v75, v49

    .line 352
    .local v39, delta:D
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v75

    const-wide v77, 0x3d719799812dea11L

    cmpg-double v75, v75, v77

    if-gez v75, :cond_4

    .line 357
    .end local v6           #B:D
    .end local v8           #C:D
    .end local v25           #cos2SMSq:D
    .end local v39           #delta:D
    .end local v51           #lambdaOrig:D
    .end local v55           #sinAlpha:D
    .end local v61           #sinSqSigma:D
    .end local v69           #t1:D
    .end local v71           #t2:D
    .end local v73           #uSquared:D
    :cond_0
    mul-double v75, v21, v4

    sub-double v77, v53, v41

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v43, v0

    .line 358
    .local v43, distance:F
    const/16 v75, 0x0

    aput v43, p8, v75

    .line 359
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 360
    mul-double v75, v37, v57

    mul-double v77, v33, v67

    mul-double v79, v63, v37

    mul-double v79, v79, v27

    sub-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 362
    .local v47, initialBearing:F
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 363
    const/16 v75, 0x1

    aput v47, p8, v75

    .line 364
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x2

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 365
    mul-double v75, v33, v57

    move-wide/from16 v0, v63

    neg-double v0, v0

    move-wide/from16 v77, v0

    mul-double v77, v77, v37

    mul-double v79, v33, v67

    mul-double v79, v79, v27

    add-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 367
    .local v46, finalBearing:F
    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 368
    const/16 v75, 0x2

    aput v46, p8, v75

    .line 371
    .end local v46           #finalBearing:F
    .end local v47           #initialBearing:F
    :cond_1
    return-void

    .line 321
    .end local v43           #distance:F
    .restart local v51       #lambdaOrig:D
    .restart local v61       #sinSqSigma:D
    .restart local v69       #t1:D
    .restart local v71       #t2:D
    :cond_2
    mul-double v75, v35, v57

    div-double v55, v75, v59

    goto/16 :goto_1

    .line 324
    .restart local v55       #sinAlpha:D
    :cond_3
    const-wide/high16 v75, 0x4000

    mul-double v75, v75, v65

    div-double v75, v75, v31

    sub-double v23, v29, v75

    goto/16 :goto_2

    .line 311
    .restart local v6       #B:D
    .restart local v8       #C:D
    .restart local v25       #cos2SMSq:D
    .restart local v39       #delta:D
    .restart local v73       #uSquared:D
    :cond_4
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 21
    .parameter "coordinate"

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "coordinate"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 216
    :cond_0
    const/4 v8, 0x0

    .line 217
    .local v8, negative:Z
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 218
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    const/4 v8, 0x1

    .line 222
    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v13, st:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .line 224
    .local v14, tokens:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 225
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 228
    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, degrees:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 231
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 232
    .local v15, val:D
    if-eqz v8, :cond_3

    neg-double v0, v15

    move-wide/from16 v17, v0

    .line 266
    :goto_0
    return-wide v17

    :cond_3
    move-wide/from16 v17, v15

    .line 232
    goto :goto_0

    .line 235
    .end local v15           #val:D
    :cond_4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, minutes:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 238
    .local v2, deg:I
    const-wide/16 v10, 0x0

    .line 240
    .local v10, sec:D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 241
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-double v5, v0

    .line 242
    .local v5, min:D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, seconds:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 248
    .end local v12           #seconds:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_7

    const/16 v17, 0xb4

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v5, v17

    if-nez v17, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v10, v17

    if-nez v17, :cond_7

    const/4 v4, 0x1

    .line 252
    .local v4, isNegative180:Z
    :goto_2
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_5

    const/16 v17, 0xb3

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    if-nez v4, :cond_8

    .line 253
    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v2           #deg:I
    .end local v3           #degrees:Ljava/lang/String;
    .end local v4           #isNegative180:Z
    .end local v5           #min:D
    .end local v7           #minutes:Ljava/lang/String;
    .end local v10           #sec:D
    :catch_0
    move-exception v9

    .line 268
    .local v9, nfe:Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 245
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v2       #deg:I
    .restart local v3       #degrees:Ljava/lang/String;
    .restart local v7       #minutes:Ljava/lang/String;
    .restart local v10       #sec:D
    :cond_6
    :try_start_1
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .restart local v5       #min:D
    goto :goto_1

    .line 248
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 255
    .restart local v4       #isNegative180:Z
    :cond_8
    const-wide/16 v17, 0x0

    cmpg-double v17, v5, v17

    if-ltz v17, :cond_9

    const-wide v17, 0x404d800000000000L

    cmpl-double v17, v5, v17

    if-lez v17, :cond_a

    .line 256
    :cond_9
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 259
    :cond_a
    const-wide/16 v17, 0x0

    cmpg-double v17, v10, v17

    if-ltz v17, :cond_b

    const-wide v17, 0x404d800000000000L

    cmpl-double v17, v10, v17

    if-lez v17, :cond_c

    .line 260
    :cond_b
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_c
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide v19, 0x40ac200000000000L

    mul-double v17, v17, v19

    const-wide/high16 v19, 0x404e

    mul-double v19, v19, v5

    add-double v17, v17, v19

    add-double v15, v17, v10

    .line 265
    .restart local v15       #val:D
    const-wide v17, 0x40ac200000000000L

    div-double v15, v15, v17

    .line 266
    if-eqz v8, :cond_d

    neg-double v0, v15

    move-wide/from16 v17, v0

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v17, v15

    goto/16 :goto_0
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 11
    .parameter "coordinate"
    .parameter "outputType"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x1

    const-wide/high16 v7, 0x404e

    const/4 v6, 0x2

    .line 164
    const-wide v4, -0x3f99800000000000L

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v9, :cond_2

    if-eq p2, v6, :cond_2

    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    .line 178
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    neg-double p0, p0

    .line 182
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, df:Ljava/text/DecimalFormat;
    if-eq p2, v9, :cond_4

    if-ne p2, v6, :cond_5

    .line 184
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 185
    .local v0, degrees:I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 188
    mul-double/2addr p0, v7

    .line 189
    if-ne p2, v6, :cond_5

    .line 190
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 191
    .local v2, minutes:I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 194
    mul-double/2addr p0, v7

    .line 197
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 2
    .parameter "startLatitude"
    .parameter "startLongitude"
    .parameter "endLatitude"
    .parameter "endLongitude"
    .parameter "results"

    .prologue
    .line 393
    if-eqz p8, :cond_0

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 398
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .parameter "dest"

    .prologue
    .line 437
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 439
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 443
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 444
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 445
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 446
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 447
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 448
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 450
    :cond_1
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v9

    return v0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .parameter "dest"

    .prologue
    .line 410
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 411
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 415
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 416
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 417
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 418
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 419
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 420
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 422
    :cond_1
    iget v0, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v9

    return v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 653
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    .prologue
    .line 543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 545
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 619
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 579
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 138
    iput-object v6, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 140
    iput-wide v3, p0, Landroid/location/Location;->mLatitude:D

    .line 141
    iput-wide v3, p0, Landroid/location/Location;->mLongitude:D

    .line 142
    iput-boolean v2, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 143
    iput-wide v3, p0, Landroid/location/Location;->mAltitude:D

    .line 144
    iput-boolean v2, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 145
    iput v5, p0, Landroid/location/Location;->mSpeed:F

    .line 146
    iput-boolean v2, p0, Landroid/location/Location;->mHasBearing:Z

    .line 147
    iput v5, p0, Landroid/location/Location;->mBearing:F

    .line 148
    iput-boolean v2, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 149
    iput v5, p0, Landroid/location/Location;->mAccuracy:F

    .line 150
    iput-object v6, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 151
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 119
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 120
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 121
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 122
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 123
    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 124
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 125
    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 126
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 127
    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 128
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 129
    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 130
    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 131
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 132
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 642
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 644
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .parameter "altitude"

    .prologue
    .line 534
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 536
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .parameter "bearing"

    .prologue
    const/high16 v1, 0x43b4

    .line 602
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 603
    add-float/2addr p1, v1

    goto :goto_0

    .line 605
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 606
    sub-float/2addr p1, v1

    goto :goto_1

    .line 608
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 610
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extras"

    .prologue
    .line 678
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 679
    return-void

    .line 678
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 496
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 497
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 510
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 511
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 466
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 568
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 570
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 482
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location[mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-wide v3, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 729
    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 730
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 731
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-wide v3, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 733
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 735
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 737
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 739
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 740
    return-void

    :cond_0
    move v0, v2

    .line 731
    goto :goto_0

    :cond_1
    move v0, v2

    .line 733
    goto :goto_1

    :cond_2
    move v0, v2

    .line 735
    goto :goto_2

    :cond_3
    move v1, v2

    .line 737
    goto :goto_3
.end method
