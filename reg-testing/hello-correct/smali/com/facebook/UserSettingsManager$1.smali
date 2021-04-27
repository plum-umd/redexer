.class final Lcom/facebook/UserSettingsManager$1;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/UserSettingsManager;->initializeCodelessSetupEnabledAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currTime:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/UserSettingsManager$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$000()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/UserSettingsManager$UserSetting;->getValue()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_1

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v5

    const-string v9, "advertiser_id"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "auto_event_setup_enabled"

    const-string v9, "fields"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v7}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    invoke-virtual {v7, v8}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "optBoolean"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "optBoolean"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v8, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v5

    iget-wide v7, p0, Lcom/facebook/UserSettingsManager$1;->val$currTime:J

    iput-wide v7, v5, Lcom/facebook/UserSettingsManager$UserSetting;->lastTS:J

    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$100()Lcom/facebook/UserSettingsManager$UserSetting;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/UserSettingsManager;->access$200(Lcom/facebook/UserSettingsManager$UserSetting;)V

    :cond_1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/UserSettingsManager$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
