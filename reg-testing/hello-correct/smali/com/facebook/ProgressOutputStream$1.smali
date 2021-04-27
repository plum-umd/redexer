.class Lcom/facebook/ProgressOutputStream$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ProgressOutputStream;

.field final synthetic val$progressCallback:Lcom/facebook/GraphRequestBatch$OnProgressCallback;


# direct methods
.method constructor <init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/GraphRequestBatch$OnProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    iput-object p2, p0, Lcom/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/ProgressOutputStream$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/ProgressOutputStream$1;->val$progressCallback:Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    iget-object v6, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-static {v6}, Lcom/facebook/ProgressOutputStream;->access$000(Lcom/facebook/ProgressOutputStream;)Lcom/facebook/GraphRequestBatch;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-static {v7}, Lcom/facebook/ProgressOutputStream;->access$100(Lcom/facebook/ProgressOutputStream;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/ProgressOutputStream$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-static {v9}, Lcom/facebook/ProgressOutputStream;->access$200(Lcom/facebook/ProgressOutputStream;)J

    move-result-wide v9

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onBatchProgress"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {v5 .. v10}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->onBatchProgress(Lcom/facebook/GraphRequestBatch;JJ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onBatchProgress"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/ProgressOutputStream$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
