.class Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 575
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "notifyOnDismissListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/PopupWindow$OnDismissListener;"

    const-string v1, "onDismiss"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/PopupWindow$OnDismissListener;"

    const-string v1, "onDismiss"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "notifyOnDismissListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v5, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 v5, 0x80000

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/Intent;"

    const-string v1, "addFlags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Intent;"

    const-string v1, "addFlags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "startActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "startActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v5, 0x0

    iput-boolean v5, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    iget v5, p1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public onDismiss()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onDismiss"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onDismiss"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onItemClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/AdapterView;"

    const-string v1, "getAdapter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/AdapterView;"

    const-string v1, "getAdapter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onItemClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz p1, :cond_2

    if-lez p3, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 p2, 0x80000

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/Intent;"

    const-string v1, "addFlags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Intent;"

    const-string v1, "addFlags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "startActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "startActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onItemClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onLongClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result p1

    const/4 v5, 0x1

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v5, p1, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    iget v6, p1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onLongClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ActivityChooserView$Callbacks;"

    const-string v1, "onLongClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
