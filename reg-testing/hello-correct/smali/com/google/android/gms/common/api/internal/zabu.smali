.class public Lcom/google/android/gms/common/api/internal/zabu;
.super Lcom/google/android/gms/common/api/internal/zal;


# instance fields
.field private zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 10
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zac(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zabu;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zabu;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    .line 2
    const-class v0, Lcom/google/android/gms/common/api/internal/zabu;

    const-string v1, "GmsAvailabilityHelper"

    .line 3
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabu;

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    return-object v0
.end method


# virtual methods
.method public final getTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zal;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected final zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 14
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zao()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabu;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabu;->zajp:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/api/internal/zal;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_1
    return-void
.end method
