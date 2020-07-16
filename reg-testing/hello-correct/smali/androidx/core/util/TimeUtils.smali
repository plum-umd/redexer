.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    .line 41
    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "accumField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x3

    const/16 v6, 0x63

    if-gt p0, v6, :cond_5

    if-eqz p2, :cond_0

    if-lt p3, v5, :cond_0

    goto :goto_2

    :cond_0
    const/16 v5, 0x9

    const/4 v6, 0x2

    if-gt p0, v5, :cond_4

    if-eqz p2, :cond_1

    if-lt p3, v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "accumField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_3
    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "accumField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_4
    :goto_1
    add-int/2addr p1, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "accumField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_5
    :goto_2
    add-int/2addr p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "accumField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p4, v2, v1

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long v7, p0, v5

    if-nez v7, :cond_0

    const-string p0, "--"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p4, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Ljava/io/PrintWriter;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/PrintWriter;"

    const-string v1, "print"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 2

    .line 163
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 165
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 2

    .line 154
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 156
    sget-object p1, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static formatDurationLocked(JI)I
    .locals 22

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDurationLocked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v5, p0

    move/from16 v7, p2

    sget-object v8, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    array-length v8, v8

    if-ge v8, v7, :cond_0

    new-array v8, v7, [C

    sput-object v8, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v8, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/16 v9, 0x20

    const-wide/16 v10, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    cmp-long v12, v5, v10

    if-nez v12, :cond_2

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-lez v5, :cond_1

    aput-char v9, v8, v16

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x30

    aput-char v5, v8, v16

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDurationLocked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :cond_2
    cmp-long v12, v5, v10

    if-lez v12, :cond_3

    const/16 v10, 0x2b

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x2d

    neg-long v5, v5

    :goto_1
    const-wide/16 v11, 0x3e8

    rem-long v13, v5, v11

    long-to-int v2, v13

    move/from16 v17, v2

    div-long/2addr v5, v11

    long-to-double v5, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "floor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "floor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    double-to-int v5, v5

    const v6, 0x15180

    if-le v5, v6, :cond_4

    div-int v11, v5, v6

    mul-int v6, v6, v11

    sub-int/2addr v5, v6

    goto/16 :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/16 v6, 0xe10

    if-le v5, v6, :cond_5

    div-int/lit16 v6, v5, 0xe10

    mul-int/lit16 v12, v6, 0xe10

    sub-int/2addr v5, v12

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const/16 v12, 0x3c

    if-le v5, v12, :cond_6

    div-int/lit8 v12, v5, 0x3c

    mul-int/lit8 v13, v12, 0x3c

    sub-int/2addr v5, v13

    move/from16 v18, v5

    move v5, v12

    goto/16 :goto_4

    :cond_6
    move/from16 v18, v5

    const/4 v5, 0x0

    :goto_4
    const/16 v19, 0x3

    const/16 v20, 0x2

    if-eqz v7, :cond_b

    move/from16 v0, v11

    move/from16 v1, v15

    move/from16 v2, v16

    move/from16 v3, v16

    invoke-static/range {v0 .. v3}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v12

    if-lez v12, :cond_7

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v6

    move/from16 v1, v15

    move/from16 v2, v13

    move/from16 v3, v20

    invoke-static/range {v0 .. v3}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v13

    add-int/2addr v12, v13

    if-lez v12, :cond_8

    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v5

    move/from16 v1, v15

    move/from16 v2, v13

    move/from16 v3, v20

    invoke-static/range {v0 .. v3}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v13

    add-int/2addr v12, v13

    if-lez v12, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v15

    move/from16 v2, v13

    move/from16 v3, v20

    invoke-static/range {v0 .. v3}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v13

    add-int/2addr v12, v13

    if-lez v12, :cond_a

    const/4 v13, 0x3

    goto/16 :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v15

    move/from16 v3, v13

    invoke-static/range {v0 .. v3}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v13

    add-int/2addr v13, v15

    add-int/2addr v12, v13

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v7, :cond_c

    aput-char v9, v8, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_b
    const/4 v13, 0x0

    :cond_c
    aput-char v10, v8, v13

    add-int/lit8 v14, v13, 0x1

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_d
    const/4 v7, 0x0

    :goto_a
    const/16 v12, 0x64

    const/4 v13, 0x0

    const/16 v21, 0x0

    move-object v9, v8

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v16, v14

    move/from16 v14, v21

    invoke-static/range {v9 .. v14}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v12

    const/16 v11, 0x68

    move/from16 v1, v16

    if-eq v12, v1, :cond_e

    const/4 v13, 0x1

    goto/16 :goto_b

    :cond_e
    const/4 v13, 0x0

    :goto_b
    if-eqz v7, :cond_f

    const/4 v14, 0x2

    goto/16 :goto_c

    :cond_f
    const/4 v14, 0x0

    :goto_c
    move-object v9, v8

    move v10, v6

    invoke-static/range {v9 .. v14}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v12

    const/16 v11, 0x6d

    move/from16 v1, v16

    if-eq v12, v1, :cond_10

    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    if-eqz v7, :cond_11

    const/4 v14, 0x2

    goto/16 :goto_e

    :cond_11
    const/4 v14, 0x0

    :goto_e
    move-object v9, v8

    move v10, v5

    invoke-static/range {v9 .. v14}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v12

    const/16 v11, 0x73

    move/from16 v1, v16

    if-eq v12, v1, :cond_12

    const/4 v13, 0x1

    goto/16 :goto_f

    :cond_12
    const/4 v13, 0x0

    :goto_f
    if-eqz v7, :cond_13

    const/4 v14, 0x2

    goto/16 :goto_10

    :cond_13
    const/4 v14, 0x0

    :goto_10
    move-object v9, v8

    move/from16 v10, v18

    invoke-static/range {v9 .. v14}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v12

    const/16 v11, 0x6d

    const/4 v13, 0x1

    if-eqz v7, :cond_14

    move/from16 v1, v16

    if-eq v12, v1, :cond_14

    const/4 v14, 0x3

    goto/16 :goto_11

    :cond_14
    const/4 v14, 0x0

    :goto_11
    move-object v9, v8

    move/from16 v10, v17

    invoke-static/range {v9 .. v14}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v6, 0x73

    aput-char v6, v8, v5

    add-int/2addr v5, v15

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "formatDurationLocked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private static printField([CICIZI)I
    .locals 7

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "printField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    if-eqz p4, :cond_1

    const/4 v5, 0x3

    if-ge p5, v5, :cond_2

    :cond_1
    const/16 v5, 0x63

    if-le p1, v5, :cond_3

    :cond_2
    div-int/lit8 v5, p1, 0x64

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    aput-char v6, p0, p3

    add-int/lit8 v6, p3, 0x1

    mul-int/lit8 v5, v5, 0x64

    sub-int/2addr p1, v5

    goto :goto_0

    :cond_3
    move v6, p3

    :goto_0
    if-eqz p4, :cond_4

    const/4 p4, 0x2

    if-ge p5, p4, :cond_5

    :cond_4
    const/16 p4, 0x9

    if-gt p1, p4, :cond_5

    if-eq p3, v6, :cond_6

    :cond_5
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    aput-char p4, p0, v6

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_6
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    aput-char p1, p0, v6

    add-int/lit8 v6, v6, 0x1

    aput-char p2, p0, v6

    add-int/lit8 p3, v6, 0x1

    :cond_7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/TimeUtils;"

    const-string v1, "printField"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method
