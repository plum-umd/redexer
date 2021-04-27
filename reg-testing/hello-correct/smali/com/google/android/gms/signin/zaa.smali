.class public final Lcom/google/android/gms/signin/zaa;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final zaph:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zar:Lcom/google/android/gms/common/api/Scope;

.field private static final zars:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final zart:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/signin/internal/SignInClientImpl;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaru:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zas:Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zars:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/signin/zab;

    invoke-direct {v0}, Lcom/google/android/gms/signin/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zaph:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    new-instance v0, Lcom/google/android/gms/signin/zac;

    invoke-direct {v0}, Lcom/google/android/gms/signin/zac;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zart:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zar:Lcom/google/android/gms/common/api/Scope;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zas:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/signin/zaa;->zaph:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/signin/zaa;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->API:Lcom/google/android/gms/common/api/Api;

    .line 8
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/signin/zaa;->zart:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/signin/zaa;->zars:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "SignIn.INTERNAL_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/signin/zaa;->zaru:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
