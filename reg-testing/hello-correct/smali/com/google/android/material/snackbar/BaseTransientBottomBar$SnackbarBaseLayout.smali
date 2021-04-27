.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 720
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    sget-object v0, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 722
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 723
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 726
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "accessibility"

    .line 729
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 730
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;)V

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 738
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {p1, p2}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    .line 740
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Z)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 744
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    .line 745
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 758
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 759
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 763
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 768
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 769
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, v1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 750
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 751
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 752
    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    return-void
.end method
