.class public final enum Lcom/facebook/FacebookRequestError$Category;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/FacebookRequestError$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/FacebookRequestError$Category;

.field public static final enum LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum OTHER:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum TRANSIENT:Lcom/facebook/FacebookRequestError$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 494
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v1, 0x0

    const-string v2, "LOGIN_RECOVERABLE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

    .line 499
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v2, 0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    .line 504
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v3, 0x2

    const-string v4, "TRANSIENT"

    invoke-direct {v0, v4, v3}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/FacebookRequestError$Category;

    .line 487
    sget-object v4, Lcom/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/facebook/FacebookRequestError$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/FacebookRequestError$Category;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/FacebookRequestError$Category;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/FacebookRequestError$Category;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/facebook/FacebookRequestError$Category;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/FacebookRequestError$Category;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/FacebookRequestError$Category;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/FacebookRequestError$Category;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
