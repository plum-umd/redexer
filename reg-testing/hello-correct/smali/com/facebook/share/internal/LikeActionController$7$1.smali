.class Lcom/facebook/share/internal/LikeActionController$7$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$7;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$7;

.field final synthetic val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$7$1;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;"

    const-string v1, "getError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    const-string v7, "fb_like_control_did_like"

    invoke-virtual {p1, v7, v6, v5}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object p1, p1, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {p1, v5}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$7$1;"

    const-string v1, "onBatchCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
