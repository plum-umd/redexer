.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
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

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;"

    const-string v1, "onFrameMetricsAvailable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 p3, 0x1

    and-int p1, p1, p3

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v7, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v7, v7, v5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v8, v9}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_0
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v7, 0x2

    and-int/2addr p1, v7

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v8, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v8, v8, p3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual/range {v0 .. v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8, v9, v10}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_1
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/16 p3, 0x4

    and-int p1, p1, p3

    const/4 v8, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v9, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v9, v9, v7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v9, v10, v11}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_2
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v9, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v8, v9, v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual/range {v0 .. v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8, v9, v10}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_3
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x10

    const/4 v8, 0x5

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v9, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v9, p3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, v9

    invoke-virtual/range {v0 .. v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_4
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x40

    const/16 p3, 0x7

    const/4 v9, 0x6

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v10, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v10, v10, v9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual/range {v0 .. v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v10, v11, v12}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_5
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v10, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object v8, v10, v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v9}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8, v9, v10}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_6
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v8, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    aget-object p3, v8, p3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, v8

    invoke-virtual/range {v0 .. v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_7
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v2, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    move-object/from16 p3, v2

    aget-object p3, p3, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/FrameMetrics;"

    const-string v1, "getMetric"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, v5

    invoke-virtual/range {v0 .. v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;"

    const-string v1, "onFrameMetricsAvailable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
