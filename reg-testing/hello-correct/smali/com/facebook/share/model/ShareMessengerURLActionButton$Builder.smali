.class public final Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
.super Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
.source "ShareMessengerURLActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerURLActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<",
        "Lcom/facebook/share/model/ShareMessengerURLActionButton;",
        "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fallbackUrl:Landroid/net/Uri;

.field private isMessengerExtensionURL:Z

.field private shouldHideWebviewShareButton:Z

.field private url:Landroid/net/Uri;

.field private webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Landroid/net/Uri;
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->url:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Z
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->isMessengerExtensionURL:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Landroid/net/Uri;
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->fallbackUrl:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Z
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->shouldHideWebviewShareButton:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "access$400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerURLActionButton;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/facebook/share/model/ShareMessengerURLActionButton;-><init>(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;Lcom/facebook/share/model/ShareMessengerURLActionButton$1;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->build()Lcom/facebook/share/model/ShareMessengerURLActionButton;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "build"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getIsMessengerExtensionURL()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setIsMessengerExtensionURL(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setFallbackUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getWebviewHeightRatio()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setWebviewHeightRatio(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getShouldHideWebviewShareButton()Z

    move-result p1

    invoke-virtual {v5, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setShouldHideWebviewShareButton(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "readFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public setFallbackUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setFallbackUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->fallbackUrl:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setFallbackUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setIsMessengerExtensionURL(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setIsMessengerExtensionURL"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->isMessengerExtensionURL:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setIsMessengerExtensionURL"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setShouldHideWebviewShareButton(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setShouldHideWebviewShareButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->shouldHideWebviewShareButton:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setShouldHideWebviewShareButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->url:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setUrl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setWebviewHeightRatio(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setWebviewHeightRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;"

    const-string v1, "setWebviewHeightRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
