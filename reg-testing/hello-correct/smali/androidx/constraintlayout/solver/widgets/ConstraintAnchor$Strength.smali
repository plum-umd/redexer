.class public final enum Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v2, 0x1

    const-string v3, "STRONG"

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v3, 0x2

    const-string v4, "WEAK"

    invoke-direct {v0, v4, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    aput-object v4, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
