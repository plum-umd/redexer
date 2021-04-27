.class Lcom/facebook/share/internal/LikeActionController$11;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

.field final synthetic val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

.field final synthetic val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iput-object p4, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$11;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-boolean v5, v5, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectIsPage:Z

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v8}, Lcom/facebook/share/internal/LikeActionController;->access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    invoke-static {p1, v5, v7, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v6, "get_verified_id"

    invoke-static {p1, v6, v5}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    :cond_2
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    if-eqz p1, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onComplete"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onComplete"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$11;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
