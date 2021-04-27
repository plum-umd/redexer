.class public Landroidx/constraintlayout/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/solver/LinearSystem$Row;


# static fields
.field private static final DEBUG:Z = false

.field private static final epsilon:F = 0.001f


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/solver/SolverVariable;

.field public final variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 31
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 34
    new-instance v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const-string v6, "ep"

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const-string v6, "em"

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v5, p1, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    const/high16 v6, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_1
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    const v6, 0x49742400    # 1000000.0f

    goto :goto_0

    :cond_2
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    const v6, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    :cond_3
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_4

    const v6, 0x5368d4a5    # 1.0E12f

    :cond_4
    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addSingleError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    int-to-float p2, p2

    invoke-virtual {v5, p1, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "addSingleError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "chooseSubject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    const/4 v5, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v6, :cond_1

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "chooseSubject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public clear()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const/16 v1, 0xa

    aput-object p6, v2, v1

    const/16 v1, 0xb

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowCentering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p3, p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowCentering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, p4, v6

    if-nez v6, :cond_2

    iget-object p4, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int p1, p1, p7

    int-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    cmpg-float v6, p4, v6

    if-gtz v6, :cond_3

    iget-object p4, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    int-to-float p1, p3

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto/16 :goto_0

    :cond_3
    cmpl-float v6, p4, v5

    if-ltz v6, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    move/from16 v0, p7

    int-to-float p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    sub-float v8, v5, p4

    mul-float v9, v8, v5

    invoke-virtual {v6, p1, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    mul-float v6, v8, v7

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    mul-float v7, v7, p4

    invoke-virtual {p1, p5, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    mul-float v5, v5, p4

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v8

    move/from16 v0, p7

    int-to-float p2, v0

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    :cond_6
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowCentering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDefinition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    int-to-float p2, p2

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDefinition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDimensionPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p4

    invoke-virtual {p1, p2, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDimensionPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 8

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xa

    aput-object p6, v2, v1

    const/16 v1, 0xb

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xc

    aput-object p8, v2, v1

    const/16 v1, 0xd

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xe

    aput-object p10, v2, v1

    const/16 v1, 0xf

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEqualDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-eqz v7, :cond_1

    cmpl-float v7, p1, p3

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    neg-int p2, p5

    sub-int/2addr p2, p7

    int-to-float p2, p2

    move/from16 v0, p9

    int-to-float p3, v0

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    move/from16 v0, p11

    int-to-float p3, v0

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p4, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p6, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p2

    move-object/from16 v1, p10

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    neg-float p1, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    neg-int p1, p5

    sub-int/2addr p1, p7

    add-int p1, p1, p9

    add-int p1, p1, p11

    int-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p4, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move/from16 v2, v6

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEqualDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const/16 v1, 0xa

    aput-object p6, v2, v1

    const/16 v1, 0xb

    aput-object p7, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEqualMatchDimensions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v5

    if-eqz v8, :cond_3

    cmpl-float v8, p1, p3

    if-nez v8, :cond_0

    goto/16 :goto_0

    :cond_0
    cmpl-float v8, p1, v5

    if-nez v8, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p4, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_1

    :cond_1
    cmpl-float v5, p3, v5

    if-nez v5, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v2, v6

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_1

    :cond_2
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p4, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    neg-float p1, p1

    invoke-virtual {p2, p6, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p4, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v2, v7

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEqualMatchDimensions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEquals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p2, :cond_0

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEquals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEquals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v5, 0x1

    :cond_0
    int-to-float p3, p3

    iput p3, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowEquals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowGreaterThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float p2, p2

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowGreaterThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowGreaterThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v5, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowGreaterThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowLowerThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v5, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowLowerThan"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowWithAngle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, p3, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p3, p4, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    neg-float p1, p5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "createRowWithAngle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method ensurePositiveConstant()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "ensurePositiveConstant"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v5, v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->invert()V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "ensurePositiveConstant"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getKey()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "getKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "getKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method hasKeyVariable()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "hasKeyVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "hasKeyVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "hasVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "hasVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "initFromRow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v5, :cond_0

    check-cast p1, Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_0

    iget-object v6, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget-object v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v7

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "initFromRow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "pickPivot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "pickPivot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method pivot(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "pivot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_0

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v5

    mul-float v5, v5, v6

    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v5, p1

    if-nez p1, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "pivot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    div-float/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->divideByAmount(F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "pivot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method sizeInBytes()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "sizeInBytes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v5, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "sizeInBytes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method toReadableString()Ljava/lang/String;
    .locals 14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "toReadableString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const-string v6, ""

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "0"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " = "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    :goto_2
    if-ge v7, v10, :cond_8

    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    if-nez v11, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v12, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v12

    cmpl-float v13, v12, v9

    if-nez v13, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v11

    const/high16 v13, -0x40800000    # -1.0f

    if-nez v6, :cond_4

    cmpg-float v6, v12, v9

    if-gez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "- "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    cmpl-float v6, v12, v9

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " + "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " - "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    mul-float v12, v12, v13

    :cond_6
    :goto_4
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v12, v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v12 .. v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, " "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    const/4 v6, 0x1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "0.0"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "toReadableString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayRow;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
