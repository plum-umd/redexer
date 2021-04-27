.class Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;
.super Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferChunkWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chunkEnd:Ljava/lang/String;

.field private chunkStart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 428
    invoke-direct {p0, p1, p4}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 429
    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "enqueueRetry"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    invoke-static {v5, v6, v7, p1}, Lcom/facebook/share/internal/VideoUploader;->access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "enqueueRetry"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "getParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "upload_phase"

    const-string v7, "transfer"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v7, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v6, v6, Lcom/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    const-string v7, "upload_session_id"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    const-string v7, "start_offset"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v7, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/facebook/share/internal/VideoUploader;->access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "video_file_chunk"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putByteArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "putByteArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "getParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Error reading video"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "getParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "getTransientErrorCodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->transientErrorCodes:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "getTransientErrorCodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method protected handleError(Lcom/facebook/FacebookException;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "handleError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v6, v6, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Error uploading video \'%s\'"

    invoke-static {p1, v6, v5}, Lcom/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;"

    const-string v1, "endUploadWithFailure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;"

    const-string v1, "endUploadWithFailure"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "handleError"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "handleSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "start_offset"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "end_offset"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lorg/json/JSONObject;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object p1, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {p1, v7}, Lcom/facebook/share/internal/VideoUploader;->access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v6, v5, p1, v7}, Lcom/facebook/share/internal/VideoUploader;->access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;"

    const-string v1, "handleSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
