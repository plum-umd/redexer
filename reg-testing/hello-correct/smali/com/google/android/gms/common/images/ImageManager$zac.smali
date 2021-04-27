.class final Lcom/google/android/gms/common/images/ImageManager$zac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zac"
.end annotation


# instance fields
.field private final synthetic zamr:Lcom/google/android/gms/common/images/ImageManager;

.field private final zamt:Lcom/google/android/gms/common/images/zaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "LoadImageRunnable must be executed on the main thread"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac(Lcom/google/android/gms/common/images/zaa;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    iget-object v0, v0, Lcom/google/android/gms/common/images/zaa;->zamv:Lcom/google/android/gms/common/images/zab;

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zab;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v3

    .line 24
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    return-void

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v1, :cond_5

    .line 30
    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v3, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab(Lcom/google/android/gms/common/images/zaa;)V

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    instance-of v2, v2, Lcom/google/android/gms/common/images/zad;

    if-nez v2, :cond_6

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamr:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zac;->zamt:Lcom/google/android/gms/common/images/zaa;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zacc()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 36
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zacd()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zacd()Ljava/util/HashSet;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zace()V

    .line 40
    :cond_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
