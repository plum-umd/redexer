.class Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;

.field final synthetic val$appCall:Lcom/facebook/internal/AppCall;

.field final synthetic val$content:Lcom/facebook/share/model/ShareContent;

.field final synthetic val$shouldFailOnDataError:Z


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->this$1:Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;

    iput-object p2, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$appCall:Lcom/facebook/internal/AppCall;

    iput-object p3, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$content:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$shouldFailOnDataError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;"

    const-string v1, "getLegacyParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$appCall:Lcom/facebook/internal/AppCall;

    invoke-virtual {v5}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$content:Lcom/facebook/share/model/ShareContent;

    iget-boolean v7, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$shouldFailOnDataError:Z

    invoke-static {v5, v6, v7}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;"

    const-string v1, "getLegacyParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;"

    const-string v1, "getParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$appCall:Lcom/facebook/internal/AppCall;

    invoke-virtual {v5}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$content:Lcom/facebook/share/model/ShareContent;

    iget-boolean v7, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;->val$shouldFailOnDataError:Z

    invoke-static {v5, v6, v7}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$1;"

    const-string v1, "getParameters"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
