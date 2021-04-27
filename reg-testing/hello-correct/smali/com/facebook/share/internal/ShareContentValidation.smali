.class public Lcom/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1500"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1500"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1600"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1600"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1700"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1700"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1800"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1800"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1900"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$1900"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$2000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$2000"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$400"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$500"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$500"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$600"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$600"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$700"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$700"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$800"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$800"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$900"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "access$900"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getApiValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v5, :cond_0

    new-instance v5, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v5, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    :cond_0
    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getApiValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getDefaultValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v5, :cond_0

    new-instance v5, Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v5, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    :cond_0
    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getDefaultValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static getStoryValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getStoryValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v5, :cond_0

    new-instance v5, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v5, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    :cond_0
    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getStoryValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getWebShareValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v5, :cond_0

    new-instance v5, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v5, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    :cond_0
    sget-object v5, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "getWebShareValidator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_a

    instance-of v5, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v5, :cond_0

    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareLinkContent;)V

    goto/16 :goto_0

    :cond_0
    instance-of v5, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v5, :cond_1

    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhotoContent;)V

    goto/16 :goto_0

    :cond_1
    instance-of v5, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v5, :cond_2

    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideoContent;)V

    goto/16 :goto_0

    :cond_2
    instance-of v5, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v5, :cond_3

    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto/16 :goto_0

    :cond_3
    instance-of v5, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v5, :cond_4

    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMediaContent;)V

    goto/16 :goto_0

    :cond_4
    instance-of v5, p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v5, :cond_5

    check-cast p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareCameraEffectContent;)V

    goto/16 :goto_0

    :cond_5
    instance-of v5, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v5, :cond_6

    check-cast p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    goto/16 :goto_0

    :cond_6
    instance-of v5, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v5, :cond_7

    check-cast p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    goto/16 :goto_0

    :cond_7
    instance-of v5, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v5, :cond_8

    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    goto/16 :goto_0

    :cond_8
    instance-of v5, p0, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v5, :cond_9

    check-cast p0, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareStoryContent;)V

    :cond_9
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_a
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must provide non-null content to share"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateCameraEffectContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateCameraEffectContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must specify a non-empty effectId"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateCameraEffectContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForApiShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForApiShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static validateForMessage(Lcom/facebook/share/model/ShareContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForMessage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForMessage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForNativeShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForNativeShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static validateForStoryShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForStoryShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getStoryValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForStoryShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static validateForWebShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForWebShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateForWebShare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateLinkContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Image Url must be an http:// or https:// url"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateLinkContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateLinkContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMediaContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x6

    if-gt v5, v6, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p1, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMediaContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "Cannot add more than %d media."

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMediaContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMediaContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :goto_2
    goto/16 :goto_1
.end method

.method public static validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMedium"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v5, :cond_0

    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto/16 :goto_0

    :cond_0
    instance-of v5, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v5, :cond_1

    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMedium"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getSimpleName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getSimpleName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object p0, v6, v7

    const-string p0, "Invalid media type: %s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMedium"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMessengerOpenGraphMusicTemplate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMessengerOpenGraphMusicTemplate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify url for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMessengerOpenGraphMusicTemplate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateMessengerOpenGraphMusicTemplate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphValueContainer;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphValueContainer;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property \""

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "\" was not found on the action. The name of the preview property must match the name of an action property."

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must specify a previewPropertyName."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, ":"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "split"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "split"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v5, p1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v5, v6, :cond_3

    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v9, p1, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const-string p0, "Invalid key found in Open Graph dictionary: %s"

    invoke-direct {p1, p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const-string p0, "Open Graph keys must be namespaced: %s"

    invoke-direct {p1, p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_2
    goto/16 :goto_1
.end method

.method private static validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p1, p0, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphValueContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Set;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Set;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    invoke-virtual {p0, v6}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_1

    invoke-static {v7, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto/16 :goto_1

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphValueContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-static {v6, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphValueContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphValueContainerObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v5, :cond_0

    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    goto :goto_0

    :cond_0
    instance-of v5, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v5, :cond_1

    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateOpenGraphValueContainerObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validatePhoto(Lcom/facebook/share/model/SharePhoto;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhoto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-nez v5, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhoto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhoto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Cannot share a null SharePhoto"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhoto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x6

    if-gt v5, v6, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "Cannot add more than %d photos."

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :goto_2
    goto/16 :goto_1
.end method

.method private static validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForApi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-nez v5, :cond_1

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForApi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForApi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForNativeDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForNativeDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForWebDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validatePhotoForWebDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v5, :cond_1

    check-cast p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify title for ShareMessengerActionButton"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerGenericTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerGenericTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify title for ShareMessengerGenericTemplateElement"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerGenericTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify element for ShareMessengerGenericTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerGenericTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify Page Id for ShareMessengerGenericTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerGenericTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerMediaTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareContent;"

    const-string v1, "getPageId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerMediaTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerMediaTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify Page Id for ShareMessengerMediaTemplateContent"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerMediaTemplateContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerURLActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerURLActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v5, "Must specify url for ShareMessengerURLActionButton"

    invoke-direct {p0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateShareMessengerURLActionButton"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateStoryContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateStoryContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Must pass the Facebook app a background asset, a sticker asset, or both"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateStoryContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "ShareVideo must reference a video that is on the device"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot share a null ShareVideo"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation;"

    const-string v1, "validateVideoContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
