.class public final Lcom/facebook/internal/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FeatureManager$Callback;,
        Lcom/facebook/internal/FeatureManager$Feature;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "checkFeature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/internal/FeatureManager$1;

    invoke-direct {v5, p1, p0}, Lcom/facebook/internal/FeatureManager$1;-><init>(Lcom/facebook/internal/FeatureManager$Callback;Lcom/facebook/internal/FeatureManager$Feature;)V

    invoke-static {v5}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "checkFeature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static defaultStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "defaultStatus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/internal/FeatureManager$2;->$SwitchMap$com$facebook$internal$FeatureManager$Feature:[I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->ordinal()I

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget p0, v5, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "defaultStatus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :pswitch_0
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "defaultStatus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "getGKStatus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FBSDKFeature"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->defaultStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "getGKStatus"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v6, 0x0

    if-ne v5, p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v7, 0x1

    if-ne v5, p0, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->getParent()Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v5

    if-ne v5, p0, :cond_2

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_2
    invoke-static {v5}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v6, 0x1

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/FeatureManager;"

    const-string v1, "isEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method
