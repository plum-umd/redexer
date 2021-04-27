.class public abstract Lcom/google/android/gms/tasks/CancellationToken;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isCancellationRequested()Z
.end method

.method public abstract onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
.end method
