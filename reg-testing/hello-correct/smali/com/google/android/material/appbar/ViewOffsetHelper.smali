.class Lcom/google/android/material/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 53
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    return v0
.end method

.method public getLayoutTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    if-eq v0, p1, :cond_0

    .line 79
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 80
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    if-eq v0, p1, :cond_0

    .line 64
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
