.class Landroidx/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroidx/transition/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/ViewOverlayApi14;)V

    iput-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    return-void
.end method

.method static createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "createFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/transition/ViewOverlayApi14;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

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
    if-ge v7, v6, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getChildAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v9, v8, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v9, :cond_0

    check-cast v8, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    iget-object p0, v8, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroidx/transition/ViewOverlayApi14;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "createFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v6, Landroidx/transition/ViewGroupOverlayApi14;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v6, v7, v5, p0}, Landroidx/transition/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "createFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_2
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "createFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "getContentView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v6, 0x1020002

    if-ne v5, v6, :cond_1

    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "getContentView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_2
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "getContentView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v5, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v5}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->clear()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "getOverlayView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "getOverlayView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method isEmpty()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v5}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v5, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewOverlayApi14;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
