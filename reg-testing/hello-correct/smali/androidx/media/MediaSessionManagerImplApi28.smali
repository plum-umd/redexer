.class Landroidx/media/MediaSessionManagerImplApi28;
.super Landroidx/media/MediaSessionManagerImplApi21;
.source "MediaSessionManagerImplApi28.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
    }
.end annotation


# instance fields
.field mObject:Landroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroidx/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    const-string v0, "media_session"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplApi28;->mObject:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/media/MediaSessionManagerImplApi28;"

    const-string v1, "isTrustedForMediaControl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/media/MediaSessionManagerImplApi28;->mObject:Landroid/media/session/MediaSessionManager;

    check-cast p1, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    iget-object p1, p1, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/media/session/MediaSessionManager;"

    const-string v1, "isTrustedForMediaControl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/media/session/MediaSessionManager;"

    const-string v1, "isTrustedForMediaControl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplApi28;"

    const-string v1, "isTrustedForMediaControl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplApi28;"

    const-string v1, "isTrustedForMediaControl"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
