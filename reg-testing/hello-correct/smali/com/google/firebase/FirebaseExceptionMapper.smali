.class public Lcom/google/firebase/FirebaseExceptionMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/firebase/FirebaseException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
