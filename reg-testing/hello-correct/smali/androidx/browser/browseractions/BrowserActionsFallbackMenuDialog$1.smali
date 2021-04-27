.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrowserActionsFallbackMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

.field final synthetic val$isEnterAnimation:Z


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    iput-boolean p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->val$isEnterAnimation:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-static {p1}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->access$001(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
