.class final Landroidx/transition/ViewGroupUtilsApi14$1;
.super Landroid/animation/LayoutTransition;
.source "ViewGroupUtilsApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/animation/LayoutTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangingLayout()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/ViewGroupUtilsApi14$1;"

    const-string v1, "isChangingLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ViewGroupUtilsApi14$1;"

    const-string v1, "isChangingLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
