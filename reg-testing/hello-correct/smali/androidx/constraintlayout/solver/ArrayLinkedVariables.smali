.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "isNew"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "isNew"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 14

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v6, v8, :cond_2

    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object/from16 p3, v2

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p3, v5

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object/from16 p2, v2

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move/from16 p3, v2

    aput p3, p2, v5

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object/from16 p2, v2

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move/from16 p3, v2

    aput v8, p2, p3

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    move/from16 p2, v2

    add-int p2, p2, v9

    move/from16 v2, p2

    iput v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 p2, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object/from16 p2, v2

    move-object/from16 v0, p2

    array-length v1, v0

    move/from16 p3, v1

    move/from16 v1, p3

    if-lt p1, v1, :cond_1

    iput-boolean v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    move-object/from16 v0, p2

    array-length p1, v0

    sub-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_0
    if-eq v6, v8, :cond_9

    iget v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v10, v12, :cond_9

    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v12, v12, v6

    iget v13, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v12, v13, :cond_7

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v7, v6

    add-float v8, v8, p2

    aput v8, v7, v6

    aget p2, v7, v6

    cmpl-float p2, p2, v5

    if-nez p2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move/from16 p2, v2

    move/from16 v1, p2

    if-ne v6, v1, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object/from16 p2, v2

    aget p2, p2, v6

    move/from16 v2, p2

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object/from16 p2, v2

    aget v5, p2, v6

    aput v5, p2, v11

    :goto_1
    if-eqz p3, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 p2, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_4
    iget-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    move/from16 p2, v2

    if-eqz p2, :cond_5

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_5
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    move/from16 p2, v2

    sub-int p2, p2, v9

    move/from16 v2, p2

    iput v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v12, v12, v6

    iget v13, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v12, v13, :cond_8

    move v11, v6

    :cond_8
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v12, v6

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move/from16 p3, v2

    add-int/lit8 v5, p3, 0x1

    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_b

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v5, p3

    if-ne v6, v8, :cond_a

    goto/16 :goto_2

    :cond_a
    array-length v1, v5

    move/from16 p3, v1

    goto/16 :goto_2

    :cond_b
    move/from16 p3, v5

    :goto_2
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v5

    move/from16 v0, p3

    if-lt v0, v6, :cond_d

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v5, v5

    if-ge v6, v5, :cond_d

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v6

    if-ge v5, v10, :cond_d

    aget v6, v6, v5

    if-ne v6, v8, :cond_c

    move/from16 p3, v5

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_4
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v5

    move/from16 v0, p3

    if-lt v0, v6, :cond_e

    array-length v1, v5

    move/from16 p3, v1

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v5, p3, -0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_e
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, v5, p3

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v5, p3

    if-eq v11, v8, :cond_f

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object/from16 p2, v2

    aget v5, p2, v11

    aput v5, p2, p3

    aput p3, p2, v11

    goto/16 :goto_5

    :cond_f
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object/from16 p2, v2

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v5, p2, p3

    move/from16 v2, p3

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    :goto_5
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    move/from16 p2, v2

    add-int p2, p2, v9

    move/from16 v2, p2

    iput v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 p2, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_10

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_10
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object/from16 p2, v2

    move-object/from16 v0, p2

    array-length v1, v0

    move/from16 p3, v1

    move/from16 v1, p3

    if-lt p1, v1, :cond_11

    iput-boolean v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    move-object/from16 v0, p2

    array-length p1, v0

    sub-int/2addr p1, v9

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_11
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 19

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "chooseSubject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, -0x1

    if-eq v5, v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v14, v14, v5

    const v15, 0x3a83126f    # 0.001f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v2, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object/from16 v17, v2

    aget v17, v17, v5

    aget-object v16, v16, v17

    cmpg-float v17, v14, v8

    if-gez v17, :cond_0

    const v15, -0x457ced91    # -0.001f

    cmpl-float v15, v14, v15

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v8, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v0, v16

    move-object/from16 v1, v14

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_1

    :cond_0
    cmpg-float v15, v14, v15

    if-gez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v8, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v0, v16

    move-object/from16 v1, v14

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :goto_1
    const/4 v14, 0x0

    :cond_1
    const/4 v15, 0x1

    cmpl-float v17, v14, v8

    if-eqz v17, :cond_7

    move-object/from16 v0, v16

    iget-object v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v17, v2

    sget-object v18, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    :goto_2
    move v11, v9

    move v10, v14

    move-object/from16 v9, v16

    goto/16 :goto_4

    :cond_2
    cmpl-float v17, v10, v14

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    goto/16 :goto_2

    :cond_3
    if-nez v11, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v17

    if-eqz v17, :cond_7

    move v10, v14

    move-object/from16 v9, v16

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_4
    if-nez v9, :cond_7

    cmpg-float v17, v14, v8

    if-gez v17, :cond_7

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    :goto_3
    move v13, v6

    move v12, v14

    move-object/from16 v6, v16

    goto/16 :goto_4

    :cond_5
    cmpl-float v17, v12, v14

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    goto/16 :goto_3

    :cond_6
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v17

    if-eqz v17, :cond_7

    move v12, v14

    move-object/from16 v6, v16

    const/4 v13, 0x1

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v14, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v9, :cond_9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "chooseSubject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_9
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "chooseSubject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public final clear()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v9, :cond_1

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v5

    aget-object v8, v8, v9

    if-eqz v8, :cond_0

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_0
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iput v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iput v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iput-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eq v5, v6, :cond_2

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_2

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v5

    iget v10, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v9, v10, :cond_1

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method public display()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "display"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "{ "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, " = "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, " "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " }"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "println"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/PrintStream;"

    const-string v1, "println"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "display"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method divideByAmount(F)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "divideByAmount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v7, v5

    div-float/2addr v8, p1

    aput v8, v7, v5

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "divideByAmount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v5

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v5

    aget-object v8, v8, v9

    if-eqz v7, :cond_0

    iget v9, v7, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget v10, v8, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v9, v10, :cond_1

    :cond_0
    move-object v7, v8

    :cond_1
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eq v5, v10, :cond_3

    iget v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v10, :cond_3

    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v10, v10, v5

    cmpg-float v10, v10, v6

    if-gez v10, :cond_2

    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v5

    aget-object v10, v10, v11

    if-eqz p1, :cond_0

    iget v11, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v11, p1, v11

    if-nez v11, :cond_2

    :cond_0
    if-eq v10, p2, :cond_2

    iget-object v11, v10, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v12, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v11, v12, :cond_1

    iget-object v11, v10, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v12, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v11, v12, :cond_2

    :cond_1
    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v11, v11, v5

    cmpg-float v12, v11, v9

    if-gez v12, :cond_2

    move-object v8, v10

    move v9, v11

    :cond_2
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v10, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getPivotCandidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_1

    if-ne v6, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v6, v5

    aget-object p1, p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method final getVariableValue(I)F
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariableValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_1

    if-ne v6, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariableValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "getVariableValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "hasAtLeastOnePositiveVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "hasAtLeastOnePositiveVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "hasAtLeastOnePositiveVariable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method invert()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "invert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v7, v5

    const/high16 v9, -0x40800000    # -1.0f

    mul-float v8, v8, v9

    aput v8, v7, v5

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "invert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v6, v7

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, p2, v7

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v8, p2, v6

    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v5

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, p2

    if-lt p1, v6, :cond_1

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    array-length p1, p2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_0
    if-eq v6, v8, :cond_5

    iget v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v11, :cond_5

    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v6

    iget v12, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v11, v12, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v6

    iget v12, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v11, v12, :cond_4

    move v10, v6

    :cond_4
    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v11, v6

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v9, v6, 0x1

    iget-boolean v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v11, :cond_7

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v9, v6

    if-ne v11, v8, :cond_6

    goto/16 :goto_1

    :cond_6
    array-length v6, v9

    goto/16 :goto_1

    :cond_7
    move v6, v9

    :goto_1
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v11, v9

    if-lt v6, v11, :cond_9

    iget v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v9, v9

    if-ge v11, v9, :cond_9

    const/4 v9, 0x0

    :goto_2
    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    aget v11, v11, v9

    if-ne v11, v8, :cond_8

    move v6, v9

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_3
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v11, v9

    if-lt v6, v11, :cond_a

    array-length v6, v9

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    :cond_a
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v9, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v9, v7, v6

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v7, v6

    if-eq v10, v8, :cond_b

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, p2, v10

    aput v7, p2, v6

    aput v6, p2, v10

    goto/16 :goto_4

    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v7, p2, v6

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    :goto_4
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v5

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_c

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_c
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    :cond_d
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, p2

    if-lt p1, v6, :cond_e

    iput-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    array-length p1, p2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_e
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v5, p1, :cond_0

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_0
    if-eq v5, v7, :cond_6

    iget v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v10, :cond_6

    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v10, v10, v5

    iget v11, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v10, v11, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v5

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v8, v6, v5

    aput v8, v6, v9

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_3
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v7, p1, v5

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_4

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_5
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v9, v9, v5

    add-int/lit8 v8, v8, 0x1

    move v12, v9

    move v9, v5

    move v5, v12

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method sizeInBytes()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "sizeInBytes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x24

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "sizeInBytes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const-string v6, ""

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, " -> "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, " : "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v5

    aget-object v6, v6, v9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 13

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "updateFromRow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v9, :cond_3

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v5

    iget-object v10, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v9, v10, :cond_2

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v7, v5

    iget-object v7, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    iget-object v7, p2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v9, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v10, 0x0

    :goto_2
    if-eq v9, v8, :cond_0

    iget v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v10, v11, :cond_0

    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v11, v11, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v12, v12, v9

    aget-object v11, v11, v12

    iget-object v12, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v12, v12, v9

    mul-float v12, v12, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v11

    move/from16 v2, v12

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v9, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_0
    iget v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v8, p2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    iput v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    if-eqz p3, :cond_1

    iget-object v5, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_1
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "updateFromRow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 15

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "updateFromSystem"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v9, :cond_2

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v9, v9, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v10, v10, v5

    aget-object v9, v9, v10

    iget v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-eq v10, v8, :cond_1

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v7, v5

    const/4 v7, 0x1

    invoke-virtual {p0, v9, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v9, p2, v9

    iget-boolean v10, v9, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v10, :cond_0

    iget-object v10, v9, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v11, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v12, 0x0

    :goto_2
    if-eq v11, v8, :cond_0

    iget v13, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v12, v13, :cond_0

    iget-object v13, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v13, v13, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v14, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v14, v14, v11

    aget-object v13, v13, v14

    iget-object v14, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v14, v14, v11

    mul-float v14, v14, v5

    invoke-virtual {p0, v13, v14, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    iget-object v13, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v11, v13, v11

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_0
    move-object/from16 v0, p1

    iget v7, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v8, v9, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    move-object/from16 v0, p1

    iput v7, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget-object v5, v9, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/ArrayLinkedVariables;"

    const-string v1, "updateFromSystem"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
