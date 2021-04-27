.class final Lcom/facebook/internal/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    iput-object p2, p0, Lcom/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/internal/Utility$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onFailure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onFailure(Lcom/facebook/FacebookException;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onFailure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/facebook/internal/Utility$1;->val$accessToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/facebook/internal/ProfileInformationCache;->putProfileInformation(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/facebook/internal/Utility$1;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/Utility$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
