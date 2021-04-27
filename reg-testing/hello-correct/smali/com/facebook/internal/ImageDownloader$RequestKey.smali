.class Lcom/facebook/internal/ImageDownloader$RequestKey;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    .line 315
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/internal/ImageDownloader$RequestKey;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    instance-of v6, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    if-eqz v6, :cond_0

    check-cast p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v6, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    if-ne v6, v7, :cond_0

    iget-object p1, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne p1, v6, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/ImageDownloader$RequestKey;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public hashCode()I
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const/16 v1, 0x431

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 323
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
