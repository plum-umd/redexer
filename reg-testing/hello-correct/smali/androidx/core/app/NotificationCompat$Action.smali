.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Landroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Action$Extender;,
        Landroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_SEMANTIC_ACTION:Ljava/lang/String; = "android.support.action.semanticAction"

.field static final EXTRA_SHOWS_USER_INTERFACE:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10

    .line 3157
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZ)V
    .locals 1

    .line 3163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3138
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 3164
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 3165
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 3166
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 3167
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 3168
    iput-object p5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 3169
    iput-object p6, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 3170
    iput-boolean p7, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 3171
    iput p8, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 3172
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return-void
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getActionIntent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getActionIntent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getAllowGeneratedReplies()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getAllowGeneratedReplies"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getAllowGeneratedReplies"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getDataOnlyRemoteInputs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getDataOnlyRemoteInputs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getExtras"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getExtras"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getIcon()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getIcon"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getIcon"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getRemoteInputs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getRemoteInputs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getSemanticAction()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getSemanticAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getSemanticAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getShowsUserInterface()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getShowsUserInterface"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getShowsUserInterface"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/app/NotificationCompat$Action;"

    const-string v1, "getTitle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
