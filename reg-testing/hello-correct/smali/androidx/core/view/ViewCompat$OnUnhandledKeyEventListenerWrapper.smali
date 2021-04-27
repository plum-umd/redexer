.class Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUnhandledKeyEventListenerWrapper"
.end annotation


# instance fields
.field private mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 0

    .line 3486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3487
    iput-object p1, p0, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;->mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;"

    const-string v1, "onUnhandledKeyEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;->mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onUnhandledKeyEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1, p2}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onUnhandledKeyEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;"

    const-string v1, "onUnhandledKeyEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
