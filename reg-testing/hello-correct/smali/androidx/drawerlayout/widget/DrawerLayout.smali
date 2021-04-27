.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    .line 104
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    .line 184
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {p2}, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 p2, -0x67000000

    .line 201
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 203
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 211
    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 p3, 0x3

    .line 213
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 214
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 215
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 216
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 239
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    .line 315
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 316
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 317
    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    .line 320
    new-instance v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v3, p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 321
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 323
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 324
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3, p2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 325
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 326
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 328
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v3, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 329
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 330
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 331
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 334
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 336
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 339
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {p2, p0}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 p2, 0x0

    .line 340
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 341
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 342
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 343
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$1;

    invoke-direct {p3, p0}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    .line 351
    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 353
    sget-object p3, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 355
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    throw p2

    :cond_0
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    .line 364
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 366
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchTransformedGenericPointerEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "isIdentity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "isIdentity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    neg-float v5, v5

    neg-float v6, v6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchTransformedGenericPointerEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getTransformedMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getScrollY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "obtain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "obtain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "offsetLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "isIdentity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "isIdentity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "invert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "invert"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "transform"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "transform"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getTransformedMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "gravityToString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v5, p0, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-string p0, "LEFT"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "gravityToString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    and-int/lit8 v5, p0, 0x5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const-string p0, "RIGHT"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "gravityToString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Integer;"

    const-string v1, "toHexString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Integer;"

    const-string v1, "toHexString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "gravityToString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasOpaqueBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getOpacity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getOpacity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, -0x1

    if-ne p0, v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasOpaqueBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private hasPeekingDrawer()Z
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasPeekingDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasPeekingDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasPeekingDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method private hasVisibleDrawer()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasVisibleDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "hasVisibleDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "includeChildForAccessibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p0

    const/4 v5, 0x2

    if-eq p0, v5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "includeChildForAccessibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 6

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isInBoundsOfChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHitRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHitRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isInBoundsOfChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "mirror"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "mirror"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "mirror"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveLeftShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveLeftShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveLeftShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveLeftShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveRightShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveRightShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveRightShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveRightShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private resolveShadowDrawables()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveShadowDrawables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveShadowDrawables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "resolveShadowDrawables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 9

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "updateChildrenImportantForAccessibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v7, p1, :cond_2

    :cond_1
    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_2
    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "updateChildrenImportantForAccessibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getDescendantFocusability"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getDescendantFocusability"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v10, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    if-nez v8, :cond_5

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-ge v6, v5, :cond_5

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v8, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addFocusables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "addView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "addView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "addView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method cancelChildViewTouch()V
    .locals 14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "cancelChildViewTouch"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v5, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "uptimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "uptimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v8

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v12 .. v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "obtain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "obtain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "cancelChildViewTouch"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "checkDrawerViewAbsoluteGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "checkDrawerViewAbsoluteGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "checkLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v5, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "checkLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "checkLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "checkLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public closeDrawer(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No drawer view found with gravity "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 9

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iput v8, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput v7, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x4

    if-eqz p2, :cond_2

    iget p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/2addr p2, v6

    iput p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    neg-int v5, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p1, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p2, v7, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not a sliding drawer"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public closeDrawers()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawers"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawers"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 14

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawers"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v10, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v11, v10, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v11, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x3

    invoke-virtual {p0, v9, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    neg-int v11, v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v9, v11, v13}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    goto/16 :goto_1

    :cond_1
    iget-object v11, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v9, v12, v13}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    :goto_1
    or-int/2addr v8, v9

    iput-boolean v6, v10, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v8, :cond_4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "closeDrawers"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public computeScroll()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "computeScroll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    iput v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v7, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v6

    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "computeScroll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getSource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getSource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    :goto_0
    if-ltz v5, :cond_3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v6, v7, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_4
    :goto_2
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchGenericMotionEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerClosed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v7

    :goto_0
    if-ltz v5, :cond_0

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerClosed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerClosed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "hasWindowFocus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "hasWindowFocus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getRootView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getRootView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/16 v5, 0x20

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerClosed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerOpened"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    iput v7, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v7

    :goto_0
    if-ltz v5, :cond_0

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerOpened"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerOpened"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p1, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "hasWindowFocus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "hasWindowFocus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerOpened"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerSlide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_0

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerSlide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerSlide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "dispatchOnDrawerSlide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "drawChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "save"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Canvas;->save()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "save"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v9, :cond_4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v16, v10

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v10, v14, :cond_3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move/from16 v1, v10

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v18, :cond_2

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getHeight()I

    move-result v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v18

    if-ge v0, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v12

    invoke-virtual/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getRight()I

    move-result v17

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v17

    if-le v0, v15, :cond_2

    move/from16 v15, v17

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getLeft()I

    move-result v17

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    move/from16 v16, v17

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "clipRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, v15

    move/from16 v2, v13

    move/from16 v3, v16

    move/from16 v4, v8

    invoke-virtual/range {v0 .. v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "clipRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v13, v15

    goto/16 :goto_2

    :cond_4
    move/from16 v16, v10

    :goto_2
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "drawChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v14 .. v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "drawChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "restoreToCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, v11

    invoke-virtual/range {v0 .. v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "restoreToCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v10, 0x0

    cmpl-float v11, v8, v10

    if-lez v11, :cond_5

    if-eqz v9, :cond_5

    iget v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    const/high16 v9, -0x1000000

    and-int/2addr v9, v7

    ushr-int/lit8 v9, v9, 0x18

    int-to-float v9, v9

    mul-float v9, v9, v8

    float-to-int v8, v9

    shl-int/lit8 v8, v8, 0x18

    const v9, 0xffffff

    and-int/2addr v7, v9

    or-int/2addr v7, v8

    iget-object v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v7, v13

    const/4 v8, 0x0

    move/from16 v0, v16

    int-to-float v9, v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v10, v10

    iget-object v11, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object v11, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    iget-object v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    move/from16 v2, v12

    invoke-virtual/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getIntrinsicWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getIntrinsicWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v13, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v13}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v13

    int-to-float v15, v12

    int-to-float v13, v13

    div-float/2addr v15, v13

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v15 .. v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v8, v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    mul-float v10, v10, v9

    float-to-int v8, v10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    iget-object v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7

    const/4 v8, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    move/from16 v2, v8

    invoke-virtual/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getIntrinsicWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "getIntrinsicWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v13, v12

    iget-object v15, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v15}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v15

    int-to-float v13, v13

    int-to-float v15, v15

    div-float/2addr v13, v15

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v8, v12, v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v8, v13, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    mul-float v10, v10, v9

    float-to-int v8, v10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "drawChild"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v14
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findDrawerWithGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p1, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    if-ne v8, p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findDrawerWithGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findDrawerWithGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findOpenDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findOpenDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findOpenDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findVisibleDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findVisibleDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "findVisibleDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateDefaultLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateDefaultLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, v6, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v5, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v5, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "generateLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getDrawerElevation()F
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerElevation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v5, :cond_0

    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerElevation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerElevation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawerLockMode(I)I
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_9

    const/4 v7, 0x5

    if-eq p1, v7, :cond_6

    const v7, 0x800003

    if-eq p1, v7, :cond_3

    const v7, 0x800005

    if-eq p1, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    if-eq p1, v6, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    if-nez v5, :cond_2

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto/16 :goto_0

    :cond_2
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eq p1, v6, :cond_c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_3
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    if-eq p1, v6, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_4
    if-nez v5, :cond_5

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto/16 :goto_1

    :cond_5
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    :goto_1
    if-eq p1, v6, :cond_c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_6
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    if-eq p1, v6, :cond_7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_7
    if-nez v5, :cond_8

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto/16 :goto_2

    :cond_8
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    :goto_2
    if-eq p1, v6, :cond_c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    if-eq p1, v6, :cond_a

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_a
    if-nez v5, :cond_b

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto/16 :goto_3

    :cond_b
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    :goto_3
    if-eq p1, v6, :cond_c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not a drawer"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p1, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerViewAbsoluteGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p1, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerViewAbsoluteGravity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerViewOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getDrawerViewOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getStatusBarBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "getStatusBarBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isContentView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isContentView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v5, 0x1

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not a drawer"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerOpen"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    invoke-static {v5, p1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 v5, p1, 0x3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not a drawer"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "isDrawerVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "moveDrawerToOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    mul-float v6, v6, p2

    float-to-int v6, v6

    sub-int/2addr v6, v5

    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    neg-int v6, v6

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "offsetLeftAndRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "offsetLeftAndRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "moveDrawerToOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/4 v7, 0x0

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v5, :cond_0

    check-cast v5, Landroid/view/WindowInsets;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-lez v5, :cond_1

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v7, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "draw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getActionMasked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getActionMasked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_1

    const/4 p1, 0x2

    const/4 v9, 0x3

    if-eq v5, p1, :cond_0

    if-eq v5, v9, :cond_1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1, v9}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    iget v9, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    iget-object v9, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v5, v5

    float-to-int p1, p1

    invoke-virtual {v9, v5, p1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :goto_2
    if-nez v6, :cond_6

    if-nez p1, :cond_6

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz p1, :cond_5

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x0

    :cond_6
    :goto_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/KeyEvent;"

    const-string v1, "startTracking"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/KeyEvent;"

    const-string v1, "startTracking"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onKeyDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onKeyDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyUp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyUp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_2
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onKeyUp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onKeyUp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onKeyUp"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    sub-int v7, p4, p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v5, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v14, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v15, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int v15, v15, v16

    iget v12, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int v12, v12, v16

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x3

    invoke-virtual {v5, v11, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v15

    if-eqz v15, :cond_2

    neg-int v15, v13

    int-to-float v2, v13

    move/from16 v16, v2

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v17, v2

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v2, v0

    move/from16 v17, v2

    add-int v15, v15, v17

    add-int v17, v13, v15

    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v17, v2

    div-float v17, v17, v16

    goto/16 :goto_1

    :cond_2
    int-to-float v15, v13

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v16, v2

    mul-float v16, v16, v15

    move/from16 v0, v16

    float-to-int v2, v0

    move/from16 v16, v2

    sub-int v16, v7, v16

    sub-int v17, v7, v16

    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v17, v2

    div-float v17, v17, v15

    move/from16 v15, v16

    :goto_1
    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v16, v2

    cmpl-float v16, v17, v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v2

    and-int/lit8 v18, v18, 0x70

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x50

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v2

    add-int/2addr v13, v15

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v2

    add-int v19, v19, v14

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v11

    move/from16 v1, v15

    move/from16 v2, v18

    move/from16 v3, v13

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v4}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    sub-int v14, p5, p3

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v2

    sub-int v18, v14, v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMeasuredHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int v18, v18, v19

    add-int/2addr v13, v15

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v2

    sub-int v14, v14, v19

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v11

    move/from16 v1, v15

    move/from16 v2, v18

    move/from16 v3, v13

    move/from16 v4, v14

    invoke-virtual/range {v0 .. v4}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    sub-int v18, p5, p3

    sub-int v19, v18, v14

    div-int/lit8 v19, v19, 0x2

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    iget v2, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v2

    goto/16 :goto_3

    :cond_6
    add-int v20, v19, v14

    iget v6, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v18, v6

    move/from16 v0, v20

    if-le v0, v6, :cond_7

    iget v6, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v18, v18, v6

    sub-int v19, v18, v14

    :cond_7
    :goto_3
    add-int/2addr v13, v15

    add-int v14, v14, v19

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v15 .. v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v11

    move/from16 v1, v15

    move/from16 v2, v19

    move/from16 v3, v13

    move/from16 v4, v14

    invoke-virtual/range {v0 .. v4}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "layout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-eqz v16, :cond_8

    move-object/from16 v0, v5

    move-object/from16 v1, v11

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    :cond_8
    iget v6, v12, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v6, 0x4

    :goto_5
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v12, v6, :cond_a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    iput-boolean v9, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    iput-boolean v9, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onMeasure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "getSize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0x12c

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v6, v11, :cond_0

    if-eq v7, v11, :cond_4

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "isInEditMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "isInEditMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_16

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez v6, :cond_2

    const/16 v8, 0x12c

    :cond_2
    :goto_0
    if-ne v7, v12, :cond_3

    goto/16 :goto_1

    :cond_3
    if-nez v7, :cond_4

    const/16 v9, 0x12c

    :cond_4
    :goto_1
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setMeasuredDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setMeasuredDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v14, v13, :cond_15

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v14}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    goto/16 :goto_7

    :cond_6
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v18, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v18, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/16 v19, 0x3

    if-eqz v6, :cond_c

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v20, v2

    move/from16 v0, v20

    move/from16 v1, v12

    invoke-static/range {v0 .. v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v20

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    const/16 v11, 0x15

    if-eqz v21, :cond_9

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_c

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v7, Landroid/view/WindowInsets;

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move/from16 v1, v11

    move/from16 v2, v20

    move/from16 v3, v10

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    const/4 v11, 0x5

    move/from16 v0, v20

    if-ne v0, v11, :cond_8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move/from16 v1, v10

    move/from16 v2, v11

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchApplyWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "dispatchApplyWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_c

    iget-object v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v7, Landroid/view/WindowInsets;

    const/4 v11, 0x3

    move/from16 v0, v20

    if-ne v0, v11, :cond_a

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move/from16 v1, v11

    move/from16 v2, v19

    move/from16 v3, v10

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a
    const/4 v11, 0x5

    move/from16 v0, v20

    if-ne v0, v11, :cond_b

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v19

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move/from16 v1, v10

    move/from16 v2, v11

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual/range {v0 .. v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "replaceSystemWindowInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_5
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iput v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iput v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iput v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/WindowInsets;"

    const-string v1, "getSystemWindowInsetBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iput v7, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    :cond_c
    :goto_6
    move-object/from16 v0, v5

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object/from16 v0, v18

    iget v7, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v7, v8, v7

    move-object/from16 v0, v18

    iget v11, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "makeMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "makeMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v2

    sub-int v19, v9, v19

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v2

    sub-int v19, v19, v18

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "makeMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v19

    move/from16 v1, v11

    invoke-static/range {v0 .. v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View$MeasureSpec;"

    const-string v1, "makeMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "measure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move/from16 v1, v7

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "measure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    move/from16 v20, p1

    move/from16 v18, p2

    goto/16 :goto_b

    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v0, v5

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_14

    sget-boolean v7, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v7, :cond_e

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v7

    iget v2, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v19, v2

    cmpl-float v7, v7, v19

    if-eqz v7, :cond_e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static/range {v0 .. v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_e
    move-object/from16 v0, v5

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/16 v19, 0x3

    move/from16 v1, v19

    if-ne v7, v1, :cond_f

    const/16 v19, 0x1

    goto/16 :goto_8

    :cond_f
    const/16 v19, 0x0

    :goto_8
    if-eqz v19, :cond_10

    if-nez v15, :cond_11

    :cond_10
    if-nez v19, :cond_12

    if-nez v16, :cond_11

    goto/16 :goto_9

    :cond_11
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Child drawer has absolute gravity "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, " but this "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "DrawerLayout"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, " already has a "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "drawer view along that edge"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onMeasure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_12
    :goto_9
    if-eqz v19, :cond_13

    const/4 v15, 0x1

    goto/16 :goto_a

    :cond_13
    const/16 v16, 0x1

    :goto_a
    iget v7, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v2

    add-int v7, v7, v19

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v2

    add-int v7, v7, v19

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v19, v2

    move/from16 v20, p1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v20

    move/from16 v1, v7

    move/from16 v2, v19

    invoke-static/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v2

    move-object/from16 v0, v18

    iget v10, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int v19, v19, v10

    move-object/from16 v0, v18

    iget v10, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v18, p2

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v10

    invoke-static/range {v0 .. v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildMeasureSpec"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v17, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "measure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move/from16 v1, v7

    move/from16 v2, v10

    invoke-virtual/range {v0 .. v2}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "measure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_14
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Child "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v17, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v7

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, " at index "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onMeasure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_15
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onMeasure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_16
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    :goto_c
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onMeasure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :goto_d
    goto/16 :goto_c
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v5, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroidx/customview/view/AbsSavedState;"

    const-string v1, "getSuperState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroidx/customview/view/AbsSavedState;"

    const-string v1, "getSuperState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v5, :cond_1

    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_1
    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_2
    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v5, v6, :cond_3

    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v7, 0x5

    invoke-virtual {p0, v5, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_3
    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v5, v6, :cond_4

    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v7, 0x800003

    invoke-virtual {p0, v5, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_4
    iget v5, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v5, v6, :cond_5

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v5, 0x800005

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onRestoreInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onRtlPropertiesChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onRtlPropertiesChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onSaveInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onSaveInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onSaveInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_4

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    iget v12, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-nez v10, :cond_3

    if-eqz v11, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_3
    iget v5, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v5, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    :cond_4
    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v5, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v5, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v5, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    iget v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput v5, v6, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onSaveInstanceState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_1

    const/4 p1, 0x3

    if-eq v5, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v9, v5

    float-to-int v10, p1

    invoke-virtual {v8, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v5, v8

    iget v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr p1, v8

    iget-object v8, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    mul-float v5, v5, v5

    mul-float p1, p1, p1

    add-float/2addr v5, p1

    mul-int v8, v8, v8

    int-to-float p1, v8

    cmpg-float p1, v5, p1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    iput-boolean v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "onTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public openDrawer(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public openDrawer(IZ)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No drawer view found with gravity "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-boolean v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_0

    iput v7, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 p2, 0x1

    iput p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x0

    if-eqz p2, :cond_2

    iget p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v6, v5}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p1, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p2, v6, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not a sliding drawer"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "openDrawer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "removeDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "removeDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v5, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "removeDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "removeDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "requestDisallowInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "requestDisallowInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "requestDisallowInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "requestDisallowInterceptTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public requestLayout()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "requestLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    if-nez v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "requestLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "requestLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "requestLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setChildInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-nez p2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setWillNotDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setWillNotDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setChildInsets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerElevation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge p1, v5, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerElevation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v5, 0x5

    invoke-virtual {p0, p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p2, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    const/4 v6, 0x3

    if-eq p2, v6, :cond_3

    const/4 v7, 0x5

    if-eq p2, v7, :cond_2

    const v7, 0x800003

    if-eq p2, v7, :cond_1

    const v7, 0x800005

    if-eq p2, v7, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    :cond_1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    :cond_2
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_3
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v5, v6, :cond_4

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    :goto_1
    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    :cond_5
    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_8
    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p2, p2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, " is not a "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "drawer with appropriate layout_gravity"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerLockMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public setDrawerShadow(II)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v5, 0x800003

    and-int v6, p2, v5

    if-ne v6, v5, :cond_1

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v5, 0x800005

    and-int v6, p2, v5

    if-ne v6, v5, :cond_2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v5, p2, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_4

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerShadow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p1, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerViewOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerViewOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput p2, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setDrawerViewOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setScrimColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setScrimColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "setStatusBarBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 8

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "updateDrawerState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    if-ne v5, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p1, v6, :cond_3

    if-ne v5, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getLayoutParams"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float p2, p2, v5

    if-nez p2, :cond_4

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_4
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    if-eq v6, p1, :cond_6

    iput v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr p1, v7

    :goto_3
    if-ltz p1, :cond_6

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2, v6}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDrawerStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_3

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/drawerlayout/widget/DrawerLayout;"

    const-string v1, "updateDrawerState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
