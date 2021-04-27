.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "00"

    aput-object v4, v2, v3

    const/16 v4, 0x12

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "01"

    aput-object v7, v2, v3

    const/16 v7, 0xe

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "02"

    aput-object v8, v2, v3

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    aput-object v2, v0, v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "10"

    aput-object v10, v9, v3

    sget-object v10, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v10, v9, v6

    const/16 v10, 0x14

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v1

    aput-object v9, v0, v2

    new-array v9, v1, [Ljava/lang/Object;

    const-string v12, "11"

    aput-object v12, v9, v3

    const/4 v12, 0x6

    .line 49
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v6

    const/4 v14, 0x4

    aput-object v9, v0, v14

    new-array v9, v1, [Ljava/lang/Object;

    const-string v14, "12"

    aput-object v14, v9, v3

    aput-object v13, v9, v6

    const/4 v14, 0x5

    aput-object v9, v0, v14

    new-array v9, v1, [Ljava/lang/Object;

    const-string v14, "13"

    aput-object v14, v9, v3

    aput-object v13, v9, v6

    aput-object v9, v0, v12

    new-array v9, v1, [Ljava/lang/Object;

    const-string v14, "15"

    aput-object v14, v9, v3

    aput-object v13, v9, v6

    const/4 v14, 0x7

    aput-object v9, v0, v14

    new-array v9, v1, [Ljava/lang/Object;

    const-string v14, "17"

    aput-object v14, v9, v3

    aput-object v13, v9, v6

    const/16 v14, 0x8

    aput-object v9, v0, v14

    new-array v9, v1, [Ljava/lang/Object;

    const-string v15, "20"

    aput-object v15, v9, v3

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v6

    const/16 v15, 0x9

    aput-object v9, v0, v15

    new-array v9, v2, [Ljava/lang/Object;

    const-string v15, "21"

    aput-object v15, v9, v3

    sget-object v15, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v15, v9, v6

    aput-object v11, v9, v1

    const/16 v15, 0xa

    aput-object v9, v0, v15

    new-array v9, v2, [Ljava/lang/Object;

    const-string v16, "22"

    aput-object v16, v9, v3

    .line 56
    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v9, v6

    const/16 v16, 0x1d

    .line 57
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v1

    const/16 v16, 0xb

    aput-object v9, v0, v16

    new-array v9, v2, [Ljava/lang/Object;

    const-string v16, "30"

    aput-object v16, v9, v3

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v9, v6

    .line 59
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v9, v1

    const/16 v16, 0xc

    aput-object v9, v0, v16

    new-array v9, v2, [Ljava/lang/Object;

    const-string v17, "37"

    aput-object v17, v9, v3

    sget-object v17, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v17, v9, v6

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v9, v1

    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v9, v0, v17

    new-array v9, v2, [Ljava/lang/Object;

    const-string v19, "90"

    aput-object v19, v9, v3

    sget-object v19, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v19, v9, v6

    const/16 v19, 0x1e

    .line 63
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v9, v1

    aput-object v9, v0, v7

    new-array v9, v2, [Ljava/lang/Object;

    const-string v21, "91"

    aput-object v21, v9, v3

    sget-object v21, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v21, v9, v6

    aput-object v20, v9, v1

    const/16 v21, 0xf

    .line 64
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v9, v0, v21

    new-array v9, v2, [Ljava/lang/Object;

    const-string v23, "92"

    aput-object v23, v9, v3

    sget-object v23, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v23, v9, v6

    aput-object v20, v9, v1

    const/16 v23, 0x10

    aput-object v9, v0, v23

    new-array v9, v2, [Ljava/lang/Object;

    const-string v23, "93"

    aput-object v23, v9, v3

    .line 65
    sget-object v23, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v23, v9, v6

    aput-object v20, v9, v1

    const/16 v23, 0x11

    aput-object v9, v0, v23

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "94"

    aput-object v24, v9, v3

    .line 66
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v4

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "95"

    aput-object v24, v9, v3

    .line 67
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x13

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "96"

    aput-object v24, v9, v3

    .line 68
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v10

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "97"

    aput-object v24, v9, v3

    .line 69
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x15

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "98"

    aput-object v24, v9, v3

    .line 70
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x16

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "99"

    aput-object v24, v9, v3

    .line 71
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x17

    aput-object v9, v0, v24

    .line 72
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "240"

    aput-object v24, v9, v3

    .line 75
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v3

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "241"

    aput-object v24, v9, v3

    .line 78
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v6

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "242"

    aput-object v24, v9, v3

    .line 79
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v13, v9, v1

    aput-object v9, v0, v1

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "250"

    aput-object v24, v9, v3

    .line 80
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v2

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "251"

    aput-object v24, v9, v3

    .line 81
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x4

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "253"

    aput-object v24, v9, v3

    .line 82
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    .line 83
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v9, v1

    const/16 v24, 0x5

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "254"

    aput-object v24, v9, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v11, v9, v1

    aput-object v9, v0, v12

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "400"

    aput-object v24, v9, v3

    .line 84
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    const/16 v24, 0x7

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "401"

    aput-object v24, v9, v3

    .line 86
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v14

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "402"

    aput-object v24, v9, v3

    .line 88
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v9, v6

    const/16 v24, 0x9

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "403"

    aput-object v24, v9, v3

    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v20, v9, v1

    aput-object v9, v0, v15

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "410"

    aput-object v24, v9, v3

    aput-object v18, v9, v6

    const/16 v24, 0xb

    aput-object v9, v0, v24

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "411"

    aput-object v24, v9, v3

    aput-object v18, v9, v6

    aput-object v9, v0, v16

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "412"

    aput-object v24, v9, v3

    aput-object v18, v9, v6

    aput-object v9, v0, v17

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "413"

    aput-object v24, v9, v3

    aput-object v18, v9, v6

    aput-object v9, v0, v7

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "414"

    aput-object v24, v9, v3

    aput-object v18, v9, v6

    aput-object v9, v0, v21

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "420"

    aput-object v24, v9, v3

    .line 94
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v11, v9, v1

    const/16 v24, 0x10

    aput-object v9, v0, v24

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "421"

    aput-object v24, v9, v3

    .line 95
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v22, v9, v1

    aput-object v9, v0, v23

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "422"

    aput-object v24, v9, v3

    aput-object v8, v9, v6

    aput-object v9, v0, v4

    new-array v9, v2, [Ljava/lang/Object;

    const-string v24, "423"

    aput-object v24, v9, v3

    .line 97
    sget-object v24, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v24, v9, v6

    aput-object v22, v9, v1

    const/16 v24, 0x13

    aput-object v9, v0, v24

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "424"

    aput-object v24, v9, v3

    aput-object v8, v9, v6

    aput-object v9, v0, v10

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "425"

    aput-object v24, v9, v3

    aput-object v8, v9, v6

    const/16 v24, 0x15

    aput-object v9, v0, v24

    new-array v9, v1, [Ljava/lang/Object;

    const-string v24, "426"

    aput-object v24, v9, v3

    aput-object v8, v9, v6

    const/16 v8, 0x16

    aput-object v9, v0, v8

    .line 101
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/16 v0, 0x39

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "310"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v3

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "311"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v6

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "312"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v1

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "313"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v2

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "314"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/4 v9, 0x4

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "315"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/4 v9, 0x5

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "316"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v12

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "320"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/4 v9, 0x7

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "321"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v14

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "322"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x9

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "323"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v15

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "324"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0xb

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "325"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v16

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "326"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v17

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "327"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v7

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "328"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v21

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "329"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x10

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "330"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v23

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "331"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v4

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "332"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x13

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "333"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v10

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "334"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x15

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "335"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x16

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "336"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x17

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "340"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x18

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "341"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x19

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "342"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x1a

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "343"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x1b

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "344"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x1c

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "345"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x1d

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "346"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    aput-object v8, v0, v19

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "347"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x1f

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "348"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x20

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "349"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x21

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "350"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x22

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "351"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x23

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "352"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x24

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "353"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x25

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "354"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x26

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "355"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x27

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "356"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x28

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "357"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x29

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "360"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2a

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "361"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2b

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "362"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2c

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "363"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2d

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "364"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2e

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "365"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x2f

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "366"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x30

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "367"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x31

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "368"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x32

    aput-object v8, v0, v9

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "369"

    aput-object v9, v8, v3

    aput-object v13, v8, v6

    const/16 v9, 0x33

    aput-object v8, v0, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "390"

    aput-object v9, v8, v3

    .line 158
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v22, v8, v1

    const/16 v9, 0x34

    aput-object v8, v0, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "391"

    aput-object v9, v8, v3

    .line 159
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v5, v8, v1

    const/16 v9, 0x35

    aput-object v8, v0, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "392"

    aput-object v9, v8, v3

    .line 160
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v22, v8, v1

    const/16 v9, 0x36

    aput-object v8, v0, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "393"

    aput-object v9, v8, v3

    .line 161
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v5, v8, v1

    const/16 v9, 0x37

    aput-object v8, v0, v9

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "703"

    aput-object v9, v8, v3

    .line 162
    sget-object v9, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v20, v8, v1

    const/16 v9, 0x38

    aput-object v8, v0, v9

    .line 163
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    new-array v0, v4, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "7001"

    aput-object v8, v4, v3

    aput-object v18, v4, v6

    aput-object v4, v0, v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "7002"

    aput-object v8, v4, v3

    .line 169
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    aput-object v20, v4, v1

    aput-object v4, v0, v6

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "7003"

    aput-object v8, v4, v3

    .line 171
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v4, v0, v1

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "8001"

    aput-object v8, v4, v3

    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v4, v0, v2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "8002"

    aput-object v8, v4, v3

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    aput-object v11, v4, v1

    const/4 v8, 0x4

    aput-object v4, v0, v8

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "8003"

    aput-object v8, v4, v3

    .line 174
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    aput-object v20, v4, v1

    const/4 v8, 0x5

    aput-object v4, v0, v8

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "8004"

    aput-object v8, v4, v3

    .line 175
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    aput-object v20, v4, v1

    aput-object v4, v0, v12

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "8005"

    aput-object v8, v4, v3

    aput-object v13, v4, v6

    const/4 v8, 0x7

    aput-object v4, v0, v8

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "8006"

    aput-object v8, v4, v3

    aput-object v5, v4, v6

    aput-object v4, v0, v14

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "8007"

    aput-object v8, v4, v3

    .line 178
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    aput-object v20, v4, v1

    const/16 v8, 0x9

    aput-object v4, v0, v8

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "8008"

    aput-object v8, v4, v3

    .line 179
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v4, v6

    .line 180
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v1

    aput-object v4, v0, v15

    new-array v4, v1, [Ljava/lang/Object;

    const-string v8, "8018"

    aput-object v8, v4, v3

    aput-object v5, v4, v6

    const/16 v5, 0xb

    aput-object v4, v0, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "8020"

    aput-object v5, v4, v3

    .line 181
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v5, v4, v6

    const/16 v5, 0x19

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v0, v16

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "8100"

    aput-object v5, v4, v3

    aput-object v13, v4, v6

    aput-object v4, v0, v17

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "8101"

    aput-object v5, v4, v3

    .line 184
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v4, v0, v7

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "8102"

    aput-object v5, v4, v3

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v4, v0, v21

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "8110"

    aput-object v5, v4, v3

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v5, v4, v6

    const/16 v5, 0x46

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x10

    aput-object v4, v0, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "8200"

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x46

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object v2, v0, v23

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 207
    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    aget-object v0, v7, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 209
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    aget-object v0, v7, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    .line 219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 222
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 224
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    .line 232
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 233
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 234
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_7
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 244
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    .line 247
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 248
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    .line 249
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_a
    aget-object v0, v8, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 241
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 201
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-lt v1, p1, :cond_1

    .line 269
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    .line 273
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 260
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_0

    .line 281
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 285
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 289
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
