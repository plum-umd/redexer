.class Lcom/facebook/places/internal/BleScannerImpl$2;
.super Ljava/lang/Object;
.source "BleScannerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/BleScannerImpl;->getScanResults()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/places/internal/BluetoothScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$2;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/places/internal/BluetoothScanResult;Lcom/facebook/places/internal/BluetoothScanResult;)I
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/places/internal/BleScannerImpl$2;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p2, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    iget p1, p1, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    sub-int/2addr p2, p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/BleScannerImpl$2;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/places/internal/BleScannerImpl$2;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/facebook/places/internal/BluetoothScanResult;

    check-cast p2, Lcom/facebook/places/internal/BluetoothScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/places/internal/BleScannerImpl$2;->compare(Lcom/facebook/places/internal/BluetoothScanResult;Lcom/facebook/places/internal/BluetoothScanResult;)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/BleScannerImpl$2;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
