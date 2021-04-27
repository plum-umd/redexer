.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Duration;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field final managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

.field private final targetParent:Landroid/view/ViewGroup;

.field protected final view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    new-array v0, v1, [I

    .line 180
    sget v1, Lcom/google/android/material/R$attr;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 183
    new-instance v0, Landroid/os/Handler;

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/ContentViewCallback;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 252
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 253
    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 256
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 258
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 263
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 266
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 269
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 270
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 287
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 308
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 309
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->contentViewCallback:Lcom/google/android/material/snackbar/ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 4

    .line 612
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 614
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 615
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getTranslationYBottom()I
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 652
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 653
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method animateViewIn()V
    .locals 5

    .line 566
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v0

    .line 567
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 573
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 574
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 575
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 576
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method protected dispatchDismiss(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V

    return-void
.end method

.method public getBehavior()Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method protected getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method protected getSnackbarBaseLayoutResId()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hasSnackbarStyleAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$layout;->mtrl_layout_snackbar:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$layout;->design_layout_snackbar:I

    :goto_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method protected hasSnackbarStyleAttr()Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 325
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method final hideView(I)V
    .locals 1

    .line 659
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 681
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 682
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 687
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 692
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 693
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 668
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 672
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 432
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBehavior(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    return-object p0
.end method

.method public setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    .line 701
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public show()V
    .locals 3

    .line 385
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 471
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 473
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 475
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->behavior:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-result-object v1

    .line 478
    :cond_0
    instance-of v2, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v2, :cond_1

    .line 479
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-static {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 481
    :cond_1
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 506
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    const/16 v1, 0x50

    .line 508
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 537
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 543
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 547
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
