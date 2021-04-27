.class public final enum Lcom/facebook/login/DefaultAudience;
.super Ljava/lang/Enum;
.source "DefaultAudience.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/DefaultAudience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/DefaultAudience;

.field public static final enum EVERYONE:Lcom/facebook/login/DefaultAudience;

.field public static final enum FRIENDS:Lcom/facebook/login/DefaultAudience;

.field public static final enum NONE:Lcom/facebook/login/DefaultAudience;

.field public static final enum ONLY_ME:Lcom/facebook/login/DefaultAudience;


# instance fields
.field private final nativeProtocolAudience:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/facebook/login/DefaultAudience;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/login/DefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/DefaultAudience;->NONE:Lcom/facebook/login/DefaultAudience;

    .line 40
    new-instance v0, Lcom/facebook/login/DefaultAudience;

    const/4 v2, 0x1

    const-string v3, "ONLY_ME"

    const-string v4, "only_me"

    invoke-direct {v0, v3, v2, v4}, Lcom/facebook/login/DefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/DefaultAudience;->ONLY_ME:Lcom/facebook/login/DefaultAudience;

    .line 45
    new-instance v0, Lcom/facebook/login/DefaultAudience;

    const/4 v3, 0x2

    const-string v4, "FRIENDS"

    const-string v5, "friends"

    invoke-direct {v0, v4, v3, v5}, Lcom/facebook/login/DefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    .line 50
    new-instance v0, Lcom/facebook/login/DefaultAudience;

    const/4 v4, 0x3

    const-string v5, "EVERYONE"

    const-string v6, "everyone"

    invoke-direct {v0, v5, v4, v6}, Lcom/facebook/login/DefaultAudience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/DefaultAudience;->EVERYONE:Lcom/facebook/login/DefaultAudience;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/login/DefaultAudience;

    .line 31
    sget-object v5, Lcom/facebook/login/DefaultAudience;->NONE:Lcom/facebook/login/DefaultAudience;

    aput-object v5, v0, v1

    sget-object v1, Lcom/facebook/login/DefaultAudience;->ONLY_ME:Lcom/facebook/login/DefaultAudience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/DefaultAudience;->EVERYONE:Lcom/facebook/login/DefaultAudience;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/login/DefaultAudience;->$VALUES:[Lcom/facebook/login/DefaultAudience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/facebook/login/DefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/login/DefaultAudience;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/login/DefaultAudience;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/DefaultAudience;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/login/DefaultAudience;->$VALUES:[Lcom/facebook/login/DefaultAudience;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/login/DefaultAudience;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/login/DefaultAudience;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/login/DefaultAudience;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/login/DefaultAudience;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public getNativeProtocolAudience()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "getNativeProtocolAudience"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/DefaultAudience;->nativeProtocolAudience:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/DefaultAudience;"

    const-string v1, "getNativeProtocolAudience"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
