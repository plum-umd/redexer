.class final Lcom/google/android/gms/common/images/ImageManager$zad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zad"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mUri:Landroid/net/Uri;

.field private final zadr:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic zamr:Lcom/google/android/gms/common/images/ImageManager;

.field private zamu:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mUri:Landroid/net/Uri;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamu:Z

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zadr:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zah(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zaa;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    iget-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamu:Z

    if-eqz v2, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$zaa;->evictAll()V

    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamu:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zag(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zah(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zaa;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/images/zab;

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mUri:Landroid/net/Uri;

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/images/ImageManager$zaa;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v2, :cond_5

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    .line 23
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/images/zaa;

    if-eqz v0, :cond_3

    .line 25
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7, v1}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    .line 28
    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v7}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v7

    .line 29
    invoke-virtual {v5, v6, v7, v1}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    .line 30
    :goto_2
    instance-of v6, v5, Lcom/google/android/gms/common/images/zad;

    if-nez v6, :cond_4

    .line 31
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->zadr:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zacc()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zacd()Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zad;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
