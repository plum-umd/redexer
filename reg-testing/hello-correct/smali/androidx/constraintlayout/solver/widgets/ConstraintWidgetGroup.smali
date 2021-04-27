.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
.super Ljava/lang/Object;
.source "ConstraintWidgetGroup.java"


# instance fields
.field public mConstrainedGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupDimensions:[I

.field mGroupHeight:I

.field mGroupWidth:I

.field public mSkipSolver:Z

.field mStartHorizontalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mStartVerticalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mUnresolvedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetHorizontal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetVertical:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSolve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v2, v1, v0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    .line 56
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v2, v1, v0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    .line 61
    iput-boolean p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    return-void
.end method

.method private getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolveTraversal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolveTraversal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolveTraversal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of v5, p2, Landroidx/constraintlayout/solver/widgets/Helper;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Helper;

    iget v7, v5, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v5, v5

    :goto_1
    if-ge v6, v5, :cond_4

    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_3

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_3

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eq v8, v7, :cond_3

    invoke-direct {p0, p1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolveTraversal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateResolvedDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v5, :cond_f

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateResolvedDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    iget-object v8, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto/16 :goto_1

    :cond_2
    iget-object v8, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_1
    if-eqz v8, :cond_5

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v9, :cond_3

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_3
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v10, :cond_4

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v8, v9

    goto/16 :goto_2

    :cond_4
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v10, :cond_5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_6

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    sub-int/2addr v8, v5

    goto/16 :goto_3

    :cond_6
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v8, v5

    :goto_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {p1, v5, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_8

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v6, :cond_7

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_7
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v6, v5

    iget v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int/2addr v6, v5

    iget v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v6, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    iput-boolean v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateResolvedDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_9

    const/4 v6, 0x1

    :cond_9
    if-eqz v6, :cond_a

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto/16 :goto_4

    :cond_a
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_4
    if-eqz v5, :cond_d

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v9, :cond_b

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_b
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v10, :cond_c

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    add-int/2addr v8, v5

    goto/16 :goto_5

    :cond_c
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v10, :cond_d

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    sub-int/2addr v8, v5

    goto/16 :goto_6

    :cond_e
    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v8, v5

    :goto_6
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {p1, v5, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    iput-boolean v7, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    :cond_f
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateResolvedDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
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

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "addWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/HashSet;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/HashSet;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/HashSet;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/HashSet;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "addWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getStartWidgets(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getStartWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getStartWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getStartWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getStartWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method getWidgetsToSet(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method getWidgetsToSolve()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v8, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "removeAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "removeAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "getWidgetsToSolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method updateUnresolvedWidgets()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateUnresolvedWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;"

    const-string v1, "updateUnresolvedWidgets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
