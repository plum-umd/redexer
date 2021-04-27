.class Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V
    .locals 0

    .line 569
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iput p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v5, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v5, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;"

    const-string v1, "onAnimationStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
