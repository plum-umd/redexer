.class Landroidx/core/content/res/ResourcesCompat$FontCallback$2;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V
    .locals 0

    iput-object p1, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iput p2, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/content/res/ResourcesCompat$FontCallback$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget v6, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->val$reason:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onFontRetrievalFailed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onFontRetrievalFailed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/content/res/ResourcesCompat$FontCallback$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
