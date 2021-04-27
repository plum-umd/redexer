.class final Lcom/facebook/FacebookSdk$4;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/FacebookSdk$4;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/FacebookSdk$4;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/FacebookSdk$4;->call()Ljava/lang/Void;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/FacebookSdk$4;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/FacebookSdk$4;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/AccessTokenManager;->loadCurrentAccessToken()Z

    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ProfileManager;->loadCurrentProfile()Z

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    :cond_0
    iget-object v5, p0, Lcom/facebook/FacebookSdk$4;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    if-eqz v5, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onInitialized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onInitialized"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/facebook/FacebookSdk;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/facebook/appevents/AppEventsLogger;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getApplicationContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getApplicationContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/FacebookSdk$4;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
