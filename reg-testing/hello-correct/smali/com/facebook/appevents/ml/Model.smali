.class public final Lcom/facebook/appevents/ml/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/Model$Weight;,
        Lcom/facebook/appevents/ml/Model$FileDownloadTask;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "facebook_ml/"

.field private static final EMBEDDING_SIZE:I = 0x40

.field private static final SEQ_LEN:I = 0x80

.field public static final SHOULD_FILTER:Ljava/lang/String; = "SHOULD_FILTER"

.field private static final SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEIGHTS_KEY_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private dir:Ljava/io/File;

.field private embedding:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;

.field private fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

.field private modelFile:Ljava/io/File;

.field private modelUri:Ljava/lang/String;

.field private ruleFile:Ljava/io/File;

.field private ruleUri:Ljava/lang/String;

.field private thresholds:[F

.field private useCase:Ljava/lang/String;

.field private versionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fb_mobile_add_to_cart"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fb_mobile_complete_registration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "other"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fb_mobile_purchase"

    aput-object v2, v0, v1

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/Model;->SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/facebook/appevents/ml/Model$1;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Model$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/Model;->WEIGHTS_KEY_MAPPING:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/facebook/appevents/ml/Model;->versionID:I

    .line 102
    iput-object p5, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    .line 103
    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->modelUri:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/facebook/appevents/ml/Model;->ruleUri:Ljava/lang/String;

    .line 106
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p4

    const-string p5, "facebook_ml/"

    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    .line 107
    iget-object p3, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    .line 108
    iget-object p3, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_0
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    .line 111
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_rule"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/ml/Model;)Z
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "access$000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/appevents/ml/Model;->initializeWeights()Z

    move-result p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "access$000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/Model;->downloadRule(Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private deleteOldFiles()V
    .locals 12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "deleteOldFiles"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->dir:Ljava/io/File;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "listFiles"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "listFiles"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    array-length v6, v5

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "_"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Lcom/facebook/appevents/ml/Model;->versionID:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "startsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "startsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "startsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "startsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "delete"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/File;"

    const-string v1, "delete"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "deleteOldFiles"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private downloadModel(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadModel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "exists"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "exists"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Runnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Runnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadModel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->modelUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v6, Lcom/facebook/appevents/ml/Model$FileDownloadTask;

    iget-object v7, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    invoke-direct {v6, v5, v7, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/AsyncTask;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/AsyncTask;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadModel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private downloadRule(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadRule"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "exists"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/io/File;"

    const-string v1, "exists"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->ruleUri:Ljava/lang/String;

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v6, Lcom/facebook/appevents/ml/Model$FileDownloadTask;

    iget-object v7, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    invoke-direct {v6, v5, v7, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/AsyncTask;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/AsyncTask;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadRule"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Runnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Runnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "downloadRule"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private initializeWeights()Z
    .locals 20

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/io/InputStream;"

    const-string v1, "available"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/io/InputStream;"

    const-string v1, "available"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v6, v7, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/io/DataInputStream;"

    const-string v1, "readFully"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {v8, v6}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/DataInputStream;"

    const-string v1, "readFully"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/io/DataInputStream;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/io/DataInputStream;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    const/4 v8, 0x4

    if-ge v7, v8, :cond_0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "wrap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-static {v6, v5, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "wrap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "order"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "order"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "getInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    :try_start_8
    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "getInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_9
    add-int/lit8 v10, v9, 0x4

    if-ge v7, v10, :cond_1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    :try_start_a
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6, v8, v9}, Ljava/lang/String;-><init>([BII)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "names"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {v8}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "names"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_0
    array-length v13, v11

    if-ge v12, v13, :cond_2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_f
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Ljava/util/HashMap;

    :try_start_11
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    array-length v12, v11

    move v13, v10

    const/4 v10, 0x0

    :goto_1
    const/4 v14, 0x1

    if-ge v10, v12, :cond_6

    aget-object v15, v11, v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v15, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getJSONArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_12
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v16, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getJSONArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v16, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_13
    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v0}, Lorg/json/JSONArray;->length()I

    move-result v17
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    move/from16 v0, v17

    new-array v1, v0, [I

    move-object/from16 v17, v1

    const/4 v14, 0x0

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v17

    array-length v1, v0

    move/from16 v19, v1

    move/from16 v1, v19

    if-ge v14, v1, :cond_3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v16, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "getInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_15
    move-object/from16 v0, v16

    move/from16 v1, v14

    invoke-virtual/range {v0 .. v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/json/JSONArray;"

    const-string v1, "getInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_16
    aput v19, v17, v14

    aget v19, v17, v14

    mul-int v18, v18, v19

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_3
    mul-int/lit8 v14, v18, 0x4

    add-int v16, v13, v14

    move/from16 v0, v16

    if-le v0, v7, :cond_4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_4
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "wrap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_17
    invoke-static {v6, v13, v14}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v13
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "wrap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_18
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    aput-object v14, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "order"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_19
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "order"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v18

    new-array v14, v0, [F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "asFloatBuffer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1a
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Ljava/nio/ByteBuffer;"

    const-string v1, "asFloatBuffer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    aput-object v14, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/nio/FloatBuffer;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1b
    move-object/from16 v0, v13

    move-object/from16 v1, v14

    move/from16 v2, v5

    move/from16 v3, v18

    invoke-virtual/range {v0 .. v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/nio/FloatBuffer;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v13, Lcom/facebook/appevents/ml/Model;->WEIGHTS_KEY_MAPPING:Ljava/util/Map;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    aput-object v15, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1c
    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "containsKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1d
    if-eqz v13, :cond_5

    sget-object v13, Lcom/facebook/appevents/ml/Model;->WEIGHTS_KEY_MAPPING:Ljava/util/Map;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    aput-object v15, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1e
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1f
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    :cond_5
    new-instance v13, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v14

    invoke-direct/range {v0 .. v2}, Lcom/facebook/appevents/ml/Model$Weight;-><init>([I[F)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v15, v2, v1

    const/4 v1, 0x6

    aput-object v13, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_20
    invoke-interface {v9, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Map;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    :try_start_21
    move/from16 v13, v16

    goto/16 :goto_1

    :cond_6
    const-string v6, "embed.weight"
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_22
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_23
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "convs.0.weight"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_24
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_25
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "convs.1.weight"
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_26
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_27
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "convs.2.weight"
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_28
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_29
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-static {v7, v8, v10, v11}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v12

    invoke-static {v7, v8, v10, v11}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v12

    invoke-static {v7, v8, v10, v11}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const-string v6, "convs.0.bias"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2a
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2b
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "convs.1.bias"
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2c
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2d
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "convs.2.bias"
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2e
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2f
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "fc1.weight"
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_30
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_31
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "fc2.weight"
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_32
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_33
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "fc3.weight"
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_34
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_35
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    invoke-static {v7, v8, v10}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    invoke-static {v7, v8, v10}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v10, v10, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v10, v14

    invoke-static {v7, v8, v10}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v7

    iput-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const-string v6, "fc1.bias"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_36
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_37
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "fc2.bias"
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_38
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_39
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v6, "fc3.bias"
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3a
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Map;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3b
    check-cast v6, Lcom/facebook/appevents/ml/Model$Weight;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v14

    :catch_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initializeWeights"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method getRuleFile()Ljava/io/File;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "getRuleFile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "getRuleFile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method initialize(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initialize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/appevents/ml/Model$2;

    invoke-direct {v5, p0, p1}, Lcom/facebook/appevents/ml/Model$2;-><init>(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V

    invoke-direct {p0, v5}, Lcom/facebook/appevents/ml/Model;->downloadModel(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/facebook/appevents/ml/Model;->deleteOldFiles()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "initialize"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method predict([FLjava/lang/String;)Ljava/lang/String;
    .locals 25

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "predict"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    const/16 v6, 0x80

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lcom/facebook/appevents/ml/Utils;->vectorize(Ljava/lang/String;I)[I

    move-result-object v7

    iget-object v8, v5, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-static {v7, v8, v9, v6, v10}, Lcom/facebook/appevents/ml/Operator;->embedding([I[FIII)[F

    move-result-object v7

    iget-object v8, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v8, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v8, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/4 v10, 0x2

    aget v16, v8, v10

    iget-object v8, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/16 v18, 0x0

    aget v17, v8, v18

    const/4 v13, 0x1

    const/16 v14, 0x80

    const/16 v15, 0x40

    move-object v11, v7

    invoke-static/range {v11 .. v17}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v8

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v11, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v16, v11, v10

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v17, v11, v18

    move-object v11, v7

    invoke-static/range {v11 .. v17}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v19

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v11, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v16, v11, v10

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v17, v11, v18

    move-object v11, v7

    invoke-static/range {v11 .. v17}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v7

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v10

    rsub-int v12, v12, 0x80

    add-int/2addr v12, v9

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v18

    invoke-static {v8, v11, v9, v12, v13}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v10

    rsub-int v12, v12, 0x80

    add-int/2addr v12, v9

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v18

    move-object/from16 v0, v19

    move-object/from16 v1, v11

    move/from16 v2, v9

    move/from16 v3, v12

    move/from16 v4, v13

    invoke-static/range {v0 .. v4}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v10

    rsub-int v12, v12, 0x80

    add-int/2addr v12, v9

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v18

    invoke-static {v7, v11, v9, v12, v13}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v10

    rsub-int v11, v11, 0x80

    add-int/2addr v11, v9

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v18

    mul-int v11, v11, v12

    invoke-static {v8, v11}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v10

    rsub-int v11, v11, 0x80

    add-int/2addr v11, v9

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v18

    mul-int v11, v11, v12

    move-object/from16 v0, v19

    move/from16 v1, v11

    invoke-static/range {v0 .. v1}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v10

    rsub-int v11, v11, 0x80

    add-int/2addr v11, v9

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v18

    mul-int v11, v11, v12

    invoke-static {v7, v11}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v10

    rsub-int v11, v11, 0x80

    add-int/2addr v11, v9

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v18

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v10

    rsub-int v13, v13, 0x80

    add-int/2addr v13, v9

    invoke-static {v8, v11, v12, v13}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v8

    iget-object v11, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v11, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v11, v10

    rsub-int v11, v11, 0x80

    add-int/2addr v11, v9

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v18

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v10

    rsub-int v13, v13, 0x80

    add-int/2addr v13, v9

    move-object/from16 v0, v19

    move/from16 v1, v11

    move/from16 v2, v12

    move/from16 v3, v13

    invoke-static/range {v0 .. v3}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v11

    iget-object v12, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v12, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v12, v10

    rsub-int v12, v12, 0x80

    add-int/2addr v12, v9

    iget-object v13, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v13, v13, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v13, v13, v18

    iget-object v14, v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v14, v14, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v14, v10

    sub-int/2addr v6, v10

    add-int/2addr v6, v9

    invoke-static {v7, v12, v13, v6}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v6

    invoke-static {v8, v11}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v7

    invoke-static {v7, v6}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v6

    move-object/from16 v7, p1

    invoke-static {v6, v7}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v10

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v14, v6, v9

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v15, v6, v18

    const/4 v13, 0x1

    invoke-static/range {v10 .. v15}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v19

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v18

    move-object/from16 v0, v19

    move/from16 v1, v6

    invoke-static/range {v0 .. v1}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    move-object/from16 v20, v2

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v7, v5, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v23, v7, v9

    iget-object v7, v5, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v24, v7, v18

    const/16 v22, 0x1

    move-object/from16 v21, v6

    invoke-static/range {v19 .. v24}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v10

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v18

    invoke-static {v10, v6}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v11, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v12, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v14, v6, v9

    iget-object v6, v5, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v15, v6, v18

    invoke-static/range {v10 .. v15}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v6

    iget-object v7, v5, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v18

    invoke-static {v6, v7}, Lcom/facebook/appevents/ml/Operator;->softmax([FI)V

    invoke-virtual {v5, v6}, Lcom/facebook/appevents/ml/Model;->processPredictionResult([F)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "predict"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method processAddressDetectionResult([F)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processAddressDetectionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    aget p1, p1, v5

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_0

    const-string p1, "SHOULD_FILTER"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processAddressDetectionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method processPredictionResult([F)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processPredictionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v5, p1

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    array-length v5, v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    const-string v7, "SUGGEST_EVENT"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model;->processSuggestedEventResult([F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processPredictionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    const-string v7, "DATA_DETECTION_ADDRESS"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model;->processAddressDetectionResult([F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processPredictionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processPredictionResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method processSuggestedEventResult([F)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processSuggestedEventResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    array-length v5, v5

    array-length v6, p1

    if-eq v5, v6, :cond_0

    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processSuggestedEventResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget v7, p1, v5

    aget v6, v6, v5

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_1

    sget-object p1, Lcom/facebook/appevents/ml/Model;->SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processSuggestedEventResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "other"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/ml/Model;"

    const-string v1, "processSuggestedEventResult"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
