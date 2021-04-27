.class Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 757
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    .line 758
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v0, 0x0

    .line 759
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/4 v0, 0x0

    .line 760
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 761
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method

.method private getValueAt(J)F
    .locals 12

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getValueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const/4 v7, 0x0

    cmp-long v8, p1, v5

    if-gez v8, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getValueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_0
    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    cmp-long v11, v5, v8

    if-ltz v11, :cond_2

    cmp-long v8, p1, v5

    if-gez v8, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v5

    iget v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v6, v10, v5

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v7, v10}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    mul-float v5, v5, p1

    add-float/2addr v6, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getValueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_2
    :goto_0
    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr p1, v5

    const/high16 v5, 0x3f000000    # 0.5f

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v7, v10}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    mul-float p1, p1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getValueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private interpolateValue(F)F
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "interpolateValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v5, -0x3f800000    # -4.0f

    mul-float v5, v5, p1

    mul-float v5, v5, p1

    const/high16 v6, 0x40800000    # 4.0f

    mul-float p1, p1, v6

    add-float/2addr v5, p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "interpolateValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "computeScrollDelta"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v7

    invoke-direct {p0, v7}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v7

    iget-wide v8, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v8, v5, v8

    iput-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v5, v8

    mul-float v5, v5, v7

    iget v6, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float v6, v6, v5

    float-to-int v6, v6

    iput v6, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    iget v6, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "computeScrollDelta"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Cannot compute scroll delta before calling start()"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "computeScrollDelta"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public getDeltaX()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getDeltaX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getDeltaX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDeltaY()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getDeltaY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getDeltaY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getHorizontalDirection()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getHorizontalDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    div-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getHorizontalDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getVerticalDirection()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getVerticalDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    div-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "getVerticalDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isFinished()Z
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "isFinished"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v7, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v9, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "isFinished"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public requestStop()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "requestStop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v7, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v7, v5, v7

    long-to-int v8, v7

    iget v7, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v7}, Landroidx/core/widget/AutoScrollHelper;->constrain(III)I

    move-result v7

    iput v7, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    invoke-direct {p0, v5, v6}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v7

    iput v7, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iput-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "requestStop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setRampDownDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setRampDownDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setRampUpDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setRampUpDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 5

    const/4 v2, 0x7

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

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setTargetVelocity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iput p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "setTargetVelocity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/animation/AnimationUtils;"

    const-string v1, "currentAnimationTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    const/4 v5, 0x0

    iput v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    iput v5, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ClampedScroller;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
