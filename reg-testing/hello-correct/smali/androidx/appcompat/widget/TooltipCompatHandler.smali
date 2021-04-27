.class Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field private static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$2;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 110
    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 111
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    .line 113
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    .line 115
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private cancelPendingShow()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "cancelPendingShow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "cancelPendingShow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private clearAnchorPos()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "clearAnchorPos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v5, 0x7fffffff

    iput v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    iput v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "clearAnchorPos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private scheduleShow()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "scheduleShow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v7, v7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "postDelayed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "postDelayed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "scheduleShow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "setPendingHandler"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v5, :cond_0

    invoke-direct {v5}, Landroidx/appcompat/widget/TooltipCompatHandler;->cancelPendingShow()V

    :cond_0
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    sget-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz p0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->scheduleShow()V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "setPendingHandler"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "setTooltipText"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v5, p0, :cond_0

    invoke-static {v6}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    sget-object p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz p1, :cond_1

    iget-object v5, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v5, p0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setOnLongClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setOnLongClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setLongClickable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setLongClickable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setOnHoverListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setOnHoverListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    new-instance v5, Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {v5, p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "setTooltipText"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "updateAnchorPos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    float-to-int v5, v5

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

    float-to-int p1, p1

    iget v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    sub-int v6, v5, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-gt v6, v7, :cond_0

    iget v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    sub-int v6, p1, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    if-gt v6, v7, :cond_0

    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "updateAnchorPos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    iput v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "updateAnchorPos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method


# virtual methods
.method hide()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "hide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    const/4 v6, 0x0

    if-ne v5, p0, :cond_1

    sput-object v6, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    iput-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeOnAttachStateChangeListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeOnAttachStateChangeListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v5, "TooltipCompatHandler"

    const-string v7, "sActiveHandler.mPopup == null"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-ne v5, p0, :cond_2

    invoke-static {v6}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "hide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onHover"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onHover"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "accessibility"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/accessibility/AccessibilityManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/accessibility/AccessibilityManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/accessibility/AccessibilityManager;"

    const-string v1, "isTouchExplorationEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/accessibility/AccessibilityManager;"

    const-string v1, "isTouchExplorationEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onHover"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x7

    if-eq p1, v6, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->clearAnchorPos()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/TooltipCompatHandler;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    :cond_4
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onHover"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onLongClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onLongClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onViewAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onViewAttachedToWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method show(Z)V
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "show"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "show"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    sget-object v5, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_1
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    iput-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    new-instance p1, Landroidx/appcompat/widget/TooltipPopup;

    iget-object v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p1, v5}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    iget-object v7, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v8, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    iget v9, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v10, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v11, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "addOnAttachStateChangeListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "addOnAttachStateChangeListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x9c4

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p1

    const/4 v5, 0x1

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_3

    const-wide/16 v5, 0xbb8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 v5, 0x3a98

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewConfiguration;"

    const-string v1, "getLongPressTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    int-to-long v7, p1

    sub-long/2addr v5, v7

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v7, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v7, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "postDelayed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "postDelayed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/TooltipCompatHandler;"

    const-string v1, "show"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
