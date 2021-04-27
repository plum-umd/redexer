.class Landroidx/recyclerview/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "ensureNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "ensureNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x40

    if-lt p1, v5, :cond_0

    iget-object v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v6, :cond_1

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, p1

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long/2addr v5, v7

    iput-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method countOnesBefore(I)I
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "countOnesBefore"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/16 v6, 0x40

    const-wide/16 v7, 0x1

    if-nez v5, :cond_1

    if-lt p1, v6, :cond_0

    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "countOnesBefore"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    shl-long v9, v7, p1

    sub-long/2addr v9, v7

    and-long/2addr v5, v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "countOnesBefore"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    if-ge p1, v6, :cond_2

    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    shl-long v9, v7, p1

    sub-long/2addr v9, v7

    and-long/2addr v5, v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "countOnesBefore"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_2
    sub-int/2addr p1, v6

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p1

    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "bitCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "countOnesBefore"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method get(I)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x40

    if-lt p1, v5, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, p1

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method insert(IZ)V
    .locals 17

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "insert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x40

    move/from16 v0, p1

    if-lt v0, v5, :cond_0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int p1, p1, v5

    move-object/from16 v0, v6

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x1

    shl-long v11, v6, p1

    sub-long/2addr v11, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    and-long v13, v6, v11

    const-wide/16 v15, -0x1

    xor-long/2addr v11, v15

    and-long/2addr v6, v11

    shl-long/2addr v6, v9

    or-long/2addr v6, v13

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    :goto_1
    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object/from16 p1, v2

    if-eqz p1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object/from16 p1, v2

    move-object/from16 v0, p1

    move/from16 v1, v10

    move/from16 v2, v5

    invoke-virtual/range {v0 .. v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    :cond_4
    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "insert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method remove(I)Z
    .locals 18

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x40

    move/from16 v0, p1

    if-lt v0, v5, :cond_0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int p1, p1, v5

    move-object/from16 v0, v6

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    const/16 p1, 0x1

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-eqz v14, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v14, -0x1

    xor-long v16, v7, v14

    and-long v10, v10, v16

    move-object/from16 v0, p0

    iput-wide v10, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v7, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    and-long v10, v5, v7

    xor-long/2addr v7, v14

    and-long/2addr v5, v7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "rotateRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v0, v5

    move/from16 v2, p1

    invoke-static/range {v0 .. v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "rotateRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    or-long/2addr v5, v10

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object/from16 p1, v2

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v13

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object/from16 p1, v2

    move-object/from16 v0, p1

    move/from16 v1, v13

    invoke-virtual/range {v0 .. v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method

.method reset()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    iget-object v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method set(I)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x40

    if-lt p1, v5, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, p1

    or-long/2addr v5, v7

    iput-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v5, :cond_0

    iget-wide v5, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "toBinaryString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "toBinaryString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v6

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

    const-string v6, "xx"

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

    iget-wide v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "toBinaryString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "toBinaryString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ChildHelper$Bucket;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
