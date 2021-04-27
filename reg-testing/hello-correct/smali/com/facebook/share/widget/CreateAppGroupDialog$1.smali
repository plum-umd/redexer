.class Lcom/facebook/share/widget/CreateAppGroupDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "CreateAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/CreateAppGroupDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Lcom/facebook/share/widget/CreateAppGroupDialog$1;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v5, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;

    const-string v6, "id"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Bundle;"

    const-string v1, "getString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-direct {v5, p2, v6}, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/widget/CreateAppGroupDialog$1;"

    const-string v1, "onSuccess"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
