.class Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->predictAndProcess(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$pathID:Ljava/lang/String;

.field final synthetic val$viewData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$viewData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$pathID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "toLowerCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "toLowerCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    iget-object v6, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$viewData:Lorg/json/JSONObject;

    invoke-static {v6, v5}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getDenseFeatures(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    invoke-static {v8}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->access$100(Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getTextFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_3
    const-string v7, "SUGGEST_EVENT"

    invoke-static {v7, v6, v5}, Lcom/facebook/appevents/ml/ModelManager;->predict(Ljava/lang/String;[FLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$pathID:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->addPrediction(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "other"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    invoke-static {v5, v7, v6}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->access$000(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
