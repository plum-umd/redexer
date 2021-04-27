.class Lcom/facebook/share/internal/LikeActionController$9$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$9;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$9;

.field final synthetic val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

.field final synthetic val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$9$1;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v5, p1, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "isObjectLiked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->isObjectLiked()Z

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "isObjectLiked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v7, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v8, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v9, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v10, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getUnlikeToken"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getUnlikeToken()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getUnlikeToken"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v5 .. v11}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$9$1;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v8, v8, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v8}, Lcom/facebook/share/internal/LikeActionController;->access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Unable to refresh like state for id: \'%s\'"

    invoke-static {p1, v5, v7, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$9$1;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
