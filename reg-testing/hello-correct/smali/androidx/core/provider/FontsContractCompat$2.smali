.class final Landroidx/core/provider/FontsContractCompat$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 0

    .line 275
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/provider/FontsContractCompat$2;"

    const-string v1, "onReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v6}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget v5, p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object p1, p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v5, p1, v6}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroidx/core/provider/FontsContractCompat$2;->val$fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget p1, p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v5, p1, v6}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$2;"

    const-string v1, "onReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/provider/FontsContractCompat$2;"

    const-string v1, "onReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontsContractCompat$2;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/FontsContractCompat$2;"

    const-string v1, "onReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
