.class Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebShareValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/facebook/FacebookException;

    const-string v5, "Cannot share ShareMediaContent via web sharing dialogs"

    invoke-direct {p1, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$500(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/facebook/FacebookException;

    const-string v5, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {p1, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
