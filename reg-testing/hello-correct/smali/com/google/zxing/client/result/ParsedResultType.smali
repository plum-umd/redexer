.class public final enum Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "ParsedResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum GEO:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum ISBN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum SMS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEL:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEXT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum URI:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum VIN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum WIFI:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 27
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v1, 0x0

    const-string v2, "ADDRESSBOOK"

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    .line 28
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v2, 0x1

    const-string v3, "EMAIL_ADDRESS"

    invoke-direct {v0, v3, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 29
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v3, 0x2

    const-string v4, "PRODUCT"

    invoke-direct {v0, v4, v3}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 30
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v4, 0x3

    const-string v5, "URI"

    invoke-direct {v0, v5, v4}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 31
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v5, 0x4

    const-string v6, "TEXT"

    invoke-direct {v0, v6, v5}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 32
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v6, 0x5

    const-string v7, "GEO"

    invoke-direct {v0, v7, v6}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    .line 33
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v7, 0x6

    const-string v8, "TEL"

    invoke-direct {v0, v8, v7}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    .line 34
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/4 v8, 0x7

    const-string v9, "SMS"

    invoke-direct {v0, v9, v8}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 35
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v9, 0x8

    const-string v10, "CALENDAR"

    invoke-direct {v0, v10, v9}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v10, 0x9

    const-string v11, "WIFI"

    invoke-direct {v0, v11, v10}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 37
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v11, 0xa

    const-string v12, "ISBN"

    invoke-direct {v0, v12, v11}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    .line 38
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v12, 0xb

    const-string v13, "VIN"

    invoke-direct {v0, v13, v12}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    sget-object v13, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->$VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .line 25
    const-class v0, Lcom/google/zxing/client/result/ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/result/ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->$VALUES:[Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method
