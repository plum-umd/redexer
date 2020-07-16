.class public Landroidx/core/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;,
        Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;,
        Landroidx/core/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x100

.field public static final ANIMATION_INDEX:I = 0x8

.field public static final COMMAND_DURATION:I = 0x20

.field public static final COMMAND_INDEX:I = 0x5

.field private static final DBG:Z = false

.field public static final DELAY_DURATION:I = 0x80

.field public static final DELAY_INDEX:I = 0x7

.field public static final DRAW_DURATION:I = 0x8

.field public static final DRAW_INDEX:I = 0x3

.field public static final EVERY_DURATION:I = 0x1ff

.field public static final INPUT_DURATION:I = 0x2

.field public static final INPUT_INDEX:I = 0x1

.field private static final LAST_INDEX:I = 0x8

.field public static final LAYOUT_MEASURE_DURATION:I = 0x4

.field public static final LAYOUT_MEASURE_INDEX:I = 0x2

.field public static final SWAP_DURATION:I = 0x40

.field public static final SWAP_INDEX:I = 0x6

.field public static final SYNC_DURATION:I = 0x10

.field public static final SYNC_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FrameMetrics"

.field public static final TOTAL_DURATION:I = 0x1

.field public static final TOTAL_INDEX:I


# instance fields
.field private mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, v0}, Landroidx/core/app/FrameMetricsAggregator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 217
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;-><init>(I)V

    iput-object v0, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-direct {p1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v5, p1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->add(Landroid/app/Activity;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "getMetrics"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "getMetrics"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v5, p1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->reset()[Landroid/util/SparseIntArray;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "stop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/FrameMetricsAggregator;->mInstance:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->stop()[Landroid/util/SparseIntArray;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/FrameMetricsAggregator;"

    const-string v1, "stop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
