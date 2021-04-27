.class public Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 6

    .line 43
    iget v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    mul-float v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    float-to-double v0, p1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget p1, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    double-to-float v2, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v3, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-float p1, v0

    .line 44
    invoke-virtual {p3, v2, p1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
