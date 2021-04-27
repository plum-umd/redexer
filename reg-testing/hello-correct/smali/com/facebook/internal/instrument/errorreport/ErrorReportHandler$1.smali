.class final Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;
.super Ljava/lang/Object;
.source "ErrorReportHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->sendErrorReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/internal/instrument/errorreport/ErrorReportData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->compareTo(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
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

    const-string v0, "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    check-cast p2, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;->compare(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
