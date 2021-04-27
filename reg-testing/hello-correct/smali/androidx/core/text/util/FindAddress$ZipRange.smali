.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipRange"
.end annotation


# instance fields
.field mException1:I

.field mException2:I

.field mHigh:I

.field mLow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    .line 45
    iput p2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    .line 46
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    .line 47
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/text/util/FindAddress$ZipRange;"

    const-string v1, "matches"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Integer;"

    const-string v1, "parseInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Integer;"

    const-string v1, "parseInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    if-gt v6, p1, :cond_0

    iget v6, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    if-le p1, v6, :cond_1

    :cond_0
    iget v6, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    if-ne p1, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/util/FindAddress$ZipRange;"

    const-string v1, "matches"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
