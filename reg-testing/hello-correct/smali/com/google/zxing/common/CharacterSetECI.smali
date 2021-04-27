.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "Cp437"

    invoke-direct {v0, v5, v3, v2, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 34
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    aput-object v6, v5, v3

    const-string v6, "ISO8859_1"

    invoke-direct {v0, v6, v4, v2, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 35
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "ISO-8859-2"

    aput-object v5, v2, v3

    const/4 v5, 0x4

    const-string v6, "ISO8859_2"

    invoke-direct {v0, v6, v1, v5, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 36
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v6, "ISO-8859-3"

    aput-object v6, v2, v3

    const/4 v6, 0x5

    const/4 v7, 0x3

    const-string v8, "ISO8859_3"

    invoke-direct {v0, v8, v7, v6, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 37
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v8, "ISO-8859-4"

    aput-object v8, v2, v3

    const/4 v8, 0x6

    const-string v9, "ISO8859_4"

    invoke-direct {v0, v9, v5, v8, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v9, "ISO-8859-5"

    aput-object v9, v2, v3

    const/4 v9, 0x7

    const-string v10, "ISO8859_5"

    invoke-direct {v0, v10, v6, v9, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 39
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v10, "ISO-8859-6"

    aput-object v10, v2, v3

    const/16 v10, 0x8

    const-string v11, "ISO8859_6"

    invoke-direct {v0, v11, v8, v10, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v11, "ISO-8859-7"

    aput-object v11, v2, v3

    const/16 v11, 0x9

    const-string v12, "ISO8859_7"

    invoke-direct {v0, v12, v9, v11, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 41
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v12, "ISO-8859-8"

    aput-object v12, v2, v3

    const/16 v12, 0xa

    const-string v13, "ISO8859_8"

    invoke-direct {v0, v13, v10, v12, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 42
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "ISO-8859-9"

    aput-object v13, v2, v3

    const/16 v13, 0xb

    const-string v14, "ISO8859_9"

    invoke-direct {v0, v14, v11, v13, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 43
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v14, "ISO-8859-10"

    aput-object v14, v2, v3

    const/16 v14, 0xc

    const-string v15, "ISO8859_10"

    invoke-direct {v0, v15, v12, v14, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 44
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v15, "ISO-8859-11"

    aput-object v15, v2, v3

    const/16 v15, 0xd

    const-string v12, "ISO8859_11"

    invoke-direct {v0, v12, v13, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 45
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v12, "ISO-8859-13"

    aput-object v12, v2, v3

    const/16 v12, 0xf

    const-string v13, "ISO8859_13"

    invoke-direct {v0, v13, v14, v12, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 46
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "ISO-8859-14"

    aput-object v13, v2, v3

    const-string v13, "ISO8859_14"

    const/16 v14, 0x10

    invoke-direct {v0, v13, v15, v14, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 47
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "ISO-8859-15"

    aput-object v13, v2, v3

    const-string v13, "ISO8859_15"

    const/16 v14, 0xe

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 48
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "ISO-8859-16"

    aput-object v13, v2, v3

    const-string v13, "ISO8859_16"

    const/16 v14, 0x12

    invoke-direct {v0, v13, v12, v14, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 49
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "Shift_JIS"

    aput-object v13, v2, v3

    const-string v13, "SJIS"

    const/16 v14, 0x10

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 50
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "windows-1250"

    aput-object v13, v2, v3

    const-string v13, "Cp1250"

    const/16 v14, 0x11

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 51
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "windows-1251"

    aput-object v13, v2, v3

    const-string v13, "Cp1251"

    const/16 v14, 0x12

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 52
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "windows-1252"

    aput-object v13, v2, v3

    const-string v13, "Cp1252"

    const/16 v14, 0x13

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "windows-1256"

    aput-object v13, v2, v3

    const-string v13, "Cp1256"

    const/16 v14, 0x14

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 54
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v1, [Ljava/lang/String;

    const-string v13, "UTF-16BE"

    aput-object v13, v2, v3

    const-string v13, "UnicodeBig"

    aput-object v13, v2, v4

    const-string v13, "UnicodeBigUnmarked"

    const/16 v14, 0x15

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 55
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "UTF-8"

    aput-object v13, v2, v3

    const-string v13, "UTF8"

    const/16 v14, 0x16

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 56
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    new-array v13, v4, [Ljava/lang/String;

    const-string v14, "US-ASCII"

    aput-object v14, v13, v3

    const-string v14, "ASCII"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v2, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 57
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const-string v2, "Big5"

    const/16 v13, 0x18

    const/16 v14, 0x1c

    invoke-direct {v0, v2, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 58
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v7, [Ljava/lang/String;

    const-string v13, "GB2312"

    aput-object v13, v2, v3

    const-string v13, "EUC_CN"

    aput-object v13, v2, v4

    const-string v13, "GBK"

    aput-object v13, v2, v1

    const-string v13, "GB18030"

    const/16 v14, 0x19

    const/16 v15, 0x1d

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 59
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v4, [Ljava/lang/String;

    const-string v13, "EUC-KR"

    aput-object v13, v2, v3

    const-string v13, "EUC_KR"

    const/16 v14, 0x1a

    const/16 v15, 0x1e

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/zxing/common/CharacterSetECI;

    .line 30
    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v3

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v4

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 65
    iget-object v5, v4, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 66
    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    :cond_0
    sget-object v5, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, v4, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 70
    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    new-array p3, v1, [Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p3, p1, p2

    .line 83
    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 84
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 89
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
