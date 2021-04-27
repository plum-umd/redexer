.class Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeToDiskWorkItem"
.end annotation


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private controllerJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    .line 1766
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/facebook/share/internal/LikeActionController;->access$2600(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
