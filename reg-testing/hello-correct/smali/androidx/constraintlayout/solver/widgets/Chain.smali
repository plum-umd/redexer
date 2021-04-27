.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 12

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

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Chain;"

    const-string v1, "applyChainConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move v8, v6

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v11, v8

    move v8, v7

    move-object v7, v11

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v9, v7, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p0, p1, p2, v6, v9}, Landroidx/constraintlayout/solver/widgets/Optimizer;->applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {p0, p1, p2, v6, v9}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, v6, v9}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Chain;"

    const-string v1, "applyChainConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .locals 40

    const/16 v2, 0x9

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

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Chain;"

    const-string v1, "applyChainConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    move-object/from16 v14, p1

    move-object/from16 v6, p4

    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v16, v2

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v17, v2

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v2

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, p2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x2

    if-nez p2, :cond_3

    iget v13, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v19, v2

    move/from16 v0, v19

    if-ne v0, v12, :cond_2

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_2
    const/16 v19, 0x0

    :goto_2
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v20, v2

    move/from16 v0, v20

    if-ne v0, v10, :cond_6

    goto/16 :goto_5

    :cond_3
    iget v13, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v19, v2

    move/from16 v0, v19

    if-ne v0, v12, :cond_5

    const/16 v19, 0x1

    goto/16 :goto_4

    :cond_5
    const/16 v19, 0x0

    :goto_4
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v20, v2

    move/from16 v0, v20

    if-ne v0, v10, :cond_6

    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    move/from16 v20, v13

    move-object v13, v15

    move/from16 v21, v19

    move/from16 v19, v10

    const/4 v10, 0x0

    :goto_7
    const/16 v26, 0x0

    if-nez v10, :cond_13

    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    if-nez v9, :cond_8

    if-eqz v19, :cond_7

    goto/16 :goto_8

    :cond_7
    const/16 v28, 0x4

    goto/16 :goto_9

    :cond_8
    :goto_8
    const/16 v28, 0x1

    :goto_9
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v29

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_9

    if-eq v13, v15, :cond_9

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v29, v29, v11

    :cond_9
    move/from16 v11, v29

    if-eqz v19, :cond_a

    if-eq v13, v15, :cond_a

    move-object/from16 v1, v17

    if-eq v13, v1, :cond_a

    move/from16 v29, v8

    move/from16 v28, v10

    const/4 v8, 0x6

    goto/16 :goto_a

    :cond_a
    if-eqz v20, :cond_b

    if-eqz v9, :cond_b

    move/from16 v29, v8

    move/from16 v28, v10

    const/4 v8, 0x4

    goto/16 :goto_a

    :cond_b
    move/from16 v29, v8

    move/from16 v8, v28

    move/from16 v28, v10

    :goto_a
    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_d

    move-object/from16 v1, v17

    if-ne v13, v1, :cond_c

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v30, v20

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v2

    move-object/from16 v31, v7

    const/4 v7, 0x5

    move-object/from16 v0, v14

    move-object/from16 v1, v10

    move-object/from16 v2, v20

    move/from16 v3, v11

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_b

    :cond_c
    move-object/from16 v31, v7

    move/from16 v30, v20

    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v20, 0x6

    move-object/from16 v0, v14

    move-object/from16 v1, v7

    move-object/from16 v2, v10

    move/from16 v3, v11

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_b
    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v14, v7, v10, v11, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_c

    :cond_d
    move-object/from16 v31, v7

    move/from16 v30, v20

    :goto_c
    if-eqz v9, :cond_f

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_e

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, p2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_e

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {v14, v7, v8, v11, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_d

    :cond_e
    const/4 v11, 0x0

    :goto_d
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x6

    invoke-virtual {v14, v7, v8, v11, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_f
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_11

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v8, v13, :cond_10

    goto/16 :goto_e

    :cond_10
    move-object/from16 v26, v7

    :cond_11
    :goto_e
    if-eqz v26, :cond_12

    move-object/from16 v13, v26

    move/from16 v10, v28

    goto/16 :goto_f

    :cond_12
    const/4 v10, 0x1

    :goto_f
    move/from16 v8, v29

    move/from16 v20, v30

    move-object/from16 v7, v31

    goto/16 :goto_7

    :cond_13
    move-object/from16 v31, v7

    move/from16 v29, v8

    move/from16 v30, v20

    if-eqz v18, :cond_14

    move-object/from16 v0, v16

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_14

    move-object/from16 v0, v18

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v8

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v11, v8

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v11, 0x5

    invoke-virtual {v14, v10, v8, v7, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_10

    :cond_14
    const/4 v11, 0x5

    :goto_10
    if-eqz v9, :cond_15

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v7

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v9, v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    const/4 v9, 0x6

    invoke-virtual {v14, v5, v8, v7, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_15
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v5, :cond_1b

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    if-le v7, v8, :cond_1b

    iget-boolean v9, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v9, :cond_16

    iget-boolean v9, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v9, :cond_16

    iget v9, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v9, v9

    goto/16 :goto_11

    :cond_16
    move/from16 v9, v29

    :goto_11
    const/4 v10, 0x0

    move-object/from16 v13, v26

    const/4 v12, 0x0

    const/16 v33, 0x0

    :goto_12
    if-ge v12, v7, :cond_1b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v20, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v20, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v0, v20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v8, v8, p2

    cmpg-float v28, v8, v10

    if-gez v28, :cond_18

    iget-boolean v8, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v8, :cond_17

    move-object/from16 v0, v20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v8, v8, v28

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v2

    aget-object v20, v20, p3

    move-object/from16 v0, v20

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v2

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v0, v14

    move-object/from16 v1, v8

    move-object/from16 v2, v20

    move/from16 v3, v11

    move/from16 v4, v10

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v10, 0x0

    const/4 v11, 0x6

    goto/16 :goto_14

    :cond_17
    const/4 v10, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_13

    :cond_18
    const/4 v10, 0x4

    :goto_13
    const/4 v11, 0x0

    cmpl-float v25, v8, v11

    if-nez v25, :cond_19

    move-object/from16 v0, v20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v8, v8, v25

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v2

    aget-object v20, v20, p3

    move-object/from16 v0, v20

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v2

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object/from16 v0, v14

    move-object/from16 v1, v8

    move-object/from16 v2, v20

    move/from16 v3, v10

    move/from16 v4, v11

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :goto_14
    move-object/from16 v29, v5

    move/from16 v27, v7

    goto/16 :goto_16

    :cond_19
    const/4 v10, 0x0

    const/4 v11, 0x6

    if-eqz v13, :cond_1a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v27, p3, 0x1

    aget-object v13, v13, v27

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v20

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v29, v5

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v27

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v27, v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object/from16 v32, v7

    move/from16 v34, v9

    move/from16 v35, v8

    move-object/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v38, v11

    move-object/from16 v39, v5

    invoke-virtual/range {v32 .. v39}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v14, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_15

    :cond_1a
    move-object/from16 v29, v5

    move/from16 v27, v7

    :goto_15
    move/from16 v33, v8

    move-object/from16 v13, v20

    :goto_16
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v27

    move-object/from16 v5, v29

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    goto/16 :goto_12

    :cond_1b
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1c

    if-eqz v19, :cond_21

    :cond_1c
    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    move-object/from16 v0, v16

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1d

    iget-object v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_17

    :cond_1d
    move-object/from16 v8, v26

    :goto_17
    move-object/from16 v0, v16

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1e

    move-object/from16 v0, v16

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v10, v9

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v10, v26

    :goto_18
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    move-object/from16 v0, v17

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v7

    :cond_1f
    if-eqz v8, :cond_45

    if-eqz v10, :cond_45

    if-nez p2, :cond_20

    move-object/from16 v7, v31

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto/16 :goto_19

    :cond_20
    move-object/from16 v7, v31

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_19
    move v9, v7

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v15, 0x5

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v8

    move v8, v11

    move-object v11, v13

    move v13, v15

    invoke-virtual/range {v5 .. v13}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_30

    :cond_21
    if-eqz v30, :cond_33

    if-eqz v17, :cond_33

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v5, :cond_22

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v5, v6, :cond_22

    const/16 v22, 0x1

    goto/16 :goto_1a

    :cond_22
    const/16 v22, 0x0

    :goto_1a
    move-object/from16 v19, v17

    move-object/from16 v20, v19

    :goto_1b
    if-eqz v19, :cond_45

    move-object/from16 v0, v19

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p2

    move-object v13, v5

    :goto_1c
    if-eqz v13, :cond_23

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    if-ne v5, v12, :cond_24

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v13, v5, p2

    goto/16 :goto_1c

    :cond_23
    const/16 v12, 0x8

    :cond_24
    if-nez v13, :cond_26

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_25

    goto/16 :goto_1d

    :cond_25
    move-object/from16 v23, v13

    const/16 v24, 0x4

    const/16 v25, 0x6

    goto/16 :goto_24

    :cond_26
    :goto_1d
    move-object/from16 v0, v19

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_27

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_1e

    :cond_27
    move-object/from16 v7, v26

    :goto_1e
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_28

    move-object/from16 v0, v20

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_1f

    :cond_28
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2a

    iget-object v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_29

    iget-object v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_1f

    :cond_29
    move-object/from16 v7, v26

    :cond_2a
    :goto_1f
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    move-object/from16 v0, v19

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    if-eqz v13, :cond_2b

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v9

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_21

    :cond_2b
    move-object/from16 v0, v16

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_2c

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_20

    :cond_2c
    move-object/from16 v11, v26

    :goto_20
    move-object/from16 v0, v19

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v9

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_21
    if-eqz v10, :cond_2d

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v8, v10

    :cond_2d
    if-eqz v20, :cond_2e

    move-object/from16 v0, v20

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v5, v10

    :cond_2e
    if-eqz v6, :cond_25

    if-eqz v7, :cond_25

    if-eqz v11, :cond_25

    if-eqz v12, :cond_25

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    :cond_2f
    move v10, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_30

    move-object/from16 v0, v18

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    move/from16 v23, v5

    goto/16 :goto_22

    :cond_30
    move/from16 v23, v8

    :goto_22
    if-eqz v22, :cond_31

    const/16 v27, 0x6

    goto/16 :goto_23

    :cond_31
    const/16 v27, 0x4

    :goto_23
    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v5, p1

    move v8, v10

    const/16 v25, 0x4

    move-object v10, v11

    const/16 v28, 0x6

    move-object v11, v12

    const/16 v24, 0x4

    const/16 v25, 0x6

    move/from16 v12, v23

    move-object/from16 v23, v13

    move/from16 v13, v27

    invoke-virtual/range {v5 .. v13}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_24
    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v13, 0x8

    if-eq v5, v13, :cond_32

    move-object/from16 v20, v19

    :cond_32
    move-object/from16 v19, v23

    goto/16 :goto_1b

    :cond_33
    const/16 v13, 0x8

    const/16 v24, 0x4

    const/16 v25, 0x6

    if-eqz v21, :cond_45

    if-eqz v17, :cond_45

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v5, :cond_34

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v5, v6, :cond_34

    const/16 v22, 0x1

    goto/16 :goto_25

    :cond_34
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v19, v17

    move-object/from16 v20, v19

    :goto_26
    if-eqz v19, :cond_41

    move-object/from16 v0, v19

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p2

    :goto_27
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v13, :cond_35

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p2

    goto/16 :goto_27

    :cond_35
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3f

    if-eqz v5, :cond_3f

    move-object/from16 v1, v18

    if-ne v5, v1, :cond_36

    move-object/from16 v12, v26

    goto/16 :goto_28

    :cond_36
    move-object v12, v5

    :goto_28
    move-object/from16 v0, v19

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_37

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_37
    move-object/from16 v0, v20

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    move-object/from16 v0, v19

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    if-eqz v12, :cond_39

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v13, :cond_38

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_2a

    :cond_38
    move-object/from16 v13, v26

    goto/16 :goto_2a

    :cond_39
    move-object/from16 v0, v19

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v8

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3a

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_29

    :cond_3a
    move-object/from16 v11, v26

    :goto_29
    move-object/from16 v0, v19

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_2a
    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    add-int/2addr v9, v10

    :cond_3b
    move/from16 v23, v9

    if-eqz v20, :cond_3c

    move-object/from16 v0, v20

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v9, v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v5, v8

    :cond_3c
    move v8, v5

    if-eqz v22, :cond_3d

    const/16 v27, 0x6

    goto/16 :goto_2b

    :cond_3d
    const/16 v27, 0x4

    :goto_2b
    if-eqz v6, :cond_3e

    if-eqz v7, :cond_3e

    if-eqz v11, :cond_3e

    if-eqz v13, :cond_3e

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v5, p1

    move-object v10, v11

    move-object v11, v13

    move-object/from16 v28, v12

    move/from16 v12, v23

    move-object/from16 v23, v20

    const/16 v20, 0x8

    move/from16 v13, v27

    invoke-virtual/range {v5 .. v13}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2c

    :cond_3e
    move-object/from16 v28, v12

    move-object/from16 v23, v20

    const/16 v20, 0x8

    :goto_2c
    move-object/from16 v5, v28

    goto/16 :goto_2d

    :cond_3f
    move-object/from16 v23, v20

    const/16 v20, 0x8

    :goto_2d
    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    move/from16 v1, v20

    if-eq v6, v1, :cond_40

    goto/16 :goto_2e

    :cond_40
    move-object/from16 v19, v23

    :goto_2e
    move-object/from16 v20, v19

    const/16 v13, 0x8

    move-object/from16 v19, v5

    goto/16 :goto_26

    :cond_41
    move-object/from16 v0, v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v15, v7, v8

    move-object/from16 v0, v16

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v8

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v2

    if-eqz v6, :cond_43

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_42

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    const/16 v20, 0x5

    move-object/from16 v0, v14

    move-object/from16 v1, v7

    move-object/from16 v2, v6

    move/from16 v3, v5

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_2f

    :cond_42
    const/16 v20, 0x5

    if-eqz v19, :cond_44

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    iget-object v11, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    const/16 v22, 0x5

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, v22

    invoke-virtual/range {v5 .. v13}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2f

    :cond_43
    const/16 v20, 0x5

    :cond_44
    :goto_2f
    if-eqz v19, :cond_45

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_45

    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v0, v14

    move-object/from16 v1, v5

    move-object/from16 v2, v6

    move/from16 v3, v7

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_45
    :goto_30
    if-nez v30, :cond_46

    if-eqz v21, :cond_4d

    :cond_46
    if-eqz v17, :cond_4d

    move-object/from16 v0, v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    move-object/from16 v0, v18

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_47

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_31

    :cond_47
    move-object/from16 v8, v26

    :goto_31
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_48

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_32

    :cond_48
    move-object/from16 v9, v26

    :goto_32
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4a

    move-object/from16 v0, v16

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v7

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_49

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto/16 :goto_33

    :cond_49
    move-object/from16 v9, v26

    :cond_4a
    :goto_33
    move-object v10, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, v17

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    move-object/from16 v0, v17

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v7

    :cond_4b
    if-eqz v8, :cond_4d

    if-eqz v10, :cond_4d

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    if-nez v18, :cond_4c

    goto/16 :goto_34

    :cond_4c
    move-object/from16 v16, v18

    :goto_34
    move-object/from16 v0, v16

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v12, v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v15, 0x5

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v8

    move v8, v11

    move-object v11, v13

    move v13, v15

    invoke-virtual/range {v5 .. v13}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Chain;"

    const-string v1, "applyChainConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
