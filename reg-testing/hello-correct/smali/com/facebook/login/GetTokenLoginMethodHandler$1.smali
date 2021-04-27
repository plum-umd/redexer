.class Lcom/facebook/login/GetTokenLoginMethodHandler$1;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/GetTokenLoginMethodHandler$1;"

    const-string v1, "completed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v6, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;->val$request:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v5, v6, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->getTokenCompleted(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/GetTokenLoginMethodHandler$1;"

    const-string v1, "completed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
