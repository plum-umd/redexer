.class Lcom/google/android/gms/common/api/internal/zaa$zaa;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zaa"
.end annotation


# instance fields
.field private zacm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacm:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "LifecycleObserverOnStop"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method private static zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v0

    const-string v1, "LifecycleObserverOnStop"

    .line 3
    const-class v2, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaa$zaa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 6
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaa$zaa;Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zaa(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zaa(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zab(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa$zaa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacm:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zaa$zaa;->zacm:Ljava/util/List;

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 19
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
