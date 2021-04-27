.class Lcom/facebook/GraphRequest$6;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field final synthetic val$keysAndValues:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/GraphRequest$6;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$6;->val$keysAndValues:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/GraphRequest$6;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/GraphRequest$6;->val$keysAndValues:Ljava/util/ArrayList;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const-string p1, "UTF-8"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/net/URLEncoder;"

    const-string v1, "encode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/net/URLEncoder;"

    const-string v1, "encode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const-string p1, "%s=%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/GraphRequest$6;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
