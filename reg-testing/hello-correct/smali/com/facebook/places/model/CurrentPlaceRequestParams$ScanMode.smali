.class public final enum Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
.super Ljava/lang/Enum;
.source "CurrentPlaceRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

.field public static final enum HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

.field public static final enum LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v1, 0x0

    const-string v2, "HIGH_ACCURACY"

    invoke-direct {v0, v2, v1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 65
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v2, 0x1

    const-string v3, "LOW_LATENCY"

    invoke-direct {v0, v3, v2}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 49
    sget-object v3, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->$VALUES:[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
