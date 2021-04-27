.class public Lcom/facebook/login/LoginClient$Request;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private authType:Ljava/lang/String;

.field private final defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private deviceAuthTargetUserId:Ljava/lang/String;

.field private deviceRedirectUriString:Ljava/lang/String;

.field private isRerequest:Z

.field private final loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/login/LoginClient$Request$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$Request$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 530
    invoke-static {v1}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 533
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    invoke-static {v1}, Lcom/facebook/login/DefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->deviceRedirectUriString:Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authType:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->deviceAuthTargetUserId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/login/LoginBehavior;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 454
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 456
    iput-object p3, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 457
    iput-object p4, p0, Lcom/facebook/login/LoginClient$Request;->authType:Ljava/lang/String;

    .line 458
    iput-object p5, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 459
    iput-object p6, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getApplicationId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getApplicationId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getAuthId()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getAuthId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getAuthId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getAuthType()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getAuthType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->authType:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getAuthType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDefaultAudience"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDefaultAudience"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getDeviceAuthTargetUserId()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDeviceAuthTargetUserId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->deviceAuthTargetUserId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDeviceAuthTargetUserId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getDeviceRedirectUriString()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDeviceRedirectUriString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->deviceRedirectUriString:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getDeviceRedirectUriString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getLoginBehavior"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getLoginBehavior"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getPermissions()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getPermissions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "getPermissions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method hasPublishPermission()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "hasPublishPermission"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

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

    if-eqz v6, :cond_1

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

    invoke-static {v6}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "hasPublishPermission"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "hasPublishPermission"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method isRerequest()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "isRerequest"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "isRerequest"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method setAuthType(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setAuthType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->authType:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setAuthType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setDeviceAuthTargetUserId(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setDeviceAuthTargetUserId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->deviceAuthTargetUserId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setDeviceAuthTargetUserId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setDeviceRedirectUriString(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setDeviceRedirectUriString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->deviceRedirectUriString:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setDeviceRedirectUriString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setPermissions(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setPermissions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "permissions"

    invoke-static {p1, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setPermissions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setRerequest(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setRerequest"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "setRerequest"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    move-object p2, v5

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    invoke-direct {p2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeStringList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeStringList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    if-eqz p2, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/facebook/login/DefaultAudience;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    int-to-byte p2, p2

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeByte"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeByte"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->deviceRedirectUriString:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->authType:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/login/LoginClient$Request;->deviceAuthTargetUserId:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/LoginClient$Request;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
