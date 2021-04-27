.class public final Lcom/google/android/gms/common/api/internal/zabh;
.super Ljava/lang/Object;


# static fields
.field private static final zahw:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zam;->zacv()Lcom/google/android/gms/internal/base/zal;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    const-string v2, "GAC_Executor"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/16 v3, 0x9

    .line 3
    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/base/zal;->zaa(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabh;->zahw:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zabb()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zabh;->zahw:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
