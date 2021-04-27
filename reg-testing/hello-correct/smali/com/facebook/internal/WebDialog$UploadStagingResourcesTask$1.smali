.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

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

    const-string v0, "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Error staging photo."

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    new-instance v6, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v6, p1, v5}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v5, "uri"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "optString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "optString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v5, v6

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :try_start_5
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_0
    move-exception p1

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-static {v5}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v5

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v5, v6

    :goto_0
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/concurrent/CountDownLatch;"

    const-string v1, "countDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/CountDownLatch;"

    const-string v1, "countDown"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
