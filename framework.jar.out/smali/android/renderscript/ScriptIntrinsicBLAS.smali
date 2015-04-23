.class public final Landroid/renderscript/ScriptIntrinsicBLAS;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBLAS.java"


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicBLAS;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/16 v2, 0xd

    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBLAS;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method static validateConjTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    .prologue
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static validateDiag(I)V
    .locals 2
    .param p0, "Diag"    # I

    .prologue
    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/16 v0, 0x84

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid diag passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v5, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .local v0, "M":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .local v1, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    :cond_2
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-lez p4, :cond_4

    if-gtz p6, :cond_5

    :cond_4
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v2, -0x1

    .local v2, "expectedXDim":I
    const/4 v3, -0x1

    .local v3, "expectedYDim":I
    const/16 v4, 0x6f

    if-ne p1, v4, :cond_7

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    :goto_0
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v4, v2, :cond_6

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_8

    :cond_6
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GEMV"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method static validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    :cond_2
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .local v1, "N":I
    if-lt v1, v5, :cond_4

    if-ge v0, v5, :cond_5

    :cond_4
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "M and N must be 1 or greater for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-lez p2, :cond_6

    if-gtz p4, :cond_7

    :cond_6
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_8

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_9

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    return-void
.end method

.method static validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    :cond_2
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .local v1, "N":I
    if-lez p2, :cond_4

    if-gtz p4, :cond_5

    :cond_4
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_6

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_7

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    return-void
.end method

.method static validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .local v0, "adim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with non-square A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x8d

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_5

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with invalid B"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_6
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with mismatched B and C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void
.end method

.method static validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .local v0, "cdim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_4

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v1, v0, :cond_4

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_5
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid A and B matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method

.method static validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .local v0, "cdim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method static validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 9
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "Side"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    const/16 v8, 0x71

    const/16 v7, 0x70

    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .local v3, "bN":I
    const/4 v4, -0x1

    .local v4, "cM":I
    const/4 v5, -0x1

    .local v5, "cN":I
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with wrong Element type"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    if-nez p6, :cond_4

    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Allocation C cannot be null"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v4

    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v5

    const/16 v6, 0x8e

    if-ne p3, v6, :cond_b

    if-nez p4, :cond_5

    if-nez p5, :cond_6

    :cond_5
    if-eqz p4, :cond_7

    if-nez p5, :cond_7

    :cond_6
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Provided Matrix A without Matrix B, or vice versa"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v1

    :cond_9
    :goto_0
    if-eqz p4, :cond_11

    if-eqz p5, :cond_11

    if-eqz p6, :cond_11

    if-ne v1, v2, :cond_a

    if-ne v0, v4, :cond_a

    if-eq v3, v5, :cond_14

    :cond_a
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    if-eqz p4, :cond_d

    if-eq p1, v7, :cond_c

    if-ne p1, v8, :cond_f

    :cond_c
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    :cond_d
    :goto_1
    if-eqz p5, :cond_9

    if-eq p2, v7, :cond_e

    if-ne p2, v8, :cond_10

    :cond_e
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v3

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v2

    goto :goto_0

    :cond_f
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v1

    goto :goto_1

    :cond_10
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    goto :goto_0

    :cond_11
    if-eqz p4, :cond_13

    if-eqz p6, :cond_13

    if-eq v4, v5, :cond_12

    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Matrix C is not symmetric"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    if-eq v0, v4, :cond_14

    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_13
    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    if-eq v1, v2, :cond_14

    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    return-void
.end method

.method static validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I
    .locals 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "Ap"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    :cond_2
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_5

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    if-lez p4, :cond_6

    if-gtz p6, :cond_7

    :cond_6
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p4

    add-int/lit8 v1, v3, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_8

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .local v2, "expectedYDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_9

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    return v0
.end method

.method static validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v3, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_2

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_3

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_4

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-gtz p3, :cond_5

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_6

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SPR"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    return v0
.end method

.method static validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    :cond_2
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_5

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    if-lez p3, :cond_6

    if-gtz p5, :cond_7

    :cond_6
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_8

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_9

    :cond_8
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPR2"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    return v0
.end method

.method static validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v0, :cond_0

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "A must be a square matrix for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_3

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    :cond_3
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    if-lez p5, :cond_5

    if-gtz p6, :cond_6

    :cond_5
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v1, v3, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_7

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .local v2, "expectedYDim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_8

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    return v0
.end method

.method static validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 4
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v0, v2, :cond_3

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "A must be a symmetric matrix"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-gtz p3, :cond_4

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_5

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SYR"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return v0
.end method

.method static validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    :cond_2
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "A must be a symmetric matrix"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    if-lez p3, :cond_5

    if-gtz p5, :cond_6

    :cond_5
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_8

    :cond_7
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYR"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    return v0
.end method

.method static validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, -0x1

    .local v0, "Cdim":I
    const/16 v1, 0x70

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    :goto_0
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_4

    :cond_2
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid symmetric matrix in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_5
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid A and B in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method

.method static validateSide(I)V
    .locals 2
    .param p0, "Side"    # I

    .prologue
    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid side passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    const/4 v3, 0x1

    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_2

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_3

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_4

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-gtz p6, :cond_5

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_6

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TPMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    return v0
.end method

.method static validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .local v3, "bN":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with a non-symmetric matrix A"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    const/16 v4, 0x8d

    if-ne p1, v4, :cond_3

    if-eq v1, v2, :cond_4

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-eq v3, v0, :cond_4

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    return-void
.end method

