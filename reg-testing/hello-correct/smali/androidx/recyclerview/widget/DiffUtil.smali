.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "calculateDiff"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "calculateDiff"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 20

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "calculateDiff"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getOldListSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getOldListSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getNewListSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getNewListSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v5, v10, v6}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int v8, v5, v6

    sub-int/2addr v5, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v5, v8

    mul-int/lit8 v6, v5, 0x2

    new-array v1, v6, [I

    move-object/from16 v18, v1

    new-array v6, v6, [I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v19, v10

    check-cast v19, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v0, v19

    iget v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v19

    iget v13, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v19

    iget v14, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v10, p0

    move-object/from16 v15, v18

    move-object/from16 v16, v6

    move/from16 v17, v5

    invoke-static/range {v10 .. v17}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v10

    if-eqz v10, :cond_6

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v11, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move-object/from16 v0, v19

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move-object/from16 v0, v19

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_1

    new-instance v11, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v11}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_1
    move-object/from16 v0, v19

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget-boolean v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v12, :cond_2

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    :cond_2
    iget-boolean v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v12, :cond_3

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto/16 :goto_2

    :cond_3
    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    :goto_2
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v11, :cond_4

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v10

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    :cond_4
    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v10

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto/16 :goto_3

    :cond_5
    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v11, v10

    move-object/from16 v0, v19

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    :goto_3
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v19, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move-object/from16 v1, v19

    invoke-interface/range {v0 .. v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v19, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v8

    move-object/from16 v1, v19

    invoke-interface/range {v0 .. v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    sget-object v5, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Collections;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Collections;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v7, v5

    move-object/from16 v8, p0

    move-object/from16 v10, v18

    move-object v11, v6

    move/from16 v12, p1

    invoke-direct/range {v7 .. v12}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "calculateDiff"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 24

    const/16 v2, 0xc

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

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "diffPartial"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    sub-int v8, p2, p1

    sub-int v9, p4, p3

    const/4 v10, 0x1

    if-lt v8, v10, :cond_f

    if-ge v9, v10, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v11, v8, v9

    add-int v12, v8, v9

    add-int/2addr v12, v10

    div-int/lit8 v12, v12, 0x2

    sub-int v13, p7, v12

    sub-int/2addr v13, v10

    add-int v14, p7, v12

    add-int/2addr v14, v10

    const/4 v15, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "fill"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v13, v14, v15}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "fill"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v13, v11

    add-int/2addr v14, v11

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "fill"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v13, v14, v8}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "fill"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    rem-int/lit8 v13, v11, 0x2

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    if-gt v14, v12, :cond_e

    neg-int v2, v14

    move/from16 v16, v2

    move/from16 v17, v16

    :goto_2
    move/from16 v0, v17

    if-gt v0, v14, :cond_6

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    move/from16 v0, v17

    if-eq v0, v14, :cond_2

    add-int v18, p7, v17

    add-int/lit8 v19, v18, -0x1

    aget v19, v6, v19

    add-int v18, v18, v10

    aget v18, v6, v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int v18, p7, v17

    sub-int v18, v18, v10

    aget v18, v6, v18

    add-int v18, v18, v10

    const/16 v19, 0x1

    goto/16 :goto_4

    :cond_3
    :goto_3
    add-int v18, p7, v17

    add-int v18, v18, v10

    aget v18, v6, v18

    const/16 v19, 0x0

    :goto_4
    sub-int v20, v18, v17

    :goto_5
    move/from16 v0, v18

    if-ge v0, v8, :cond_4

    move/from16 v0, v20

    if-ge v0, v9, :cond_4

    add-int v15, p1, v18

    add-int v10, p3, v20

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "areItemsTheSame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v15, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "areItemsTheSame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v20, v20, 0x1

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_4
    add-int v10, p7, v17

    aput v18, v6, v10

    if-eqz v13, :cond_5

    sub-int v15, v11, v14

    const/16 v18, 0x1

    add-int v15, v15, v18

    move/from16 v0, v17

    if-lt v0, v15, :cond_5

    add-int v15, v11, v14

    sub-int v15, v15, v18

    move/from16 v0, v17

    if-gt v0, v15, :cond_5

    aget v15, v6, v10

    aget v18, v7, v10

    move/from16 v1, v18

    if-lt v15, v1, :cond_5

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    aget v8, v7, v10

    iput v8, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v8, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int v8, v8, v17

    iput v8, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    aget v6, v6, v10

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v2, v19

    iput-boolean v2, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v10, 0x0

    iput-boolean v10, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "diffPartial"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_5
    const/4 v10, 0x0

    add-int/lit8 v17, v17, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v10, 0x0

    move/from16 v15, v16

    :goto_6
    if-gt v15, v14, :cond_d

    add-int v17, v15, v11

    add-int v18, v14, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    add-int v18, v16, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    add-int v18, p7, v17

    add-int/lit8 v19, v18, -0x1

    aget v19, v7, v19

    const/16 v20, 0x1

    add-int v18, v18, v20

    aget v18, v7, v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    goto/16 :goto_7

    :cond_7
    const/16 v20, 0x1

    :cond_8
    add-int v18, p7, v17

    add-int v18, v18, v20

    aget v18, v7, v18

    sub-int v18, v18, v20

    const/16 v19, 0x1

    goto/16 :goto_8

    :cond_9
    const/16 v20, 0x1

    :goto_7
    add-int v18, p7, v17

    sub-int v18, v18, v20

    aget v18, v7, v18

    const/16 v19, 0x0

    :goto_8
    sub-int v21, v18, v17

    :goto_9
    if-lez v18, :cond_a

    if-lez v21, :cond_a

    add-int v22, p1, v18

    add-int/lit8 v10, v22, -0x1

    add-int v22, p3, v21

    move/from16 v23, v8

    add-int/lit8 v8, v22, -0x1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "areItemsTheSame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v10, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "areItemsTheSame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_b

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v8, v23

    const/4 v10, 0x0

    const/16 v20, 0x1

    goto/16 :goto_9

    :cond_a
    move/from16 v23, v8

    :cond_b
    add-int v8, p7, v17

    aput v18, v7, v8

    if-nez v13, :cond_c

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_c

    move/from16 v0, v17

    if-gt v0, v14, :cond_c

    aget v10, v6, v8

    aget v18, v7, v8

    move/from16 v1, v18

    if-lt v10, v1, :cond_c

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    aget v9, v7, v8

    iput v9, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v9, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int v9, v9, v17

    iput v9, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    aget v6, v6, v8

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    move/from16 v2, v19

    iput-boolean v2, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v8, 0x1

    iput-boolean v8, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "diffPartial"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_c
    const/4 v8, 0x1

    add-int/lit8 v15, v15, 0x2

    move/from16 v8, v23

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_d
    move/from16 v23, v8

    const/4 v8, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v23

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "diffPartial"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_f
    :goto_a
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/DiffUtil;"

    const-string v1, "diffPartial"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
