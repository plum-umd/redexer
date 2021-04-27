.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"

.field private static LOG_LEVEL_OFF:I

.field public static final zzfg:Landroid/content/ComponentName;

.field private static zzfh:I

.field private static zzfi:I

.field private static zzfj:I

.field private static zzfk:I

.field private static zzfl:I

.field private static zzfm:I

.field private static zzfn:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfg:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    .line 4
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfh:I

    const/4 v1, 0x2

    .line 5
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfi:I

    const/4 v1, 0x4

    .line 6
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfj:I

    const/16 v1, 0x8

    .line 7
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfk:I

    const/16 v1, 0x10

    .line 8
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfl:I

    const/16 v1, 0x20

    .line 9
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfm:I

    .line 10
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfn:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
