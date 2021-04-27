.class public final enum Landroidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Landroidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Landroidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v1, 0x0

    const-string v2, "LIBRARY"

    invoke-direct {v0, v2, v1}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;

    .line 69
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_GROUP"

    invoke-direct {v0, v3, v2}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

    .line 77
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v3, 0x2

    const-string v4, "GROUP_ID"

    invoke-direct {v0, v4, v3}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->GROUP_ID:Landroidx/annotation/RestrictTo$Scope;

    .line 83
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v4, 0x3

    const-string v5, "TESTS"

    invoke-direct {v0, v5, v4}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;

    .line 91
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v5, 0x4

    const-string v6, "SUBCLASSES"

    invoke-direct {v0, v6, v5}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/annotation/RestrictTo$Scope;

    .line 58
    sget-object v6, Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;

    aput-object v6, v0, v1

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->GROUP_ID:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RestrictTo$Scope;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Landroidx/annotation/RestrictTo$Scope;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Landroidx/annotation/RestrictTo$Scope;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Landroidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Landroidx/annotation/RestrictTo$Scope;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/annotation/RestrictTo$Scope;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
