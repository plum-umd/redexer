.class final Lcom/google/android/gms/tasks/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final synthetic zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zzv:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/zzu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    return-void
.end method
