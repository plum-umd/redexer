.class public Lcom/facebook/appevents/AppEventsManager;
.super Ljava/lang/Object;
.source "AppEventsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEventsManager;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEventsManager;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v6, Lcom/facebook/appevents/AppEventsManager$1;

    invoke-direct {v6}, Lcom/facebook/appevents/AppEventsManager$1;-><init>()V

    invoke-static {v5, v6}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v6, Lcom/facebook/appevents/AppEventsManager$2;

    invoke-direct {v6}, Lcom/facebook/appevents/AppEventsManager$2;-><init>()V

    invoke-static {v5, v6}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v6, Lcom/facebook/appevents/AppEventsManager$3;

    invoke-direct {v6}, Lcom/facebook/appevents/AppEventsManager$3;-><init>()V

    invoke-static {v5, v6}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v6, Lcom/facebook/appevents/AppEventsManager$4;

    invoke-direct {v6}, Lcom/facebook/appevents/AppEventsManager$4;-><init>()V

    invoke-static {v5, v6}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEventsManager;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
