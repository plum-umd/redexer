.class final Lcom/google/android/gms/dynamite/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
