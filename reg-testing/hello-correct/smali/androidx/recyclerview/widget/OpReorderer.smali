.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "getLastMoveOutOfOrder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

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

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_0
    if-ltz v5, :cond_2

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v8, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    if-eqz v7, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "getLastMoveOutOfOrder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_2
    const/4 p1, -0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "getLastMoveOutOfOrder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xa

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

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveAdd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v5, v6, :cond_0

    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, v7, :cond_2

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    iput v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_2
    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v6, v7, :cond_3

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    iput v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_3
    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iput v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p3, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveAdd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

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

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v5

    check-cast v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v11, v5

    check-cast v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_0

    :cond_1
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto/16 :goto_0

    :cond_2
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v10, p3

    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "reorderOps"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, p1, v5, v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "reorderOps"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xa

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

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveRemove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p3

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v9

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v8

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p3

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v9

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x2

    if-ge v6, v9, :cond_3

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p5

    iput v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v11, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v11

    if-ge v6, v9, :cond_5

    move-object/from16 v0, p5

    iget p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p2, v8

    move-object/from16 v0, p5

    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p3

    iput v10, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    move-object/from16 v0, p3

    iput v8, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez p2, :cond_4

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface/range {v0 .. v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface/range {v0 .. v1}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveRemove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v11, 0x0

    if-gt v6, v9, :cond_6

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v8

    move-object/from16 v0, p5

    iput v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v12, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v12

    if-ge v6, v9, :cond_7

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v9

    move-object/from16 v0, p3

    iget v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v9

    iget-object v9, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    move-object/from16 v0, p3

    iget v12, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v12, v8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v9, v10, v12, v6, v11}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v8, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p5

    iput v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface/range {v0 .. v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface/range {v0 .. v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p3, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface/range {v0 .. v1}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveRemove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v5, :cond_c

    if-eqz v11, :cond_a

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v5, v6, :cond_9

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_9
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v5, v6, :cond_a

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_a
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v5, v6, :cond_b

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_b
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v5, v6, :cond_10

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto/16 :goto_4

    :cond_c
    if-eqz v11, :cond_e

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v5, v6, :cond_d

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_d
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v5, v6, :cond_e

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_e
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v5, v6, :cond_f

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_f
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v5, v6, :cond_10

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p3

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_10
    :goto_4
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface/range {v0 .. v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move/from16 p5, v2

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move/from16 v0, p5

    if-eq v0, v5, :cond_11

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p3, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-interface/range {v0 .. v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_11
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface/range {v0 .. v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    if-eqz v11, :cond_12

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v11, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveRemove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xa

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

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v5, v6, :cond_0

    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v9

    move-object/from16 v0, p5

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_0

    :cond_0
    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v10, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v10

    if-ge v5, v6, :cond_1

    move-object/from16 v0, p5

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v9

    move-object/from16 v0, p5

    iput v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v5, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget-object v10, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object v10, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v7, v6, v9, v10}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    move-object v5, v8

    :goto_1
    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v10, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, v10, :cond_2

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v9

    move-object/from16 v0, p5

    iput v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_2

    :cond_2
    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v10, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v11, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_3

    move-object/from16 v0, p5

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object/from16 v0, p5

    iget v8, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v8

    iget v8, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v8

    iget-object v8, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v10, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v10, v9

    move-object/from16 v0, p5

    iget-object v9, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v7, v10, v6, v9}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "obtainUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p5

    iget v7, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v7, v6

    move-object/from16 v0, p5

    iput v7, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_3
    :goto_2
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p3, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-interface/range {v0 .. v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p5

    iget p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez p3, :cond_4

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface/range {v0 .. v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const/4 v1, 0x5

    aput-object p5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-interface/range {v0 .. v1}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "recycleUpdateOp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-eqz v5, :cond_5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v8, :cond_6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/OpReorderer;"

    const-string v1, "swapMoveUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
