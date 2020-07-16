.class final Lcom/facebook/applinks/AppLinkData$1;
.super Ljava/lang/Object;
.source "AppLinkData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationIdCopy:Ljava/lang/String;

.field final synthetic val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/applinks/AppLinkData$1;->val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/applinks/AppLinkData$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/applinks/AppLinkData$1;->val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    invoke-static {v5, v6, v7}, Lcom/facebook/applinks/AppLinkData;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/applinks/AppLinkData$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
