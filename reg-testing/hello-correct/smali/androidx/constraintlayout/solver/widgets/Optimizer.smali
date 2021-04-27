.class public Landroidx/constraintlayout/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 44
    sput-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 21

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "analyze"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/16 v10, 0x8

    and-int/lit8 v11, p0, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v11, v10, :cond_0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v12

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_1

    invoke-static {v5, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget v15, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x2

    move/from16 v1, v17

    if-eq v15, v1, :cond_13

    iget v15, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    move/from16 v1, v17

    if-eq v15, v1, :cond_13

    iget-object v15, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v15, v12, :cond_b

    if-eqz v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v14, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_4

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_4

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    invoke-virtual {v8, v6, v13, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_4
    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_6

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_6

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    invoke-virtual {v8, v6, v13, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_6
    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_8

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_8

    if-eqz v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    move-object/from16 v0, v6

    move-object/from16 v1, v8

    move/from16 v2, v19

    move-object/from16 v3, v12

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_7
    neg-int v12, v12

    invoke-virtual {v6, v8, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_8
    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_13

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_13

    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v14

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v14

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v14, v14, v18

    if-nez v14, :cond_a

    move-object/from16 v0, v6

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v8

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v6

    move-object/from16 v1, v8

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    move-object/from16 v0, v8

    move-object/from16 v1, v6

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v6

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v8

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v14, v12

    int-to-float v14, v14

    invoke-virtual {v6, v8, v14}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    int-to-float v14, v12

    invoke-virtual {v8, v6, v14}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v5, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_3

    :cond_b
    :goto_2
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_d

    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_d

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    invoke-virtual {v8, v6, v13, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    invoke-virtual {v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_d
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_f

    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_f

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    invoke-virtual {v8, v6, v13, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    invoke-virtual {v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_f
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v12, :cond_11

    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_11

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v6, v8, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    if-eqz v11, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    move-object/from16 v0, v6

    move-object/from16 v1, v8

    move/from16 v2, v19

    move-object/from16 v3, v12

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v6, v8, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    :cond_11
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_13

    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_13

    move-object/from16 v0, v6

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v8

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    move-object/from16 v0, v6

    move-object/from16 v1, v8

    move/from16 v2, v19

    move-object/from16 v3, v12

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v12

    invoke-virtual {v8, v6, v13, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v6, v8, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    :cond_13
    :goto_3
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v13

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_14

    invoke-static {v5, v13}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_14
    const/4 v6, 0x0

    :goto_4
    iget v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    move/from16 v1, v17

    if-eq v8, v1, :cond_26

    iget v8, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    move/from16 v1, v17

    if-eq v8, v1, :cond_26

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v13

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v12, :cond_1e

    if-eqz v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v10, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v6, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_17

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_17

    if-eqz v11, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v9, v7, v13, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v9, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_17
    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_19

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_19

    if-eqz v11, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v9, v7, v13, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    :cond_18
    invoke-virtual {v9, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_19
    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1b

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1b

    if-eqz v11, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v5

    move-object/from16 v0, v7

    move-object/from16 v1, v9

    move/from16 v2, v19

    move-object/from16 v3, v5

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v5, v6

    invoke-virtual {v7, v9, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_1b
    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    if-eqz v11, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v8, v18

    if-nez v8, :cond_1d

    move-object/from16 v0, v7

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v9

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v7

    move-object/from16 v1, v9

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    move-object/from16 v0, v9

    move-object/from16 v1, v7

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, v7

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v9

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v8, v6

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    int-to-float v8, v6

    invoke-virtual {v9, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v13, v7, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_1e
    :goto_5
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_20

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_20

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v9, v7, v13, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v9, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :goto_6
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v5, v5

    invoke-virtual {v7, v13, v6, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_20
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_22

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v9, v7, v13, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_7

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v9, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :goto_7
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v13, v7, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_22
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_24

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_24

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    move-object/from16 v0, v7

    move-object/from16 v1, v9

    move/from16 v2, v19

    move-object/from16 v3, v6

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_8

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v7, v9, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :goto_8
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v13, v7, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    :cond_24
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_26

    move-object/from16 v0, v7

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    move-object/from16 v0, v9

    move/from16 v1, v20

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v11, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    move-object/from16 v0, v7

    move-object/from16 v1, v9

    move/from16 v2, v19

    move-object/from16 v3, v6

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v9, v7, v13, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ResolutionNode;"

    const-string v1, "addDependent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v7, v9, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v9, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    :goto_9
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_26

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v13, v7, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :cond_26
    :goto_a
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "analyze"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z
    .locals 28

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

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v13, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v14, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v14, p0

    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v6

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x2

    const/4 v15, 0x1

    if-nez v6, :cond_3

    iget v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v16, v2

    if-nez v16, :cond_0

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    iget v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v17, v2

    move/from16 v0, v17

    if-ne v0, v15, :cond_1

    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    iget v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v12, v7, :cond_2

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_3
    iget v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v16, v2

    if-nez v16, :cond_4

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    iget v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v17, v2

    move/from16 v0, v17

    if-ne v0, v15, :cond_5

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    iget v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v12, v7, :cond_2

    goto/16 :goto_2

    :goto_5
    move-object/from16 v19, v8

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_6
    const/16 v12, 0x8

    if-nez v18, :cond_14

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_9

    add-int/lit8 v20, v20, 0x1

    if-nez v6, :cond_6

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    goto/16 :goto_7

    :cond_6
    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    :goto_7
    int-to-float v14, v14

    add-float v21, v21, v14

    move-object/from16 v0, v19

    if-eq v0, v10, :cond_7

    move-object/from16 v0, v19

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    int-to-float v14, v14

    add-float v21, v21, v14

    :cond_7
    move-object/from16 v0, v19

    if-eq v0, v11, :cond_8

    move-object/from16 v0, v19

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v14, v14, v24

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    int-to-float v14, v14

    add-float v21, v21, v14

    :cond_8
    move-object/from16 v0, v19

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    int-to-float v14, v14

    add-float v22, v22, v14

    move-object/from16 v0, v19

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v14, v14, v24

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    int-to-float v14, v14

    add-float v22, v22, v14

    :cond_9
    move-object/from16 v0, v19

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_10

    move-object/from16 v0, v19

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, v6

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_10

    add-int/lit8 v15, v15, 0x1

    if-nez v6, :cond_c

    move-object/from16 v0, v19

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v14, :cond_b

    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v14, :cond_e

    :cond_b
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v14, :cond_d

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_d
    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v14, :cond_f

    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v14, :cond_e

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, v19

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v23, 0x0

    cmpl-float v14, v14, v23

    if-eqz v14, :cond_10

    :cond_f
    :goto_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_10
    move-object/from16 v0, v19

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v12, v12, v14

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_12

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_12

    iget-object v14, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v1, v19

    if-eq v14, v1, :cond_11

    goto/16 :goto_9

    :cond_11
    move-object/from16 v24, v12

    goto/16 :goto_a

    :cond_12
    :goto_9
    const/16 v24, 0x0

    :goto_a
    if-eqz v24, :cond_13

    move-object/from16 v19, v24

    goto/16 :goto_6

    :cond_13
    const/16 v18, 0x1

    goto/16 :goto_6

    :cond_14
    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v14

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v18, v2

    add-int/lit8 v24, p3, 0x1

    aget-object v18, v18, v24

    move-object/from16 v0, v18

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v18

    iget-object v12, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v12, :cond_3c

    move-object/from16 v0, v18

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v12, :cond_15

    goto/16 :goto_1e

    :cond_15
    iget-object v12, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move-object/from16 v25, v8

    const/4 v8, 0x1

    if-ne v12, v8, :cond_3b

    move-object/from16 v0, v18

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v12, v8, :cond_16

    goto/16 :goto_1d

    :cond_16
    if-lez v15, :cond_17

    move/from16 v1, v20

    if-eq v15, v1, :cond_17

    const/4 v8, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_17
    if-nez v7, :cond_19

    if-nez v16, :cond_19

    if-eqz v17, :cond_18

    goto/16 :goto_b

    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_19
    :goto_b
    if-eqz v10, :cond_1a

    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v12, v8

    goto/16 :goto_c

    :cond_1a
    const/4 v12, 0x0

    :goto_c
    if-eqz v11, :cond_1b

    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v24

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v12, v8

    :cond_1b
    :goto_d
    iget-object v8, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object/from16 v0, v18

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v18, v8, v11

    if-gez v18, :cond_1c

    sub-float/2addr v11, v8

    goto/16 :goto_e

    :cond_1c
    sub-float v11, v8, v11

    :goto_e
    sub-float v11, v11, v21

    const-wide/16 v26, 0x1

    if-lez v15, :cond_25

    move/from16 v1, v20

    if-ne v15, v1, :cond_25

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eqz v7, :cond_1d

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v6

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v10, :cond_1d

    const/4 v7, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_1d
    add-float v11, v11, v21

    sub-float v11, v11, v22

    move-object/from16 v7, v25

    :goto_f
    if-eqz v7, :cond_24

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v10, :cond_1e

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v16, v2

    sub-long v16, v16, v26

    move-wide/from16 v2, v16

    iput-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v16, v2

    add-long v16, v16, v26

    move-wide/from16 v2, v16

    iput-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v16, v2

    add-long v16, v16, v26

    move-wide/from16 v2, v16

    iput-wide v2, v10, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    :cond_1e
    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v6

    if-nez v10, :cond_1f

    if-ne v7, v9, :cond_23

    :cond_1f
    int-to-float v12, v15

    div-float v12, v11, v12

    const/16 v16, 0x0

    cmpl-float v17, v13, v16

    if-lez v17, :cond_21

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v12, v12, v6

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v12, v12, v16

    if-nez v12, :cond_20

    const/4 v12, 0x0

    goto/16 :goto_10

    :cond_20
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v12, v12, v6

    mul-float v12, v12, v11

    div-float/2addr v12, v13

    :cond_21
    :goto_10
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    const/4 v12, 0x0

    :cond_22
    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v2

    aget-object v16, v16, p3

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v16

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v16, v2

    add-float v8, v8, v16

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v2

    aget-object v16, v16, p3

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v16

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v17, v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v8

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v2

    aget-object v16, v16, v24

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v16

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v17, v2

    add-float/2addr v8, v12

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v8

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v24

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v24

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    :cond_23
    move-object v7, v10

    goto/16 :goto_f

    :cond_24
    const/4 v7, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_25
    const/4 v13, 0x0

    cmpg-float v13, v11, v13

    if-gez v13, :cond_26

    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_26
    if-eqz v7, :cond_2b

    sub-float/2addr v11, v12

    move-object/from16 v7, v25

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v10

    mul-float v11, v11, v10

    add-float/2addr v8, v11

    :goto_11
    if-eqz v7, :cond_2c

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v10, :cond_27

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v11, v11, v26

    iput-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v11, v11, v26

    iput-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v11, v26

    iput-wide v11, v10, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    :cond_27
    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v6

    if-nez v10, :cond_28

    if-ne v7, v9, :cond_2a

    :cond_28
    if-nez v6, :cond_29

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    goto/16 :goto_12

    :cond_29
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    :goto_12
    int-to-float v11, v11

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v8, v12

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    iget-object v13, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v12, v13, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, v24

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    iget-object v13, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float/2addr v8, v11

    invoke-virtual {v12, v13, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v24

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v24

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    :cond_2a
    move-object v7, v10

    goto/16 :goto_11

    :cond_2b
    move-object/from16 v7, v25

    if-nez v16, :cond_2d

    if-eqz v17, :cond_2c

    goto/16 :goto_13

    :cond_2c
    const/4 v5, 0x1

    goto/16 :goto_1c

    :cond_2d
    :goto_13
    if-eqz v16, :cond_2e

    :goto_14
    sub-float/2addr v11, v12

    goto/16 :goto_15

    :cond_2e
    if-eqz v17, :cond_2f

    goto/16 :goto_14

    :cond_2f
    :goto_15
    add-int/lit8 v12, v20, 0x1

    int-to-float v12, v12

    div-float v12, v11, v12

    if-eqz v17, :cond_31

    const/4 v13, 0x1

    move/from16 v0, v20

    if-le v0, v13, :cond_30

    add-int/lit8 v12, v20, -0x1

    int-to-float v12, v12

    goto/16 :goto_16

    :cond_30
    const/high16 v12, 0x40000000    # 2.0f

    :goto_16
    div-float v12, v11, v12

    :cond_31
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v13, 0x8

    if-eq v11, v13, :cond_32

    add-float v11, v8, v12

    goto/16 :goto_17

    :cond_32
    move v11, v8

    :goto_17
    if-eqz v17, :cond_33

    const/4 v13, 0x1

    move/from16 v0, v20

    if-le v0, v13, :cond_33

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    :cond_33
    if-eqz v16, :cond_34

    if-eqz v10, :cond_34

    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v11, v8

    :cond_34
    :goto_18
    if-eqz v7, :cond_2c

    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v8, :cond_35

    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v15, v15, v26

    iput-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v15, v15, v26

    iput-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v15, v15, v26

    iput-wide v15, v8, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    :cond_35
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v6

    if-nez v8, :cond_37

    if-ne v7, v9, :cond_36

    goto/16 :goto_19

    :cond_36
    const/16 v13, 0x8

    goto/16 :goto_1b

    :cond_37
    :goto_19
    if-nez v6, :cond_38

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    goto/16 :goto_1a

    :cond_38
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    :goto_1a
    int-to-float v13, v13

    if-eq v7, v10, :cond_39

    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v11, v15

    :cond_39
    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v16, v2

    move-object/from16 v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v11

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, v24

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v16, v2

    add-float v17, v11, v13

    move-object/from16 v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, v24

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v24

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v13, v7

    add-float/2addr v11, v13

    if-eqz v8, :cond_36

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v13, 0x8

    if-eq v7, v13, :cond_3a

    add-float/2addr v11, v12

    :cond_3a
    :goto_1b
    move-object v7, v8

    goto/16 :goto_18

    :goto_1c
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_3b
    :goto_1d
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_3c
    :goto_1e
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "applyChainOptimized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method static checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "checkMatchParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x2

    if-eq v5, v7, :cond_0

    iget-object v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    iget-object v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/WidgetContainer;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/WidgetContainer;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v6, v7

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    iput-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    iput-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iput v8, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    invoke-virtual {p2, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v7, :cond_3

    iget-object v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3

    iget-object v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/WidgetContainer;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/WidgetContainer;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v6

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v6, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v6, p0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v6, :cond_1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    :cond_1
    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v7, v5

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    :cond_2
    iput v8, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    invoke-virtual {p2, v5, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "checkMatchParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v6, 0x0

    const/4 v8, 0x1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    aget-object p0, p0, v8

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_2

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_3
    if-nez p1, :cond_6

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz p1, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p1, :cond_5

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz p0, :cond_8

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_6
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz p1, :cond_7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_7
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p1, :cond_9

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz p0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_9
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "optimizableMatchConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method static setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .locals 9

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "setOptimizedWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    int-to-float p2, p2

    iput p2, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    const/4 v7, 0x1

    iput v7, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v8, v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iput-object v5, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p0

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Optimizer;"

    const-string v1, "setOptimizedWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
