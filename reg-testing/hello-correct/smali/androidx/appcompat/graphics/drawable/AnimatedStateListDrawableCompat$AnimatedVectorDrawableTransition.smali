.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 433
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;"

    const-string v1, "stop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;"

    const-string v1, "stop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
