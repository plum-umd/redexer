.class Landroidx/browser/customtabs/CustomTabsService$1$1;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsService$1;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsService$1;

.field final synthetic val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1$1;->this$1:Landroidx/browser/customtabs/CustomTabsService$1;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/browser/customtabs/CustomTabsService$1$1;"

    const-string v1, "binderDied"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/browser/customtabs/CustomTabsService$1$1;->this$1:Landroidx/browser/customtabs/CustomTabsService$1;

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v6, p0, Landroidx/browser/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-virtual {v5, v6}, Landroidx/browser/customtabs/CustomTabsService;->cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/browser/customtabs/CustomTabsService$1$1;"

    const-string v1, "binderDied"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
