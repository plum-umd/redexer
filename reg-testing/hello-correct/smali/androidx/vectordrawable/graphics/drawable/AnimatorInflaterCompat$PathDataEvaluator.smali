.class Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Landroidx/core/graphics/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;"

    const-string v1, "evaluate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p2, [Landroidx/core/graphics/PathParser$PathDataNode;

    check-cast p3, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->evaluate(F[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;"

    const-string v1, "evaluate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public evaluate(F[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 9

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;"

    const-string v1, "evaluate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p3}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    if-eqz v5, :cond_0

    invoke-static {v5, p2}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {p2}, Landroidx/core/graphics/PathParser;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v5

    iput-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    :cond_1
    const/4 v5, 0x0

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    aget-object v6, v6, v5

    aget-object v7, p2, v5

    aget-object v8, p3, v5

    invoke-virtual {v6, v7, v8, p1}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;"

    const-string v1, "evaluate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;"

    const-string v1, "evaluate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_2
    goto :goto_1
.end method
