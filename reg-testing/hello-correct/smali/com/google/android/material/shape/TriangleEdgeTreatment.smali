.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 42
    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 47
    iget v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float v1, v1, p2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 48
    iget-boolean v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    neg-float v1, v1

    :goto_0
    mul-float v1, v1, p2

    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 49
    iget v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p3, v0, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 50
    invoke-virtual {p3, p1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