.method static validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 4
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v0, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "A must be a square matrix for TRMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-gtz p6, :cond_4

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_5

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TRMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method static validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v0, -0x1

    .local v0, "adim":I
    const/4 v1, -0x1

    .local v1, "bM":I
    const/4 v2, -0x1

    .local v2, "bN":I
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_2

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with a non-symmetric matrix A"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v2

    const/16 v3, 0x8d

    if-ne p1, v3, :cond_3

    if-eq v0, v1, :cond_4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    if-eq v0, v2, :cond_4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    return-void
.end method

.method static validateTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    .prologue
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static validateUplo(I)V
    .locals 2
    .param p0, "Uplo"    # I

    .prologue
    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid uplo passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;II)V
    .locals 17
    .param p1, "A"    # Landroid/renderscript/Allocation;
    .param p2, "a_offset"    # I
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "b_offset"    # I
    .param p5, "C"    # Landroid/renderscript/Allocation;
    .param p6, "c_offset"    # I
    .param p7, "c_mult"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const/16 v2, 0x6f

    const/16 v3, 0x70

    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    if-ltz p2, :cond_0

    const/16 v1, 0xff

    move/from16 v0, p2

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid a_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p4, :cond_2

    const/16 v1, 0xff

    move/from16 v0, p4

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid b_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v4, -0x1

    .local v4, "M":I
    const/4 v5, -0x1

    .local v5, "N":I
    const/4 v6, -0x1

    .local v6, "K":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    move/from16 v9, p2

    move/from16 v12, p4

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V

    return-void
.end method

.method public CGBMV(IIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Float2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Float2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p4

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p8

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move/from16 v6, p1

    move/from16 v24, p7

    move/from16 v25, p10

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CGEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_1
.end method

.method public CGEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CGERC(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v22, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CGERU(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x62

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v22, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHBMV(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Float2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    if-gez p2, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v24, p6

    move/from16 v25, p9

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x89

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHER(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHER2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x66

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHER2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, 0x0

    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v22, p6

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    goto :goto_0
.end method

.method public CHERK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, 0x0

    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v16, p3

    move/from16 v22, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public CHPMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x61

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x65

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CHPR2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x67

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CSYMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CSYR2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, -0x1

    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public CSYRK(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Float2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public CTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x45

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x46

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTRMM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x81

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTRSM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x82

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public CTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x44

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    return-void
.end method

.method public DGBMV(IIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # D
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "X"    # Landroid/renderscript/Allocation;
    .param p8, "incX"    # I
    .param p9, "beta"    # D
    .param p11, "Y"    # Landroid/renderscript/Allocation;
    .param p12, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x38

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p11

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move/from16 v6, p1

    move-wide/from16 v14, p4

    move-wide/from16 v20, p9

    move/from16 v24, p8

    move/from16 v25, p12

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DGEMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0

    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_1
.end method

.method public DGEMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x37

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DGER(DLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "alpha"    # D
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v14, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSBMV(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # D
    .param p10, "Y"    # Landroid/renderscript/Allocation;
    .param p11, "incY"    # I

    .prologue
    if-gez p2, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p11

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x58

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p8

    move/from16 v24, p7

    move/from16 v25, p11

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSPMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSPR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSYMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSYMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p6

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x57

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSYR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSYR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DSYR2K(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, -0x1

    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v22, p7

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public DSYRK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x79

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move-wide/from16 v14, p3

    move-wide/from16 v20, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public DTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTRMM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7b

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTRSM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7c

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public DTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    return-void
.end method

.method public SGBMV(IIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # F
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # F
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    move/from16 v7, p1

    move/from16 v15, p4

    move/from16 v20, p8

    move/from16 v23, p7

    move/from16 v24, p10

    move/from16 v25, p2

    move/from16 v26, p3

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SGEMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v12, -0x1

    .local v12, "M":I
    const/4 v13, -0x1

    .local v13, "N":I
    const/4 v14, -0x1

    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v14

    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x71

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v14

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_1
.end method

.method public SGEMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SGER(FLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "alpha"    # F
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x52

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v15, p1

    move/from16 v23, p3

    move/from16 v24, p5

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSBMV(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # F
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    if-gez p2, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v20, p7

    move/from16 v23, p6

    move/from16 v24, p9

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSPMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .local v15, "N":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSPR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x56

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSYMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x72

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSYMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x4f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSYR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .local v15, "N":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSYR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public SSYR2K(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/16 v16, -0x1

    .local v16, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v16

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x74

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p2

    move/from16 v12, p1

    move/from16 v17, p3

    move/from16 v22, p6

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v16

    goto :goto_0
.end method

.method public SSYRK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v14, -0x1

    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x73

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v15, p3

    move/from16 v20, p5

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v14

    goto :goto_0
.end method

.method public STBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .local v13, "N":I
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x36

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STRMM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x75

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, p5

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x31

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STRSM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x76

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, p5

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public STRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x34

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    return-void
.end method

.method public ZGBMV(IIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Double2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Double2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x48

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    move/from16 v6, p1

    move/from16 v28, p7

    move/from16 v29, p10

    move/from16 v30, p2

    move/from16 v31, p3

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZGEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x83

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_1
.end method

.method public ZGEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x47

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZGERC(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v26, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZGERU(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v26, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHBMV(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Double2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    if-gez p2, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x69

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v28, p6

    move/from16 v29, p9

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x68

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHER(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHER2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHER2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, 0x0

    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v24, p6

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    goto :goto_0
.end method

.method public ZHERK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    invoke-static {v4, v0, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, 0x0

    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v24, p6

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public ZHPMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZHPR2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x70

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZSYMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x84

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZSYR2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v15, -0x1

    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x86

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public ZSYRK(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Double2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    const/4 v13, -0x1

    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x85

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public ZTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v28, p7

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    if-gez p4, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v28, p7

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTRMM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x87

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x49

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTRSM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x88

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method

.method public ZTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    return-void
.end method
