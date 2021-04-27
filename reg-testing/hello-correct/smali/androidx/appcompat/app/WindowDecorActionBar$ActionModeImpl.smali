.class public Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
.super Landroidx/appcompat/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V
    .locals 0

    .line 993
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 994
    iput-object p2, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 995
    iput-object p3, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 996
    new-instance p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 997
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 998
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "dispatchOnCreate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onCreateActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v5, p0, v6}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onCreateActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "dispatchOnCreate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "dispatchOnCreate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public finish()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "finish"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v5, p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "finish"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iput-object p0, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iput-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDestroyActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p0}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onDestroyActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getViewGroup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getViewGroup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x20

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "sendAccessibilityEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v6, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v7, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v7, v7, Landroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iput-object v5, v6, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "finish"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getCustomView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/ref/WeakReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/ref/WeakReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getCustomView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getMenuInflater"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getMenuInflater"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "getTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public invalidate()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v5, p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onPrepareActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v5, p0, v6}, Landroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onPrepareActionMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public isTitleOptional()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "isTitleOptional"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "isTitleOptional"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
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

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onCloseMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onCloseMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onCloseSubMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onCloseSubMenu"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuItemSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onActionItemClicked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onActionItemClicked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuItemSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuItemSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuModeChange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuModeChange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onMenuModeChange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onSubMenuSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez v5, :cond_0

    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onSubMenuSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/view/menu/MenuBuilder;"

    const-string v1, "hasVisibleItems"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/view/menu/MenuBuilder;"

    const-string v1, "hasVisibleItems"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onSubMenuSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    new-instance v5, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v7, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v7}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "onSubMenuSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setCustomView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setCustomView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setSubtitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitleOptionalHint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    iget-object v5, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v5, v5, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;"

    const-string v1, "setTitleOptionalHint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
