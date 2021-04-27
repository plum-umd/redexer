.class Landroidx/browser/customtabs/CustomTabsClient$2$5;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$relation:I

.field final synthetic val$requestedOrigin:Landroid/net/Uri;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 246
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    iput-boolean p4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    iput-object p5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/browser/customtabs/CustomTabsClient$2$5;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v6, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$relation:I

    iget-object v7, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    iget-boolean v8, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$result:Z

    iget-object v9, p0, Landroidx/browser/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/browser/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/browser/customtabs/CustomTabsClient$2$5;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
