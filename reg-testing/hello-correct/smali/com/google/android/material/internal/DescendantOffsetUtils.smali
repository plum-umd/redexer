.class public Lcom/google/android/material/internal/DescendantOffsetUtils;
.super Ljava/lang/Object;
.source "DescendantOffsetUtils.java"


# static fields
.field private static final matrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 86
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 87
    check-cast v0, Landroid/view/View;

    .line 88
    invoke-static {p0, v0, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-nez p0, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void
.end method

.method public static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v1, Lcom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    sget-object p0, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    if-nez p0, :cond_1

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    sget-object p1, Lcom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p2, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
