.class public final enum Lcom/facebook/places/PlaceManager$LocationError;
.super Ljava/lang/Enum;
.source "PlaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/PlaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/places/PlaceManager$LocationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/places/PlaceManager$LocationError;

.field public static final enum LOCATION_PERMISSION_DENIED:Lcom/facebook/places/PlaceManager$LocationError;

.field public static final enum LOCATION_SERVICES_DISABLED:Lcom/facebook/places/PlaceManager$LocationError;

.field public static final enum LOCATION_TIMEOUT:Lcom/facebook/places/PlaceManager$LocationError;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/places/PlaceManager$LocationError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 104
    new-instance v0, Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v1, 0x0

    const-string v2, "LOCATION_PERMISSION_DENIED"

    invoke-direct {v0, v2, v1}, Lcom/facebook/places/PlaceManager$LocationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_PERMISSION_DENIED:Lcom/facebook/places/PlaceManager$LocationError;

    .line 108
    new-instance v0, Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v2, 0x1

    const-string v3, "LOCATION_SERVICES_DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/facebook/places/PlaceManager$LocationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_SERVICES_DISABLED:Lcom/facebook/places/PlaceManager$LocationError;

    .line 112
    new-instance v0, Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v3, 0x2

    const-string v4, "LOCATION_TIMEOUT"

    invoke-direct {v0, v4, v3}, Lcom/facebook/places/PlaceManager$LocationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_TIMEOUT:Lcom/facebook/places/PlaceManager$LocationError;

    .line 116
    new-instance v0, Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/facebook/places/PlaceManager$LocationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/places/PlaceManager$LocationError;->UNKNOWN_ERROR:Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/places/PlaceManager$LocationError;

    .line 98
    sget-object v5, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_PERMISSION_DENIED:Lcom/facebook/places/PlaceManager$LocationError;

    aput-object v5, v0, v1

    sget-object v1, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_SERVICES_DISABLED:Lcom/facebook/places/PlaceManager$LocationError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_TIMEOUT:Lcom/facebook/places/PlaceManager$LocationError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/places/PlaceManager$LocationError;->UNKNOWN_ERROR:Lcom/facebook/places/PlaceManager$LocationError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/places/PlaceManager$LocationError;->$VALUES:[Lcom/facebook/places/PlaceManager$LocationError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/places/PlaceManager$LocationError;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/places/PlaceManager$LocationError;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/places/PlaceManager$LocationError;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/places/PlaceManager$LocationError;->$VALUES:[Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/places/PlaceManager$LocationError;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/places/PlaceManager$LocationError;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/PlaceManager$LocationError;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
