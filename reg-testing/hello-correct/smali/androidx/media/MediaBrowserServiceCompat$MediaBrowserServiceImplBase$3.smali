.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$parentId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->size()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "valueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "valueAt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v7, v6, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v7, v8}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$parentId:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$options:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChangedOnHandler(Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
