.class final Lcom/google/android/gms/tasks/Tasks$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zza:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:Ljava/lang/Exception;

.field private final zzag:I

.field private zzah:I

.field private zzai:I

.field private zzaj:I

.field private zzak:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzag:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method

.method private final zzf()V
    .locals 6

    .line 20
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzag:I

    if-ne v0, v2, :cond_2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    new-instance v3, Ljava/util/concurrent/ExecutionException;

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " underlying tasks failed"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    invoke-direct {v3, v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzak:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzak:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
