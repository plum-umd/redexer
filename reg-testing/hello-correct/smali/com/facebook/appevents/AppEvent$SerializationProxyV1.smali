.class Lcom/facebook/appevents/AppEvent$SerializationProxyV1;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final inBackground:Z

.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    .line 251
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    .line 252
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->inBackground:Z

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/AppEvent$SerializationProxyV1;"

    const-string v1, "readResolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v11, Lcom/facebook/appevents/AppEvent;

    iget-object v6, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->isImplicit:Z

    iget-boolean v8, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;->inBackground:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEvent$SerializationProxyV1;"

    const-string v1, "readResolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11
.end method
