.class final Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->queryHistoryAndProcess(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$queriedEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;->val$queriedEvent:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;->val$buttonText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;->val$queriedEvent:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;->val$buttonText:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [F

    invoke-static {v5, v6, v7}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->access$000(Ljava/lang/String;Ljava/lang/String;[F)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
