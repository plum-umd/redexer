.class Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchExplorationStateChangeListenerWrapper"
.end annotation


# instance fields
.field final mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;->mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    iget-object v5, p0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;->mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;->mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;->mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "onTouchExplorationStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;->mListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onTouchExplorationStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onTouchExplorationStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;"

    const-string v1, "onTouchExplorationStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
