.class final Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;
.super Ljava/util/HashSet;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 362
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0x1770

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
