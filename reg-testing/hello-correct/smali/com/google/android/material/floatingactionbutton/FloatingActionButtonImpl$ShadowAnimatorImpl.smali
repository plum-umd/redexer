.class abstract Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private shadowSizeEnd:F

.field private shadowSizeStart:F

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private validValues:Z


# direct methods
.method private constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 680
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    invoke-virtual {p1, v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(F)V

    const/4 p1, 0x0

    .line 681
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 668
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    invoke-virtual {v0}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getShadowSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    .line 670
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    const/4 v0, 0x1

    .line 671
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->validValues:Z

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeStart:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;->shadowSizeEnd:F

    sub-float/2addr v2, v1

    .line 675
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 674
    invoke-virtual {v0, v1}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(F)V

    return-void
.end method
