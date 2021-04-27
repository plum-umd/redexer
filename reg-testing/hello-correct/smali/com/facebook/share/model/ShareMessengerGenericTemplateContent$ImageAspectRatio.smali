.class public final enum Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
.super Ljava/lang/Enum;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL"

    invoke-direct {v0, v2, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 52
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v2, 0x1

    const-string v3, "SQUARE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 44
    sget-object v3, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
