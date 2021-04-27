.class Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoryShareValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/ShareStoryContent;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
