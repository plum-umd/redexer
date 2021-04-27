.class abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method protected constructor <init>([F)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    iget-object p1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/interpolator/view/animation/LookupTableInterpolator;"

    const-string v1, "getInterpolation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/interpolator/view/animation/LookupTableInterpolator;"

    const-string v1, "getInterpolation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v5, 0x0

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/interpolator/view/animation/LookupTableInterpolator;"

    const-string v1, "getInterpolation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    iget-object v5, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float v6, v6, p1

    float-to-int v6, v6

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v6, v5

    iget v7, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    mul-float v6, v6, v7

    sub-float/2addr p1, v6

    div-float/2addr p1, v7

    iget-object v6, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    aget v7, v6, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, v6, v8

    aget v5, v6, v5

    sub-float/2addr v8, v5

    mul-float p1, p1, v8

    add-float/2addr v7, p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/interpolator/view/animation/LookupTableInterpolator;"

    const-string v1, "getInterpolation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method
