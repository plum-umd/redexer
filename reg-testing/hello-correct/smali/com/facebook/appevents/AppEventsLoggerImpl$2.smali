.class final Lcom/facebook/appevents/AppEventsLoggerImpl$2;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"

# interfaces
.implements Lcom/facebook/internal/InstallReferrerUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLoggerImpl;->getInstallReferrer()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveReferrerUrl(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/appevents/AppEventsLoggerImpl$2;"

    const-string v1, "onReceiveReferrerUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->setInstallReferrer(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEventsLoggerImpl$2;"

    const-string v1, "onReceiveReferrerUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
