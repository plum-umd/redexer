.class final Lcom/google/android/gms/common/api/internal/zacn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zakv:Lcom/google/android/gms/common/api/Result;

.field private final synthetic zakw:Lcom/google/android/gms/common/api/internal/zacm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zadn:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zacm;->zac(Lcom/google/android/gms/common/api/internal/zacm;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacm;->zad(Lcom/google/android/gms/common/api/internal/zacm;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacm;->zad(Lcom/google/android/gms/common/api/internal/zacm;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/common/api/internal/zaco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/zaco;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zadn:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zacm;->zaa(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/common/api/Result;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacm;->zae(Lcom/google/android/gms/common/api/internal/zacm;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zab(Lcom/google/android/gms/common/api/internal/zacm;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacm;->zad(Lcom/google/android/gms/common/api/internal/zacm;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zacm;->zad(Lcom/google/android/gms/common/api/internal/zacm;)Lcom/google/android/gms/common/api/internal/zaco;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/common/api/internal/zaco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 17
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/zaco;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zadn:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zacm;->zaa(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/common/api/Result;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacm;->zae(Lcom/google/android/gms/common/api/internal/zacm;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zab(Lcom/google/android/gms/common/api/internal/zacm;)V

    :cond_1
    return-void

    .line 24
    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zadn:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakv:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zacm;->zaa(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/common/api/Result;)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacm;->zae(Lcom/google/android/gms/common/api/internal/zacm;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_2

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacn;->zakw:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zab(Lcom/google/android/gms/common/api/internal/zacm;)V

    .line 29
    :cond_2
    throw v0
.end method
