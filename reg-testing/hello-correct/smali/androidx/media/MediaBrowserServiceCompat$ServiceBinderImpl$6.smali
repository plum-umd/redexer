.class Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pid:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "asBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "asBinder"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v8, v7, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v9, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    iget v10, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    iget v11, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    iget-object v12, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Landroid/os/Bundle;

    iget-object v13, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v7, v7, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v7, v7, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/IBinder;"

    const-string v1, "linkToDeath"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/IBinder;"

    const-string v1, "linkToDeath"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    const-string v5, "MBServiceCompat"

    const-string v6, "IBinder is already dead."

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "w"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "w"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
