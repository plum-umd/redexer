.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode EAN_13, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 10

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 69
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be 12 or 13 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 83
    sget-object v4, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v4, v2

    const/16 v4, 0x5f

    new-array v4, v4, [Z

    .line 87
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v6, 0x1

    invoke-static {v4, v0, v5, v6}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v5, v0

    move v7, v5

    const/4 v5, 0x1

    :goto_1
    const/4 v8, 0x6

    if-gt v5, v8, :cond_4

    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    sub-int/2addr v8, v5

    shr-int v8, v2, v8

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_3

    add-int/lit8 v9, v9, 0xa

    .line 95
    :cond_3
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v8, v8, v9

    invoke-static {v4, v7, v8, v0}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_4
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v4, v7, v2, v0}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v7, v0

    const/4 v0, 0x7

    :goto_2
    if-gt v0, v1, :cond_5

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 102
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v2, v5, v2

    invoke-static {v4, v7, v2, v6}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_5
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v4, v7, p1, v6}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    return-object v4

    :catch_1
    move-exception p1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
