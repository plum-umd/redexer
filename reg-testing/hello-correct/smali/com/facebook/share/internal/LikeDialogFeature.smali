.class public final enum Lcom/facebook/share/internal/LikeDialogFeature;
.super Ljava/lang/Enum;
.source "LikeDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/LikeDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

.field public static final enum LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/facebook/share/internal/LikeDialogFeature;

    const/4 v1, 0x0

    const-string v2, "LIKE_DIALOG"

    const v3, 0x133529d

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/share/internal/LikeDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/share/internal/LikeDialogFeature;

    .line 35
    sget-object v2, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->$VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/facebook/share/internal/LikeDialogFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/LikeDialogFeature;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v5, Lcom/facebook/share/internal/LikeDialogFeature;

    invoke-static {v5, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/internal/LikeDialogFeature;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "valueOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/internal/LikeDialogFeature;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/facebook/share/internal/LikeDialogFeature;->$VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, [Lcom/facebook/share/internal/LikeDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "[Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, [Lcom/facebook/share/internal/LikeDialogFeature;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "values"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "com.facebook.platform.action.request.LIKE_DIALOG"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getMinVersion()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "getMinVersion"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/facebook/share/internal/LikeDialogFeature;->minVersion:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/internal/LikeDialogFeature;"

    const-string v1, "getMinVersion"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
