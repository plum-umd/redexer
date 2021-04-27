.class final Lcom/google/android/gms/tasks/zza;
.super Lcom/google/android/gms/tasks/CancellationToken;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isCancellationRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    return v0
.end method

.method public final onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    new-instance v1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzb;-><init>(Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method
