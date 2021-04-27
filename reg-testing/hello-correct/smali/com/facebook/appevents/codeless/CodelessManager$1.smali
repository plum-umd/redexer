.class final Lcom/facebook/appevents/codeless/CodelessManager$1;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessManager;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSettings:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/codeless/CodelessManager$1;"

    const-string v1, "onShake"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessSetupEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$appId:Ljava/lang/String;

    invoke-static {v5}, Lcom/facebook/appevents/codeless/CodelessManager;->access$000(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/codeless/CodelessManager$1;"

    const-string v1, "onShake"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
