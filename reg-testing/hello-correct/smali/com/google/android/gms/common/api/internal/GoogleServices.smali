.class public final Lcom/google/android/gms/common/api/internal/GoogleServices;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;


# instance fields
.field private final zzaz:Ljava/lang/String;

.field private final zzba:Lcom/google/android/gms/common/api/Status;

.field private final zzbb:Z

.field private final zzbc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_measurement_enable"

    const-string v3, "integer"

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    xor-int/lit8 v0, v3, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbc:Z

    goto :goto_1

    .line 11
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbc:Z

    .line 12
    :goto_1
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbb:Z

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzp;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string p1, "google_app_id"

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    return-void

    .line 21
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    .line 22
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    .line 27
    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbb:Z

    xor-int/lit8 p1, p2, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbc:Z

    return-void
.end method

.method private static checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;
    .locals 4

    .line 56
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-eqz v1, :cond_0

    .line 59
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    monitor-exit v0

    return-object p0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Initialize must be called before "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static clearInstanceForTest()V
    .locals 2

    .line 53
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 54
    :try_start_0
    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getGoogleAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "getGoogleAppId"

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    const-string v0, "Context must not be null."

    .line 41
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/google/android/gms/common/api/internal/GoogleServices;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    .line 45
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const-string v0, "Context must not be null."

    .line 30
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "App ID must be nonempty."

    .line 31
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 33
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-eqz v0, :cond_0

    .line 34
    sget-object p2, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 35
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/GoogleServices;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Ljava/lang/String;Z)V

    .line 36
    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzay:Lcom/google/android/gms/common/api/internal/GoogleServices;

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static isMeasurementEnabled()Z
    .locals 2

    const-string v0, "isMeasurementEnabled"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    .line 50
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzba:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMeasurementExplicitlyDisabled()Z
    .locals 1

    const-string v0, "isMeasurementExplicitlyDisabled"

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    .line 52
    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzbc:Z

    return v0
.end method


# virtual methods
.method final checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzaz:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 40
    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    return-object p1
.end method
