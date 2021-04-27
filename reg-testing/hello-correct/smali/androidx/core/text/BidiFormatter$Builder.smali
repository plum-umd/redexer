.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-direct {p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "getDefaultInstanceFromContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "getDefaultInstanceFromContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private initialize(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "initialize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    sget-object p1, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "initialize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/text/BidiFormatter;
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    sget-object v6, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v5}, Landroidx/core/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroidx/core/text/BidiFormatter;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v5, Landroidx/core/text/BidiFormatter;

    iget-boolean v6, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v7, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    iget-object v8, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public setTextDirectionHeuristic(Landroidx/core/text/TextDirectionHeuristicCompat;)Landroidx/core/text/BidiFormatter$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "setTextDirectionHeuristic"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "setTextDirectionHeuristic"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public stereoReset(Z)Landroidx/core/text/BidiFormatter$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "stereoReset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/text/BidiFormatter$Builder;"

    const-string v1, "stereoReset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
