.class Lcom/facebook/appevents/ml/Model$2;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/Model;->initialize(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/ml/Model;

.field final synthetic val$onModelInitialized:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/ml/Model$2;->this$0:Lcom/facebook/appevents/ml/Model;

    iput-object p2, p0, Lcom/facebook/appevents/ml/Model$2;->val$onModelInitialized:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model$2;->this$0:Lcom/facebook/appevents/ml/Model;

    invoke-static {v5}, Lcom/facebook/appevents/ml/Model;->access$000(Lcom/facebook/appevents/ml/Model;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model$2;->this$0:Lcom/facebook/appevents/ml/Model;

    iget-object v6, p0, Lcom/facebook/appevents/ml/Model$2;->val$onModelInitialized:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/facebook/appevents/ml/Model;->access$100(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
