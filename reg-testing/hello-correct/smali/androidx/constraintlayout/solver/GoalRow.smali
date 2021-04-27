.class public Landroidx/constraintlayout/solver/GoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/GoalRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/GoalRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
