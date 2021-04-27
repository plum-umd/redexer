.class final Lcom/facebook/internal/ImageDownloader$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/facebook/internal/ImageRequest$Callback;

.field final synthetic val$error:Ljava/lang/Exception;

.field final synthetic val$isCachedRedirect:Z

.field final synthetic val$request:Lcom/facebook/internal/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$1;->val$request:Lcom/facebook/internal/ImageRequest;

    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$1;->val$error:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/facebook/internal/ImageDownloader$1;->val$isCachedRedirect:Z

    iput-object p4, p0, Lcom/facebook/internal/ImageDownloader$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/facebook/internal/ImageDownloader$1;->val$callback:Lcom/facebook/internal/ImageRequest$Callback;

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

    const-string v0, "Lcom/facebook/internal/ImageDownloader$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/internal/ImageResponse;

    iget-object v6, p0, Lcom/facebook/internal/ImageDownloader$1;->val$request:Lcom/facebook/internal/ImageRequest;

    iget-object v7, p0, Lcom/facebook/internal/ImageDownloader$1;->val$error:Ljava/lang/Exception;

    iget-boolean v8, p0, Lcom/facebook/internal/ImageDownloader$1;->val$isCachedRedirect:Z

    iget-object v9, p0, Lcom/facebook/internal/ImageDownloader$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/facebook/internal/ImageResponse;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/facebook/internal/ImageDownloader$1;->val$callback:Lcom/facebook/internal/ImageRequest$Callback;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Lcom/facebook/internal/ImageRequest$Callback;->onCompleted(Lcom/facebook/internal/ImageResponse;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/ImageDownloader$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
