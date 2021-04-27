.class final Lcom/google/android/gms/tasks/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCanceledListener;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/zzq<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/tasks/SuccessContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/zzu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzo;->zzd:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzo;->zzr:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/tasks/zzo;->zzf:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zzo;)Lcom/google/android/gms/tasks/SuccessContinuation;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzr:Lcom/google/android/gms/tasks/SuccessContinuation;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzf:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    return-void
.end method

.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzp;-><init>(Lcom/google/android/gms/tasks/zzo;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzf:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzf:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    return-void
.end method
