.class final Lcom/facebook/places/internal/LocationPackageManager$2;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newLocationScanFuture(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/places/internal/LocationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locationScanner:Lcom/facebook/places/internal/LocationScanner;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationPackageManager$2;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v5}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v6}, Lcom/facebook/places/internal/LocationScanner;->getLocation()Landroid/location/Location;

    move-result-object v6
    :try_end_1
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    iput-object v6, v5, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;
    :try_end_2
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v6, v5, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    goto :goto_0

    :catch_1
    move-exception v6

    iget-object v7, v6, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v7, v5, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    const-string v7, "Exception while getting location"

    invoke-static {v7, v6}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationPackageManager$2;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationPackageManager$2;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$2;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationPackageManager$2;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
